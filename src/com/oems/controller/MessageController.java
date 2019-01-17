package com.oems.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.oems.biz.MessageBiz;
import com.oems.entity.Message;
import com.oems.util.DateUtil;

@Controller
public class MessageController {
	@Autowired
	private MessageBiz messageBiz;
	
	/*  
	 * //
		@RequestMapping(value = " ")
		public ModelAndView  (ModelAndView mav,Message message){
			
			mav.setViewName(" ");
			return mav;
		}
	*/
	
	
	
	
	
	//更新资讯
	@RequestMapping(value = "updateMessage")
	public ModelAndView updateMessage(ModelAndView mav,Message message){
		message.setMessageTime(new Date());
		message.setMessageId(message.getMessageId());
		if(messageBiz.updateMessage(message)!= -1){
			mav.setViewName("updateNewsInfo");
		}
		return mav;
	}
    //发布资讯
	@RequestMapping(value = "releaseMessage")
	public ModelAndView releaseMessage(ModelAndView mav, Message message){
		message.setMessageTime(new Date());
		message.setMessageId(DateUtil.getId());
		if(messageBiz.releaseMessage(message) != -1){
			mav = new ModelAndView(new RedirectView("allMessage.do")); 
		}
		return mav;
	}
	// 资讯列表
	@RequestMapping(value = "allMessage")
	public ModelAndView allNews(ModelAndView mav) {
		mav.addObject("messageList", messageBiz.allMessage());
		mav.setViewName("newsManage");
		return mav;
	}

	// 资讯详情 
	@RequestMapping(value = "messageInfo")
	public ModelAndView messageInfo(ModelAndView mav, Message message, String messageFlag) {
		Message messageInfo = messageBiz.messageInfo(message.getMessageId());
		String newMessage = messageInfo.getMessageContext().replaceAll("\r\n", "<br/>");
		messageInfo.setMessageContext(newMessage);
		mav.addObject("message", messageInfo);
		if (messageFlag.equals("message")) {
		 mav.setViewName("newsInfo");
		}
		if (messageFlag.equals("examMessage")) {
		 mav.setViewName("examNewsInfo");
		}
		if(messageFlag.equals("updateMessage")){
		 mav.setViewName("updateNewsInfo");
		}
		return mav;
	}

	// 考试公告列表
	@RequestMapping(value = "allExamMessage")
	public ModelAndView allExamMessage(ModelAndView mav) {
        mav.addObject("examMessageList", messageBiz.allExamMessage());
		mav.setViewName("examNewsManage");
		return mav;
	}
}
