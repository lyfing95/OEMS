<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css"
	href="static/css/registration.css">
<title>考试报名-oems</title>
</head>
<body>
<%@ include file="head.jsp" %>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<ul class="breadcrumb">
					<li><span class="glyphicon glyphicon-home"></span>&nbsp;<a
						href="index.do">首页</a></li>

					<li class="active"><a>考试报名</a></li>


				</ul>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-12 column">
				<hr>
				<div class="registration-content">
					<c:forEach items="${examinfoList}" var="examinfo">
						<div class="registration-content-one">
							<a href="ExaminfoOne.do?examinfoId=${examinfo.examinfoId}">
							<span class="glyphicon glyphicon-chevron-right"></span>${examinfo.examinfoName}</a>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<!-- <div class="row clearfix">
			<div class="col-md-12 column">
				<hr>
				<div class="registration-content">
					<div class="registration-content-one">
						<a href=""><span class="glyphicon glyphicon-chevron-right"></span>中小学教师资格考试(NTCE)</a>

					</div>
					<div class="registration-content-one">
						<a href="">&nbsp;中小学教师资格考试(NTCE)</a>

					</div>
					<div class="registration-content-one">
						<a href="">中小学教师资格考试(NTCE)</a>

					</div>
					<div class="registration-content-one">
						<a href="">中小学教师资格考试(NTCE)</a>

					</div>
					<div class="registration-content-one">
						<a href="">中小学教师资格考试(NTCE)</a>

					</div>
				</div>
			</div>
		</div> -->
	</div>
<%@ include file="footer.jsp" %>
</body>
</html>