package com.oems.entity;

import java.util.Date;

public class Apply {
    private String applyId;

    private String applyUserid;

    private String applyName;

    private String applyExaminfoid;

    private String applyStatus;

    private Double applyScore;

    private Date applyTime;

    private String applyMark;
    
    private User user;
    private Examinfo examinfo;

    public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Examinfo getExaminfo() {
		return examinfo;
	}

	public void setExaminfo(Examinfo examinfo) {
		this.examinfo = examinfo;
	}

	public String getApplyId() {
        return applyId;
    }

    public void setApplyId(String applyId) {
        this.applyId = applyId == null ? null : applyId.trim();
    }

    public String getApplyUserid() {
        return applyUserid;
    }

    public void setApplyUserid(String applyUserid) {
        this.applyUserid = applyUserid == null ? null : applyUserid.trim();
    }

    public String getApplyName() {
        return applyName;
    }

    public void setApplyName(String applyName) {
        this.applyName = applyName == null ? null : applyName.trim();
    }

    public String getApplyExaminfoid() {
        return applyExaminfoid;
    }

    public void setApplyExaminfoid(String applyExaminfoid) {
        this.applyExaminfoid = applyExaminfoid == null ? null : applyExaminfoid.trim();
    }

    public String getApplyStatus() {
        return applyStatus;
    }

    public void setApplyStatus(String applyStatus) {
        this.applyStatus = applyStatus == null ? null : applyStatus.trim();
    }

    public Double getApplyScore() {
        return applyScore;
    }

    public void setApplyScore(Double applyScore) {
        this.applyScore = applyScore;
    }

    public Date getApplyTime() {
        return applyTime;
    }

    public void setApplyTime(Date applyTime) {
        this.applyTime = applyTime;
    }

    public String getApplyMark() {
        return applyMark;
    }

    public void setApplyMark(String applyMark) {
        this.applyMark = applyMark == null ? null : applyMark.trim();
    }

	public Apply(String applyId, String applyUserid, String applyName, String applyExaminfoid, String applyStatus,
			Double applyScore, Date applyTime, String applyMark, User user, Examinfo examinfo) {
		super();
		this.applyId = applyId;
		this.applyUserid = applyUserid;
		this.applyName = applyName;
		this.applyExaminfoid = applyExaminfoid;
		this.applyStatus = applyStatus;
		this.applyScore = applyScore;
		this.applyTime = applyTime;
		this.applyMark = applyMark;
		this.user = user;
		this.examinfo = examinfo;
	}

	public Apply() {
		super();
		// TODO Auto-generated constructor stub
	}
    
}