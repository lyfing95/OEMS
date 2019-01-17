package com.oems.biz;

import java.util.List;

import com.oems.entity.Message;

public interface MessageBiz {
	int updateMessage(Message messageId);//更新资讯
  int releaseMessage(Message message);//发布资讯
  Message messageInfo (String messageId);//资讯详情
  List<Message> allExamMessage();//考试公告列表
  List<Message> allMessage();//资讯列表
}
