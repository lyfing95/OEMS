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
					 <a href="allTest.do">所有试卷</a>
				</li>
				<li class="active">
					更新试卷信息
				</li>
			</ul>
		</div>
	</div>
</div>
	<div class="container" style="width:800px;margin:80px auto">
	<div class="row clearfix">
		<div class="col-md-12 column">
		 <form role="form" action="updateTest.do" method="post">
		          <input type="hidden" name="testId" value="${test.testId}"/>
				<div class="form-group">
					 <label for="exampleInputEmail1">试卷名称</label><input type="text" name="testName" class="form-control" id="exampleInputEmail1" value="${test.testName}"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">试卷种类</label><input type="text" name="testClass" class="form-control" id="exampleInputPassword1" value="${test.testClass}"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">试卷分值</label><input type="text" name="testScore" class="form-control" id="exampleInputPassword1" value="${test.testScore}"/>
				</div>
				<%-- <div class="form-group">
					 <label for="exampleInputPassword1">考试时长(分钟)</label><input type="text" name="testTime" class="form-control" id="exampleInputPassword1" value="${test.testTime}"/>
				</div> --%>
				<div class="form-group">
					 <label for="exampleInputPassword1">试卷归属</label><input type="text" name="testType" class="form-control" id="exampleInputPassword1" value="${test.testType}"/>
				</div>
				<!-- <div class="form-group">
					 <label for="exampleInputFile">File input</label><input type="file" id="exampleInputFile" />
					<p class="help-block">
						Example block-level help text here.
					</p>
				</div> -->
				<!-- <div class="checkbox"><label><input type="checkbox" />Check me out</label></div> -->
				<div style="width:50px;margin:20px auto"> <button type="submit" class="btn btn-success">更新</button></div>
			</form>
		</div>
	</div>
</div>
					
</body>
</html>