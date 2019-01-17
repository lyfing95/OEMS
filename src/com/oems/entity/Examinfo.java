package com.oems.entity;

import java.util.Date;

public class Examinfo {
    private String examinfoId;

    private String examinfoName;

    private Date examinfoTime;

    private Date examinfoStarttime;

    private Date examinfoEndtime;

    private String examinfoPeople;

    private String examinfoContext;

    private String examinfoMark;
    private Test test;

    public Test getTest() {
		return test;
	}

	public void setTest(Test test) {
		this.test = test;
	}

	public String getExaminfoId() {
        return examinfoId;
    }

    public void setExaminfoId(String examinfoId) {
        this.examinfoId = examinfoId == null ? null : examinfoId.trim();
    }

    public String getExaminfoName() {
        return examinfoName;
    }

    public void setExaminfoName(String examinfoName) {
        this.examinfoName = examinfoName == null ? null : examinfoName.trim();
    }

    public Date getExaminfoTime() {
        return examinfoTime;
    }

    public void setExaminfoTime(Date examinfoTime) {
        this.examinfoTime = examinfoTime;
    }

    public Date getExaminfoStarttime() {
        return examinfoStarttime;
    }

    public void setExaminfoStarttime(Date examinfoStarttime) {
        this.examinfoStarttime = examinfoStarttime;
    }

    public Date getExaminfoEndtime() {
        return examinfoEndtime;
    }

    public void setExaminfoEndtime(Date examinfoEndtime) {
        this.examinfoEndtime = examinfoEndtime;
    }

    public String getExaminfoPeople() {
        return examinfoPeople;
    }

    public void setExaminfoPeople(String examinfoPeople) {
        this.examinfoPeople = examinfoPeople == null ? null : examinfoPeople.trim();
    }

    public String getExaminfoContext() {
        return examinfoContext;
    }

    public void setExaminfoContext(String examinfoContext) {
        this.examinfoContext = examinfoContext == null ? null : examinfoContext.trim();
    }

    public String getExaminfoMark() {
        return examinfoMark;
    }

    public void setExaminfoMark(String examinfoMark) {
        this.examinfoMark = examinfoMark == null ? null : examinfoMark.trim();
    }
}