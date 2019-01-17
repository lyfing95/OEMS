<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>阅卷</title>
<script src="static/js/jquery-3.2.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="static/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="static/css/bootstrapValidator.css" />
<link rel="stylesheet" type="text/css"
	href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="static/css/bootstrapValidator.css">
<script type="text/javascript" src="static/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<!-- 卷 -->
<link rel="stylesheet" type="text/css"
	href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="static/css/bootstrapValidator.css">
<link rel="stylesheet" type="text/css"
	href="static/css/registration.css">
<script type="text/javascript" src="static/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container1">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<ul class="breadcrumb">
					<li><a href="allExam.do">考试试卷</a></li>
					<li><a href="allExam.do">试卷编号：${answer.exeamId}</a></li>
					<li><a href="checkAnswer.do?exeamId=${answer.exeamId}&userId=${answer.userId}">考生编号：${answer.userId}<%-- ${answer.user.userName} --%></a></li>
					<li class="active">正在阅卷</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container" style="margin-top: 80px;">
		<div class="row clearfix">
		<form action="upAnswer.do" method="post">
			<div class="col-md-12 column"
				style="background-color: ffffef; border: 1px solid #cccccc;">
				
				<ol>
				一：选择题。<br>
				
				<c:forEach items="${answerList}" var="answer" varStatus="status">
				<c:if test="${answer.exam.examType eq '选择题' }"> 
					<li>
						<div class="exam-title-info">
						<%-- ${status.index+1} --%>	${answer.exam.examName.split("\\*\\*")[0]} &nbsp;<a style="color: red;">${answer.exam.examScore}</a>
						</div>
						<div class="exam-content-selectinfo">
							A．${answer.exam.examName.split("\\*\\*")[1]}<br> B．${answer.exam.examName.split("\\*\\*")[2]}<br> C．${answer.exam.examName.split("\\*\\*")[3]}人<br>
							D．${answer.exam.examName.split("\\*\\*")[4]}<br>
						</div>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;考生选择：${answer.answerContext}
						<div class="exam-content-answer">正确答案:${answer.answerContext}</div> 
						<c:if test="${answer.answerScore ne '0'}">
						<a href="#"><span class="glyphicon glyphicon-ok"></span></a>
						</c:if>&nbsp;&nbsp;&nbsp;
						<c:if test="${answer.answerScore eq '0'}">
						<a href="#"><span class="glyphicon glyphicon-remove"></span></a>
						</c:if>
					</li>
					</c:if> 
				</c:forEach>
				 
				二：简答题。<br>
				
				<c:forEach items="${answerList}" var="answer" varStatus="status">
				<input type="hidden" name="answerId" value="${answer.answerId}"> 
				<input type="hidden" name="examId" value="${answer.exam.examId}">
				<input type="hidden" name="applyUserid" value="${answer.userId}"> 
				<input type="hidden" name="examTestid" value="${answer.exam.examTestid}"> 	
					<c:if test="${answer.exam.examType eq '简答题' }"> 
					<li>
						<div class="exam-title-info">
							${answer.exam.examName} &nbsp;<a style="color: red;">${answer.exam.examScore}分</a>
						</div>
						<div class="exam-content-textinfo">
							${answer.answerContext}
						</div>
						<div class="exam-content-answer">
							参考答案:${answer.exam.examMark}<br>
						</div>
						  <!-- <label for="name">标签</label> --> <div style="width: 55px;"><input type="text" name="${answer.exam.examId}" class="form-control" placeholder="得分" ></div>
					</li>
					</c:if> 
				
				</c:forEach>
				 
				</ol>
				<div class="alert alert-warning">
					<a href="#" class="close" data-dismiss="alert"> &times; </a>
					请严格遵守阅卷规则，理性分析。考生：${answer.user.userName}得分：<strong>65</strong>分 
				</div>
				<!-- <div class="page-button-lastsubmit" style="width:75px;margin:0 auto;margin-bottom:50px"><a href="#"><button>提交</button></a></div> -->
				<div style="width: 95px; margin: 0 auto; margin-bottom: 50px">
					<button type="submit" class="btn btn-warning">提交</button>
				</div>
			</div>
			</form>
		</div>
		
	</div>
</body>
</html>