package com.oems.biz;

import java.util.List;

import com.oems.entity.Test;

public interface TestBiz {
	Test testInfo(String testId);// 具体试卷信息 
	int updateTest(Test test);//更新试卷
	List<Test> allTest(); //所有试卷
	List<Test> allTestForExam();//考试试卷
}
