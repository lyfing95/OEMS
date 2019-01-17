package com.oems.mapper;

import java.util.List;

import com.oems.entity.Answer;

public interface AnswerMapper {
	List<Answer> selectAllanswer(String exeamId);
	List<Answer> selectAllTotal(String userid,String exeamId);
	List<Answer> selectAllHadAnswer(String examTestid);
	List<Answer> selectAllAnswer(String userId,String testId);
    int deleteByPrimaryKey(String answerId);

    int insert(Answer record);

    int insertSelective(Answer record);

    Answer selectByPrimaryKey(String answerId);

    int updateByPrimaryKeySelective(Answer record);

    int updateByPrimaryKey(Answer record);
}