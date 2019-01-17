package com.oems.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oems.biz.MessageBiz;
import com.oems.entity.Message;
import com.oems.mapper.MessageMapper;
@Service(value="MessageBiz")
public class MessageBizImpl implements MessageBiz{
	 @Autowired
	 private MessageMapper messageMapper;
	 
    //资讯
	@Override
	public List<Message> allMessage() {
		// TODO Auto-generated method stub
		List<Message> messageList = messageMapper.selectAllMessage();
		return messageList;
	}
    //资讯详情	
	@Override
	public Message messageInfo(String messageId) {
		// TODO Auto-generated method stub
		Message messageInfo = messageMapper.selectMessageInfo(messageId);
		return messageInfo;
	}
	//考试公告列表
	@Override
	public List<Message> allExamMessage() {
		// TODO Auto-generated method stub
		List<Message> examMessageList = messageMapper.selectAllExamMessage();
		return examMessageList;
	}
	//发布资讯
	@Override
	public int releaseMessage(Message message) {
		// TODO Auto-generated method stub
		int i = messageMapper.insertSelective(message);
		return i;
	}
	//更新资讯
	@Override
	public int updateMessage(Message messageId) {
		// TODO Auto-generated method stub
		int i =messageMapper.updateByPrimaryKeySelective(messageId);
		return i;
	}
   
}
