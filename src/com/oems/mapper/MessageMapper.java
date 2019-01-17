package com.oems.mapper;

import java.util.List;

import com.oems.entity.Message;

public interface MessageMapper {
	
	Message selectMessageInfo (String messageId);//资讯详情
	List<Message> selectAllExamMessage();//考试公告列表
	List<Message> selectAllMessage();//资讯列表
    int deleteByPrimaryKey(String messageId);

    int insert(Message record);

    int insertSelective(Message record);

    Message selectByPrimaryKey(String messageId);

    int updateByPrimaryKeySelective(Message record);

    int updateByPrimaryKey(Message record);
}