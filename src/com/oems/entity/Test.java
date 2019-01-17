package com.oems.entity;

import java.util.Date;

public class Test {
    private String testId;

    private String testName;

    private String testClass;

    private Double testScore;

    private Date testTime;

    private String testType;

    private String testMark;

    public String getTestId() {
        return testId;
    }

    public void setTestId(String testId) {
        this.testId = testId == null ? null : testId.trim();
    }

    public String getTestName() {
        return testName;
    }

    public void setTestName(String testName) {
        this.testName = testName == null ? null : testName.trim();
    }

    public String getTestClass() {
        return testClass;
    }

    public void setTestClass(String testClass) {
        this.testClass = testClass == null ? null : testClass.trim();
    }

    public Double getTestScore() {
        return testScore;
    }

    public void setTestScore(Double testScore) {
        this.testScore = testScore;
    }

    public Date getTestTime() {
        return testTime;
    }

    public void setTestTime(Date testTime) {
        this.testTime = testTime;
    }

    public String getTestType() {
        return testType;
    }

    public void setTestType(String testType) {
        this.testType = testType == null ? null : testType.trim();
    }

    public String getTestMark() {
        return testMark;
    }

    public void setTestMark(String testMark) {
        this.testMark = testMark == null ? null : testMark.trim();
    }
}