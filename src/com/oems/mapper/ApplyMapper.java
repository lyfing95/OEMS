package com.oems.mapper;

import java.util.List;

import com.oems.entity.Apply;

public interface ApplyMapper {
	int updateScore(Apply apply);
	
	List<Apply> selectExamUser(String examinfoId);
	Apply selectUserApplyInfo(String userId); //报名信息
	List<Apply> selectUserApply(); //报名信息
    int deleteByPrimaryKey(String applyId);

    int insert(Apply record);

    int insertSelective(Apply record);

    Apply selectByPrimaryKey(String applyId);

    int updateByPrimaryKeySelective(Apply record);

    int updateByPrimaryKey(Apply record);
}