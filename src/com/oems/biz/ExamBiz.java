package com.oems.biz;

import java.util.List;

import com.oems.entity.Exam;

public interface ExamBiz {
	List<Exam> selectExamid(String examTestid);
/*List<Exam> allExam();*/
	//根据试题id查取到全部试题
    List<Exam> selectByPrimaryKey(String examId);
}
