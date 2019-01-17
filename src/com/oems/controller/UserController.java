package com.oems.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.oems.biz.UserBiz;
import com.oems.entity.User;

@Controller
public class UserController {
@Autowired
private UserBiz userBiz;
	

@RequestMapping(value="delUser")
public ModelAndView delUser(ModelAndView mav,String userId){
	mav.addObject("userList", userBiz.delUser(userId));
	mav=new ModelAndView(new RedirectView("allUser.do"));
	return mav;
}
@RequestMapping(value="allUser")
	public ModelAndView allUser(ModelAndView mav){
		mav.addObject("userList", userBiz.allUser());
		mav.setViewName("userManage");
		return mav;
	}




}
