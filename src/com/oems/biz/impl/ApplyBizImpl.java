package com.oems.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oems.biz.ApplyBiz;
import com.oems.entity.Apply;
import com.oems.mapper.ApplyMapper;

@Service
public class ApplyBizImpl implements ApplyBiz{
@Autowired
private ApplyMapper applyMapper;

    //报名信息
	@Override
	public List<Apply> allUserApply() {
		// TODO Auto-generated method stub
		List<Apply> allUserApply = applyMapper.selectUserApply();
		return allUserApply;
	}
	//报名信息
	@Override
	public Apply UserApplyInfo(String applyId) {
		// TODO Auto-generated method stub
		
		return  applyMapper.selectUserApplyInfo(applyId);
	}
	//审核通过
	@Override
	public int applyPass(String applyId) {
		// TODO Auto-generated method stub
		Apply apply = applyMapper.selectByPrimaryKey(applyId);
		apply.setApplyStatus("审核已通过");
		return applyMapper.updateByPrimaryKeySelective(apply);
	}
	//审核未通过
	@Override
	public int applyNoPass(String applyId) {
		// TODO Auto-generated method stub
		Apply apply = applyMapper.selectByPrimaryKey(applyId);
		apply.setApplyStatus("审核未通过");
		return applyMapper.updateByPrimaryKeySelective(apply);
	}
	//被阅卷者
	@Override
	public List<Apply> examUser(String examinfoId) {
		// TODO Auto-generated method stub
		return applyMapper.selectExamUser(examinfoId);
	}
	@Override
	public int updateApplyScore(Apply record) {
		// TODO Auto-generated method stub
		return applyMapper.updateByPrimaryKeySelective(record);
	}
	@Override
	public int updateScore(Apply apply) {
		// TODO Auto-generated method stub
		return applyMapper.updateScore(apply);
	}

}
