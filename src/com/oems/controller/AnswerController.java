package com.oems.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.oems.biz.AnswerBiz;
import com.oems.biz.ApplyBiz;
import com.oems.biz.ExamBiz;
import com.oems.entity.Answer;
import com.oems.entity.Apply;
import com.oems.entity.Exam;
import com.sun.org.glassfish.external.probe.provider.annotations.ProbeParam;
import com.sun.org.glassfish.gmbal.ParameterNames;

@Controller
public class AnswerController {
@Autowired
private AnswerBiz answerBiz;
@Autowired
private ApplyBiz applyBiz;
@Autowired
private ExamBiz examBiz;

    @RequestMapping(value="checkAnswer")
	public ModelAndView checkExam(ModelAndView mav,String userId,String testId){
	    mav.addObject("answerList", answerBiz.allAnswer(userId,testId));
	    mav.setViewName("checkInPaper");
		return mav;
	}	
	@RequestMapping(value="upAnswer")
	public ModelAndView upAnswer(@RequestParam Map<String,String> map, ModelAndView mav,String examId,String applyUserid,String answerScore,String answerId,String examTestid){
		Answer answer = new Answer();
		String userid=applyUserid.split(",")[0];
		answer.setUserId(userid);
		String examTestid2=examTestid.split(",")[0];
		List<Exam> examList=examBiz.selectByPrimaryKey(examTestid2);
		System.out.println(examList);
		for (Exam exam : examList) {
			if(exam.getExamType().equals("简答题")){
				answer.setAnswerScore(map.get(exam.getExamId()));
				answer.setUserId(userid);
			    answer.setExeamId(exam.getExamId());
				answerBiz.thisAnswerScore(answer);	
			}
		}
		Apply apply = new Apply();
		double allScore = 0;
		System.out.println("examId:"+examId);
		System.out.println("userId:"+userid);
		List<Exam> examidList = examBiz.selectExamid(examTestid2);
		System.out.println("examidList:"+examidList.size());
		for(Exam examid: examidList){
		  System.out.println("examid.toString()"+examid.getExamId().toString());
		List<Answer> allAnswer = answerBiz.selectAllanswer(examid.getExamId().toString());
		System.out.println("allAnswer:"+allAnswer.size());
		  for(Answer allAnswerScore : allAnswer){
			  System.out.println(allAnswerScore.getAnswerScore());
			if(allAnswerScore.getUserId().equals(userid)){
			allScore += Double.parseDouble(allAnswerScore.getAnswerScore());
			System.out.println("allScore"+allScore);
		  }
		}
		}
		//更新总分
		apply.setApplyScore(allScore);
		apply.setApplyStatus("已阅卷");
		apply.setApplyUserid(userid);
		applyBiz.updateScore(apply);
		mav=new ModelAndView(new RedirectView("allExam.do"));
		return mav;
	}
}
