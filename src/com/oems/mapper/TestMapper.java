package com.oems.mapper;

import java.util.List;

import com.oems.entity.Test;

public interface TestMapper {
	List<Test> selectAllTest(); //所有试卷
	List<Test> selectAllTestForExam();//考试试卷
    int deleteByPrimaryKey(String testId);

    int insert(Test record);

    int insertSelective(Test record);

    Test selectByPrimaryKey(String testId);

    int updateByPrimaryKeySelective(Test record);

    int updateByPrimaryKey(Test record);
}