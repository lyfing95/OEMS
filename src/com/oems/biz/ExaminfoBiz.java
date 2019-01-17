package com.oems.biz;

import java.util.List;

import com.oems.entity.Exam;
import com.oems.entity.Examinfo;
import com.oems.entity.Test;

public interface ExaminfoBiz {
	List<Examinfo> allExam();
	Examinfo examinfoByid(String examinfoId);//获取需要更新的考试信息
	int releaseExaminfo(Examinfo examinfo);//发布考试
	int updateExaminfo(Examinfo examinfoId);//更新考试发布信息
	List<Examinfo> allExaminfo();//所有已发布考试
	Examinfo selectByPrimaryKey(String examinfoId);
}
