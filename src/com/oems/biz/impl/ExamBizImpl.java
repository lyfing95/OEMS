package com.oems.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oems.biz.ExamBiz;
import com.oems.entity.Exam;
import com.oems.mapper.ExamMapper;

@Service
public class ExamBizImpl implements ExamBiz{
@Autowired
private ExamMapper examMapper;
	/*@Override
	public List<Exam> allExam() {
		// TODO Auto-generated method stub
		return examMapper.selectAllExamPaper();
	}
*/

@Override
public List<Exam> selectByPrimaryKey(String examId) {
	// TODO Auto-generated method stub
	return examMapper.selectByPrimaryKey(examId);
}

@Override
public List<Exam> selectExamid(String examTestid) {
	// TODO Auto-generated method stub
	return examMapper.selectExamid(examTestid);
}


}
