package com.oems.entity;

public class Answer {
    private String answerId;

    private String userId;

    private String testId;

    private String exeamId;

    private String answerContext;

    private String answerScore;

    private String answerMark;
    
    private User user;
    private Exam exam;
    private Examinfo examinfo;
    private Apply apply;

    public Examinfo getExaminfo() {
		return examinfo;
	}

	public void setExaminfo(Examinfo examinfo) {
		this.examinfo = examinfo;
	}

	public Apply getApply() {
		return apply;
	}

	public void setApply(Apply apply) {
		this.apply = apply;
	}

	public Exam getExam() {
		return exam;
	}

	public void setExam(Exam exam) {
		this.exam = exam;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getAnswerId() {
        return answerId;
    }

    public void setAnswerId(String answerId) {
        this.answerId = answerId == null ? null : answerId.trim();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getTestId() {
        return testId;
    }

    public void setTestId(String testId) {
        this.testId = testId == null ? null : testId.trim();
    }

    public String getExeamId() {
        return exeamId;
    }

    public void setExeamId(String exeamId) {
        this.exeamId = exeamId == null ? null : exeamId.trim();
    }

    public String getAnswerContext() {
        return answerContext;
    }

    public void setAnswerContext(String answerContext) {
        this.answerContext = answerContext == null ? null : answerContext.trim();
    }

    public String getAnswerScore() {
        return answerScore;
    }

    public void setAnswerScore(String answerScore) {
        this.answerScore = answerScore == null ? null : answerScore.trim();
    }

    public String getAnswerMark() {
        return answerMark;
    }

    public void setAnswerMark(String answerMark) {
        this.answerMark = answerMark == null ? null : answerMark.trim();
    }

	public Answer(String answerId, String userId, String testId, String exeamId, String answerContext,
			String answerScore, String answerMark, User user, Exam exam, Examinfo examinfo, Apply apply) {
		super();
		this.answerId = answerId;
		this.userId = userId;
		this.testId = testId;
		this.exeamId = exeamId;
		this.answerContext = answerContext;
		this.answerScore = answerScore;
		this.answerMark = answerMark;
		this.user = user;
		this.exam = exam;
		this.examinfo = examinfo;
		this.apply = apply;
	}

	public Answer() {
		super();
		// TODO Auto-generated constructor stub
	}

	
    
}