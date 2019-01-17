<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>模拟试卷考生详情</title>
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
					 <a href="checkPaperManage.jsp">模拟试卷</a>
				</li>
				<li>
					 <a href="checkPaperManage.jsp">java基础卷</a>
				</li>
				<li class="active">
					考生详情
				</li>
			</ul>
		</div>
	</div>
</div>
	<div class="container" style="margin-top:80px;">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<table class="table">
					<thead>
						<tr class="warning">
							<th></th>
							<th>序号</th>
							<th>姓名</th>
							<th>性别</th>
							<th>联系方式</th>
							<th>邮箱</th>
							<th>模拟时间</th>
							<th>总分</th>
							<th>得分</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><span class="glyphicon glyphicon-user"></span></td>
							<td>1</td>
							<td>王</td>
							<td>男</td>
							<td>13720151</td>
							<td>785@qq.com</td>
							<td>18/12/1</td>
							<td>100</td>
							<td>60</td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-user"></span></td>
							<td>2</td>
							<td>王</td>
							<td>男</td>
							<td>13720151</td>
							<td>785@qq.com</td>
							<td>18/12/1</td>
							<td>100</td>
							<td>60</td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-user"></span></td>
							<td>3</td>
							<td>王</td>
							<td>男</td>
							<td>13720151</td>
							<td>785@qq.com</td>
							<td>18/12/1</td>
							<td>100</td>
							<td>60</td>
						</tr>

					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>