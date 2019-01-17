<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>资讯详情</title>
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

<script type="text/javascript">
	$().ready(function() {
		var str1 = document.getElementById('br');
		var str2 = str1.replace(/\n/g, '<br/>');
		str1 = str2;
	})
</script>
</head>
<body>
	<!-- 考试更新 -->

	<div class="container1">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<ul class="breadcrumb">
					<li><a href="allMessage.do">资讯列表</a></li>
					<li class="active">资讯详情</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="jumbotron">
				<h2>${message.messageTitle}</h2>
				<p id="br">${message.messageContext}</p>
				<p>
				<a class="btn btn-primary btn-large" href="messageInfo.do?messageId=${message.messageId}&messageFlag=updateMessage">更新资讯</a>
					</p>
				</div>
			</div>
		</div>
	</div>

</body>


</html>