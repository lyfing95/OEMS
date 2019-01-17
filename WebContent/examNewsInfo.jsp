<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>考试更新 </title>
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
</head>
<body>
			<!-- 考试更新 -->
	
<div class="container1">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<ul class="breadcrumb">
				<li>
					 <a href="allMessage.do">公告列表</a>
				</li>
				<li class="active">
					公告详情
				</li>
			</ul>
		</div>
	</div>
</div>
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="jumbotron">
				<h2>
					${message.messageTitle}
				</h2>
				<p>
					${message.messageContext}
				</p>
				<p>
					 <a class="btn btn-primary btn-large" href="updateExamInfo.jsp">前往考试设置</a>
				</p>
			</div>
		</div>
	</div>
</div>
					
</body>
</html>