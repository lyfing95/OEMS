package com.oems.mapper;

import java.util.List;

import com.oems.entity.Examinfo;

public interface ExaminfoMapper {
	List<Examinfo> selectAllExamPaper();//所有已发布考试
	List<Examinfo> selectAllExam();//所有已发布考试
    int deleteByPrimaryKey(String examinfoId);

    int insert(Examinfo record);

    int insertSelective(Examinfo record);

    Examinfo selectByPrimaryKey(String examinfoId);

    int updateByPrimaryKeySelective(Examinfo record);

    int updateByPrimaryKey(Examinfo record);
}