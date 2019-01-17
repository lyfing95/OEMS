<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户管理</title>
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
<!--user_id:用户ID
User_name:用户名
User_password:密码
User_phone:电话
User_sex:性别
User_email:邮箱
User_type:用户属性管理员权限 admin为管理员  -->
	<div class="container" style="margin-top:80px;">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<table class="table">
					<thead>
						<tr class="warning">
							<th></th>
							<th>序号</th>
							<th>用户ID</th>
							<th>用户名</th>
							<th>性别</th>
							<th>邮箱</th>
							<th>电话</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${userList }" var="user" varStatus="status">
						<tr>
							<td><span class="glyphicon glyphicon-user"></span></td>
							<th>${status.index+1 }</th>
							<td>${user.userId}</td>
							<td>${user.userName}</td>
							<td>${user.userSex}</td>
							<td>${user.userEmail}</td>
							<td>${user.userPhone}</td>
							<td><a href="delUser.do?userId=${user.userId }"><button type="button"
										class="btn btn-primary">删除</button></a></td> 
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>