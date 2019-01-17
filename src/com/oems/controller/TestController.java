package com.oems.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.oems.biz.TestBiz;
import com.oems.entity.Test;

@Controller
public class TestController {
 @Autowired
 private TestBiz testBiz;
 
 
//具体试卷信息
@RequestMapping(value="testInfo")
public ModelAndView testInfo(ModelAndView mav,String testId){
	 mav.addObject("test", testBiz.testInfo(testId));
	 mav.setViewName("updatePaper");
	 return mav;
}
 //更新试卷
 @RequestMapping(value="updateTest")
 public ModelAndView updateTest(ModelAndView mav,Test test){
	 if(testBiz.updateTest(test)!= -1){
		mav=new ModelAndView(new RedirectView("allTest.do"));
	}
	 return mav;
 }
//所有试卷
 @RequestMapping(value="allTest")
 public ModelAndView allTest(ModelAndView mav){
	 mav.addObject("testList", testBiz.allTest());
	 mav.setViewName("uploadPaperManage");
	 return mav;
 }
 
 
}
