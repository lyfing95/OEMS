<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="static/css/registration.css">
<title>具体内容</title>
<script>
	
</script>
</head>
<body>
<%@ include file="head.jsp" %>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<ul class="breadcrumb">
					<li><a href="index.do">首页</a></li>
					<li><a href="ExaminfoAllinfo.do">考试报名</a></li>
					<li class="active">${examinfoOne.examinfoName}</li>
				</ul>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="registration-background">

					<div class="registration-head">${examinfoOne.examinfoName}</div>

				</div>
			</div>
		</div>
		<br> <br>
		<div class="row clearfix">
			<div class="col-md-3 column">
				<div class="content-border">
					<div class="center-title">
						<a href="#" class="btn btn-info btn-lg"> <span
							class="glyphicon glyphicon-edit"></span> 考试介绍
						</a>
					</div>
					<hr>
					<div class="Examination-introduction">
						${examinfoOne.examinfoContext}</div>

				</div>
			</div>
			<div class="col-md-3 column">
				<div class="content-border">
					<div class="center-title">
						<a href="#" class="btn btn-info btn-lg"> <span
							class="glyphicon glyphicon-check"></span> 日程安排
						</a>
					</div>
					<hr>
					<div class="Examination-introduction">
						<div class="time-title">考试时间:</div>
						<div class="time-content">
							<fmt:formatDate type="both" value="${examinfoOne.examinfoTime}" />
						</div>
						<div class="time-title">报名开始时间:</div>
						<div class="time-content">
							<fmt:formatDate type="both"
								value="${examinfoOne.examinfoStarttime}" />
						</div>
						<div class="time-title">报名结束时间:</div>
						<div class="time-content">
							<fmt:formatDate type="both"
								value="${examinfoOne.examinfoEndtime}" />
						</div>
					</div>


				</div>
			</div>

			<div class="col-md-3 column">
				<div class="content-border">
					<div class="center-title">
						<a href="#" class="btn btn-info btn-lg"> <span
							class="glyphicon glyphicon-retweet"></span> 报名流程
						</a>
					</div>
					<hr>
					<div class="Examination-introduction">
						1.考生注册须填写真实姓名，上传身份证正反面照片。<br>
						2.已注册的考生填写密码进行登陆，未注册的用户需要进行账户的创建。<br>
						3.参加报名,审核通过即可参加考试。
						</div>
				</div>
			</div>
			<div class="col-md-3 column" style="border: 1px solid red:">
				<div class="content-border">
					<div class="center-title">
						<a href="#" class="btn btn-info btn-lg"> <span
							class="glyphicon glyphicon-user"></span> 考生服务
						</a>
					</div>
					<hr>

					<div class="student-register">
					<c:if test="${loginUser != null }">
						<c:if test="${registration_info eq '开始报名'}">
							<a href="ExaminfoCheck.do?examinfoId=${examinfoOne.examinfoId }" target="_blank">${registration_info}</a>
						</c:if>
						<c:if test="${registration_info ne '开始报名'}">${registration_info}</c:if>
					</c:if>
					<c:if test="${loginUser == null }">
					请登录后再报名
					</c:if>
					</div>
					
				</div>
			</div>
		</div>
		<%-- </c:if> --%>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>