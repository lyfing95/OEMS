package com.oems.biz;

import java.util.List;

import com.oems.entity.Answer;
import com.oems.entity.Apply;

public interface AnswerBiz {
	List<Answer> selectAllanswer(String exeamId);
	List<Answer> selectAllTotal(String userid,String exeamId);
	List<Answer> allHadAnswer(String examTestid);
	Answer hadAnswer(String answerId);
	int thisAnswerScore(Answer answer);
	List<Answer> allAnswer(String userId,String testId);
}
