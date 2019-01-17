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
					 <a href="allExaminfo.do">考试列表</a>
				</li>
				<li class="active">
					更新考试信息
				</li>
			</ul>
		</div>
	</div>
</div>
	<div class="container" style="width:800px;margin:80px auto">
	<div class="row clearfix">
		<div class="col-md-12 column">
		 <a href="allExamMessage.do">前往发布考试公告</a><!-- #panel-172010 -->
			<form role="form" action="updateExaminfo.do">
			    <input type="hidden" name="examinfoId"  value="${examinfo.examinfoId}">
				<div class="form-group">
					 <label for="exampleInputEmail1">考试名称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="examinfoName" id="exampleInputEmail1" value="${examinfo.examinfoName}"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">报名人数:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="examinfoPeople" id="exampleInputPassword1" value="${examinfo.examinfoPeople}"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">考试时间:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="datetime-local" name="examinfoTime" id="exampleInputPassword1" value=""/>
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">报名开始时间:&nbsp;&nbsp;&nbsp;</label><input type="datetime-local" name="examinfoStarttime" id="exampleInputPassword1" value=""/>
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">报名结束时间:&nbsp;&nbsp;&nbsp;</label><input type="datetime-local" name="examinfoEndtime" id="exampleInputPassword1" value=""/>
				</div>
				<label for="exampleInputPassword1">选择试卷:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
				<div class="btn-group" style="margin-bottom:25px;margin-top:15px;">
				
					   <select class="btn btn-default">
						  <c:forEach items="${testList}" var="test">
				          <option value ="${test.testId}">${test.testName}</option>
				          </c:forEach>
				        </select>
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">考试要点</label>
					 <textarea class="form-control" rows="10" placeholder="输入考试要点">${examinfo.examinfoContext }</textarea>
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