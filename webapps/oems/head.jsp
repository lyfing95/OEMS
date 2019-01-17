<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="static/css/bootstrapValidator.css">
<script type="text/javascript" src="static/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="static/js/head.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oems</title>
</head>
<body>
	<nav class="navbar navbar-default" role="navigation">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target="#bs-example-navbar-collapse-1">
			<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
				class="icon-bar"></span><span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="index.do">oems在线考试网</a>
	</div>

	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
			<li><a href="showallmessage.do">考试资讯</a></li>
			<li><a href="ExaminfoAllinfo.do">考试报名</a></li>
			<li><a href="https://www.ppkao.com/kaoshishijian/"
				target="_blank">考试时间查询</a></li>
			<li><a href="showalltest.do">题库中心</a></li>
		</ul>
		<form class="navbar-form navbar-left" role="search" action="selecttest.do" method="post">
			<div class="form-group">
				<input type="text" name="text" class="form-control" />
			</div>
			<button type="submit" class="btn btn-default">搜索</button>
		</form>
		<ul class="nav navbar-nav navbar-right">
			<c:if test="${loginUser==null }">
				<li><a id="modal-266531" href="#modal-container-266531"
					role="button" class="btn" data-toggle="modal">登录</a></li>
				<li><a id="modal-266532" href="#modal-container-266532"
					role="button" class="btn" data-toggle="modal">注册</a></li>
			</c:if>
			<c:if test="${loginUser!=null }">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">
					<c:if test="${loginUser.userName==null }">${loginUser.userEmail }</c:if>
					<c:if test="${loginUser.userName!=null }">${loginUser.userName }</c:if><strong
						class="caret"></strong></a>
					<ul class="dropdown-menu">
						<li><a href="showapply.do">我的考试</a></li>
						<li><a href="userinfo.do">个人中心</a></li>

						<li class="divider"></li>
						<li><a href="logout.do">退出登录</a></li>
					</ul></li>
			</c:if>
		</ul>
	</div>

	</nav>
	<div class="modal fade" id="modal-container-266531" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">登录</h4>
				</div>
				<div class="modal-body">
					<div class="container">


						<form class="form-horizontal" role="form">
							<div class="form-group" style="width: 500px">
								<label for="inputEmail" class="col-sm-2 control-label">邮箱</label>
								<div class="col-sm-10">
									<input type="email" class="form-control" id="inputEmail" />
								</div>
							</div>
							<div class="form-group" style="width: 500px">
								<label for="inputPassword" class="col-sm-2 control-label">密码</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="inputPassword" />
								</div>
							</div>
							<div class="form-group" style="width: 500px">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										<label id="loginlabel"></label>
									</div>
								</div>
							</div>
						</form>
						<div>
							<div class="col-sm-offset-2 col-sm-10">
								<button onclick="ajaxlogin()" class="btn btn-default">登录</button>
							</div>
						</div>
					</div>

				</div>
			</div>

		</div>

	</div>
	<div class="modal fade" id="modal-container-266532" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">注册</h4>
				</div>
				<div class="modal-body" style="height: 250px">

					<form class="form-horizontal" role="form">
						<div class="form-group" style="width: 550px">
							<label for="registEmail" class="col-sm-2 control-label">邮箱</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" id="registEmail" />
							</div>
						</div>
						<div class="form-group" style="width: 550px">
							<label for="registPassword" class="col-sm-2 control-label">密码</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="registPassword" />
							</div>
						</div>
						<div class="form-group" style="width: 550px">
							<label for="registPassword1" class="col-sm-2 control-label">确认密码</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="registPassword1" />
							</div>
						</div>
						<div class="form-group" style="width: 500px">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										<label id="registlabel"></label>
									</div>
								</div>
							</div>
					</form>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button onclick="ajaxregist()" class="btn btn-default">注册</button>
						</div>
					</div>
				</div>

			</div>

		</div>

	</div>
</body>
</html>