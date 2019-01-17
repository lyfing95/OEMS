package com.oems.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.oems.biz.ApplyBiz;
import com.oems.biz.ExaminfoBiz;

@Controller
public class ApplyController {
@Autowired
private ApplyBiz applyBiz;
@Autowired
private ExaminfoBiz examinfoBiz; 

@RequestMapping(value="checkExam")
public ModelAndView checkExam(ModelAndView mav,String examinfoId){
	mav.addObject("applyUser", applyBiz.examUser(examinfoId));
	mav.addObject("examinfoMark", examinfoBiz.selectByPrimaryKey(examinfoId).getExaminfoMark());
	mav.setViewName("checkExamPaperUser");
	return mav;
}	
//审核未通过
@RequestMapping(value="applyNoPass")
public ModelAndView applyNoPass(ModelAndView mav,String applyId){
	applyBiz.applyNoPass(applyId);
	mav = (new ModelAndView(new RedirectView("allUserApply.do")));
	return mav;
}
//审核通过
@RequestMapping(value="applyPass")
public ModelAndView applyPass(ModelAndView mav,String applyId){
	applyBiz.applyPass(applyId);
	mav = (new ModelAndView(new RedirectView("allUserApply.do")));
	return mav;
}
//报名详细信息
@RequestMapping(value="userApplyInfo")
public ModelAndView userApplyInfo(ModelAndView mav,String applyId){
	mav.addObject("applyInfo", applyBiz.UserApplyInfo(applyId));
	mav.setViewName("examUserInfo");
	return mav;
}


//报名信息
@RequestMapping(value="allUserApply")
public ModelAndView allUserApply(ModelAndView mav){
	mav.addObject("applyList", applyBiz.allUserApply());
	mav.setViewName("userExamManage");
	return mav;
}


}
