<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>考试试卷考生详情</title>
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
<div class="container1">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<ul class="breadcrumb">
				<li>
					 <a href="allExam.do">考试试卷</a>
				</li>
				<li>
					 <a href="checkExam.do?examinfoId=${apply.applyMark}">考生：${apply.applyName}</a>
				</li>
				<li class="active">
					考生详情
				</li>
			</ul>
		</div>
	</div>
</div>
	<div class="container" style="margin-top:50px;">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<table class="table">
					<thead>
					
						<tr class="warning">
							<th></th>
							<th>序号</th>
							<th>姓名</th>
							<!-- <th>性别</th>
							<th>邮箱</th> -->
							<th>试卷状态</th> 
							<!-- <th>总分</th> -->
							<th>得分</th> 
							<th>操作</th>
						</tr>
					
					</thead>
					<tbody>
					<c:forEach items="${applyUser}" var="apply" varStatus="status">
						<tr>
							<td><span class="glyphicon glyphicon-user"></span></td>
							<td>${status.index+1}</td>
							<td>${apply.applyName}</td>
							<td>${apply.applyStatus}</td>
							<td>${apply.applyScore}分</td>
							<!-- <td>未阅/已阅</td> -->
							<%-- <td>${answer.user.userScore}</td> --%>
							<!-- <td>0/60</td> -->
							<td><a href="checkAnswer.do?testId=${examinfoMark}&userId=${apply.applyUserid}"><button type="button"
										class="btn btn-primary">阅卷</button></a></td>
						</tr>
					</c:forEach>
						
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>