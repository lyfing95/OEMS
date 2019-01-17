package com.oems.biz;

import java.util.List;

import com.oems.entity.Apply;

public interface ApplyBiz {
	int updateScore(Apply apply);
	int updateApplyScore(Apply record);
	List<Apply> examUser(String examinfoId);
	int applyNoPass(String applyId);//审核未通过
	int applyPass(String applyId);//审核通过
	Apply UserApplyInfo(String applyId); //报名详细信息
	List<Apply> allUserApply(); //报名信息
}
