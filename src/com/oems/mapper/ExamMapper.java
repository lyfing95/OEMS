package com.oems.mapper;

import java.util.List;

import com.oems.entity.Exam;

public interface ExamMapper {
	List<Exam> selectExamid(String examTestid);
	List<Exam> selectAllExamPaper();
    int deleteByPrimaryKey(String examId);

    int insert(Exam record);

    int insertSelective(Exam record);
    //根据试题id查取到全部试题
    List<Exam> selectByPrimaryKey(String examId);

    int updateByPrimaryKeySelective(Exam record);

    int updateByPrimaryKey(Exam record);
}