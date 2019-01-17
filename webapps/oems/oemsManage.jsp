<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>OEMS后台管理系统</title>
		<meta charset="utf-8"/>
		<style type="text/css">
		</style>

	<script src="static/js/jquery-3.2.1.min.js"></script> 
	<script src="static/js/bootstrap.min.js"></script> 
	<link rel="stylesheet" type="text/css" href="static/css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="static/css/bootstrapValidator.css"/>

	</head>
	<!-- frameset组织页面结构 -->
	<frameset rows="13%, 87%" frameborder="0" framespacing="0">
		<frame src="_top.jsp" noresize="noresize"/>
		<frameset cols="14%, 86%" frameborder="0" framespacing="0">
			<frame src="_left.jsp" noresize="noresize"/>
			<frame src="_right.jsp" name="rightFrame"  noresize="noresize"/>
		</frameset>
	</frameset>
	<body>
	</body>
</html>
