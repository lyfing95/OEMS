package com.oems.entity;

public class Exam {
    private String examId;

    private String examName;

    private String examType;

    private String examAnswer;

    private Double examScore;

    private String examTestid;

    private String examMark;
    
    private Examinfo examinfo;
    
    private Test test;
    
    public Test getTest() {
		return test;
	}

	public void setTest(Test test) {
		this.test = test;
	}

	public Examinfo getExaminfo() {
		return examinfo;
	}

	public void setExaminfo(Examinfo examinfo) {
		this.examinfo = examinfo;
	}

	public String getExamId() {
        return examId;
    }

    public void setExamId(String examId) {
        this.examId = examId == null ? null : examId.trim();
    }

    public String getExamName() {
        return examName;
    }

    public void setExamName(String examName) {
        this.examName = examName == null ? null : examName.trim();
    }

    public String getExamType() {
        return examType;
    }

    public void setExamType(String examType) {
        this.examType = examType == null ? null : examType.trim();
    }

    public String getExamAnswer() {
        return examAnswer;
    }

    public void setExamAnswer(String examAnswer) {
        this.examAnswer = examAnswer == null ? null : examAnswer.trim();
    }

    public Double getExamScore() {
        return examScore;
    }

    public void setExamScore(Double examScore) {
        this.examScore = examScore;
    }

    public String getExamTestid() {
        return examTestid;
    }

    public void setExamTestid(String examTestid) {
        this.examTestid = examTestid == null ? null : examTestid.trim();
    }

    public String getExamMark() {
        return examMark;
    }

    public void setExamMark(String examMark) {
        this.examMark = examMark == null ? null : examMark.trim();
    }

	public Exam(String examId, String examName, String examType, String examAnswer, Double examScore, String examTestid,
			String examMark, Examinfo examinfo, Test test) {
		super();
		this.examId = examId;
		this.examName = examName;
		this.examType = examType;
		this.examAnswer = examAnswer;
		this.examScore = examScore;
		this.examTestid = examTestid;
		this.examMark = examMark;
		this.examinfo = examinfo;
		this.test = test;
	}

	public Exam() {
		super();
		// TODO Auto-generated constructor stub
	}
    
}