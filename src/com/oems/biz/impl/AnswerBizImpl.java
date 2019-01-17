package com.oems.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oems.biz.AnswerBiz;
import com.oems.entity.Answer;
import com.oems.entity.Apply;
import com.oems.mapper.AnswerMapper;
@Service
public class AnswerBizImpl implements AnswerBiz{
@Autowired
private AnswerMapper answerMapper;


	@Override
	public List<Answer> allAnswer(String userId,String testId){
		// TODO Auto-generated method stub
		return answerMapper.selectAllAnswer(userId,testId);
	}


	@Override
	public int thisAnswerScore(Answer answer) {
		// TODO Auto-generated method stub
		return answerMapper.updateByPrimaryKeySelective(answer);
	}


	@Override
	public Answer hadAnswer(String answerId) {
		// TODO Auto-generated method stub
		return answerMapper.selectByPrimaryKey(answerId);
	}


	@Override
	public List<Answer> allHadAnswer(String examTestid) {
		// TODO Auto-generated method stub
		return answerMapper.selectAllHadAnswer(examTestid);
	}


	@Override
	public List<Answer> selectAllTotal(String userid, String exeamId) {
		// TODO Auto-generated method stub
		return answerMapper.selectAllTotal(userid, exeamId);
	}


	@Override
	public List<Answer> selectAllanswer(String exeamId) {
		// TODO Auto-generated method stub
		return answerMapper.selectAllanswer(exeamId);
	}


	

}
