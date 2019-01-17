package com.oems.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.Locale;

import org.apache.jasper.tagplugins.jstl.core.Redirect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.oems.biz.ExaminfoBiz;
import com.oems.biz.TestBiz;
import com.oems.entity.Examinfo;
import com.oems.util.DateUtil;

@Controller
public class ExaminfoController {
	@Autowired
	private ExaminfoBiz examinfoBiz;
    @Autowired
    private TestBiz testBiz;
	/*
	  //
	  @RequestMapping(value = "") 
	  public ModelAndView (ModelAndView mav,Examinfo examinfo){
	  
	  mav.setViewName(" ");
	   return mav;
	  }
	 */
	
	
   @RequestMapping(value="allExam")
    public ModelAndView allExam(ModelAndView mav){
    	mav.addObject("examList", examinfoBiz.allExam());
    	System.out.println( examinfoBiz.allExam().size());
    	mav.setViewName("checkPaperManage");
    	return mav;
    }

    
    
	//发布考试
		@RequestMapping(value = "releaseExaminfo") 
		public ModelAndView releaseExaminfo(ModelAndView mav,String examinfoMark,String examinfoTime,String examinfoStarttime,String examinfoEndtime,String examinfoName,String examinfoPeople,String examinfoContext){
			    System.out.println(examinfoTime);
			    Examinfo examinfo = new Examinfo();
			    SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	            Date time = null;
	            Date startTime = null;
	            Date endTime = null;
				try {
					String str=":00";
				    time = sdf.parse(examinfoTime.replace("T"," ")+str);
					startTime = sdf.parse(examinfoStarttime.replace("T"," ")+str);
					endTime = sdf.parse(examinfoEndtime.replace("T"," ")+str);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	            examinfo.setExaminfoTime(time);
	            examinfo.setExaminfoStarttime(startTime);
	            examinfo.setExaminfoEndtime(endTime);
	            examinfo.setExaminfoId(DateUtil.getId());
	            examinfo.setExaminfoMark(examinfoMark);
	            examinfo.setExaminfoName(examinfoName);
	            examinfo.setExaminfoPeople(examinfoPeople);
	            examinfo.setExaminfoContext(examinfoContext);
	           if(examinfoBiz.releaseExaminfo(examinfo) != -1){
			       mav = (new ModelAndView(new RedirectView("allExaminfo.do")));
		       } 
		           return mav;
		       }
	//更新已发布的考试
	@RequestMapping(value = "updateExaminfo") 
	public ModelAndView updateExaminfo(ModelAndView mav,String examinfoId,String examinfoMark,String examinfoTime,String examinfoStarttime,String examinfoEndtime,String examinfoName,String examinfoPeople,String examinfoContext){
		Examinfo examinfo = new Examinfo();
        SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd HH:mm");
        try {
			String str=":00";
			if(examinfoTime != null && examinfoTime.trim()!= ""){
			   examinfo.setExaminfoTime(sdf.parse(examinfoTime.replace("T"," ")+str));
			}
			if(examinfoStarttime != null && examinfoStarttime.trim()!= ""){
				examinfo.setExaminfoStarttime(sdf.parse(examinfoStarttime.replace("T"," ")+str));
			}
		    if(examinfoEndtime != null && examinfoEndtime.trim()!= ""){
		    	examinfo.setExaminfoEndtime(sdf.parse(examinfoEndtime.replace("T"," ")+str));
		    }
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        examinfo.setExaminfoId(examinfoId);
	    examinfo.setExaminfoMark(examinfoMark);
        examinfo.setExaminfoName(examinfoName);
        examinfo.setExaminfoPeople(examinfoPeople);
        examinfo.setExaminfoContext(examinfoContext);
	  if(examinfoBiz.updateExaminfo(examinfo) != -1){
		  mav.setViewName("examReleaseManage");
	  }
	   return mav;
	  }
	//获取需要更新的考试信息
	  @RequestMapping(value = "examinfoByid") 
	  public ModelAndView examinfoByid(ModelAndView mav,Examinfo examinfo){
	  mav.addObject("examinfo",examinfoBiz.examinfoByid(examinfo.getExaminfoId()));
	  mav.addObject("testList", testBiz.allTestForExam());
	  mav.setViewName("updateExamInfo");
	   return mav;
	  }
	//已发布考试
  @RequestMapping(value = "allExaminfo")
  public ModelAndView  allExaminfo(ModelAndView mav){
	mav.addObject("examinfoList",examinfoBiz.allExaminfo());
	mav.addObject("testList", testBiz.allTestForExam());
	mav.setViewName("examReleaseManage");
	return mav;
}

}
