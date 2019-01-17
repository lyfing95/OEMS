package com.oems.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oems.biz.TestBiz;
import com.oems.entity.Test;
import com.oems.mapper.TestMapper;
@Service
public class TestBizImpl implements TestBiz{
	@Autowired
	private TestMapper testMapper;
	
	//考试试卷
		@Override
		public List<Test> allTestForExam() {
			// TODO Auto-generated method stub
			List<Test> testList = testMapper.selectAllTestForExam();
			return testList;
		}
		//所有试卷
		@Override
		public List<Test> allTest() {
			// TODO Auto-generated method stub
			return  testMapper.selectAllTest();
		}
		//更新试卷
		@Override
		public int updateTest(Test test) {
			// TODO Auto-generated method stub
			int i =testMapper.updateByPrimaryKeySelective(test);
			return i;
		}
		// 具体试卷信息 
		@Override
		public Test testInfo(String testId) {
			// TODO Auto-generated method stub
			return testMapper.selectByPrimaryKey(testId);
		}
}
