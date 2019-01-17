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
<!-- Message_id:资讯id
Message_title:资讯题目
Message_context:资讯内容
Message_time:发布时间
Message_type:咨询类型 -->
			<!-- 考试更新 -->
	
<div class="container1">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<ul class="breadcrumb">
				<li>
					 <a href="allMessage.do">资讯列表</a>
				</li>
				<li>
					 <a href="messageInfo.do?messageId=${message.messageId}&messageFlag=message">资讯详情</a>
				</li>
				<li class="active">
					更新资讯信息
				</li>
			</ul>
		</div>
	</div>
</div>
	<div class="container" style="width:800px;margin:80px auto">
	<div class="row clearfix">
		<div class="col-md-12 column">
		 <form role="form" action="updateMessage.do">
		        <input type="hidden" name="messageId" value="${message.messageId}">
				<div class="form-group">
					 <label for="exampleInputEmail1">资讯题目</label><input type="text" name="messageTitle" class="form-control" id="exampleInputEmail1" value="${message.messageTitle}"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputEmail1">上次更改时间</label>${message.messageTime}
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">资讯内容</label>
					 <textarea class="form-control" rows="18"  name="messageContext" placeholder="输入资讯内容">${message.messageContext}</textarea>
				</div>
				<div style="width:50px;margin:20px auto"> <button type="submit" class="btn btn-success">更新</button></div>
			</form>
		</div>
	</div>
</div>
					
</body>
</html>