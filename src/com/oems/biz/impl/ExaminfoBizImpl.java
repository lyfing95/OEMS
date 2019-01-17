package com.oems.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oems.biz.ExaminfoBiz;
import com.oems.entity.Exam;
import com.oems.entity.Examinfo;
import com.oems.entity.Test;
import com.oems.mapper.ExaminfoMapper;
import com.oems.mapper.TestMapper;
@Service(value = "ExaminfoBiz")
public class ExaminfoBizImpl implements ExaminfoBiz{
@Autowired
  private ExaminfoMapper examinfoMapper;

	
@Override
public List<Examinfo> allExam() {
	// TODO Auto-generated method stub
	return examinfoMapper.selectAllExamPaper();
}

  
    //已发布考试
    @Override
	public List<Examinfo> allExaminfo() {
		// TODO Auto-generated method stub
    	List<Examinfo> allExaminfo = examinfoMapper.selectAllExam();
		return allExaminfo;
	}
  //更新考试发布信息
	@Override
	public int updateExaminfo(Examinfo examinfoId) {
		// TODO Auto-generated method stub
		int i =examinfoMapper.updateByPrimaryKeySelective(examinfoId);
		return i;
	}
	//发布考试
	@Override
	public int releaseExaminfo(Examinfo examinfo) {
		// TODO Auto-generated method stub
		int i =examinfoMapper.insertSelective(examinfo);
		return i;
	}
	//获取需要更新的考试信息
	@Override
	public Examinfo examinfoByid(String examinfoId) {
		// TODO Auto-generated method stub
		Examinfo examinfoByid = examinfoMapper.selectByPrimaryKey(examinfoId);
		return examinfoByid;
	}


	@Override
	public Examinfo selectByPrimaryKey(String examinfoId) {
		// TODO Auto-generated method stub
		return examinfoMapper.selectByPrimaryKey(examinfoId);
	}
	


}
