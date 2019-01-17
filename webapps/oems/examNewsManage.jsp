<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>发布考试信息</title>
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
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="tabbable" id="tabs-572786">
				<ul class="nav nav-tabs">
				    <li class="active">
						 <a href="#panel-168171" data-toggle="tab">考试公告</a>
					</li>
					<li>
						 <a href="#panel-172010" data-toggle="tab">发布考试公告</a>
					</li>
				</ul>
				
				
				<div class="tab-content">
				<!-- 正在考试 -->
				<div class="tab-pane active" id="panel-168171">
						<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<table class="table">
				<thead>
					<tr class="warning">
						<th>
							公告标题
						</th>
						<th>
							发布方
						</th>
						<th>
							发布时间
						</th>
						<th>
							查看详情
						</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${examMessageList}" var="message">
					<tr>
						<td>
							${message.messageTitle }
						</td>
						<td>
							OEMS官方
						</td>
						<td>
							<fmt:formatDate type="both"   value="${message.messageTime }" />
						</td>
						<td>
							<a href="messageInfo.do?messageId=${message.messageId}&messageFlag=examMessage"><button type="button" class="btn btn-info">公告详情</button></a>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
					</div>
					<!-- 考试信息发布 -->
					<div class="tab-pane " id="panel-172010">
						<div class="container" style="width:800px;margin:80px auto">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<form role="form" action="releaseMessage.do" method="post">
			    <div class="form-group">
				 <label for="exampleInputEmail1">资讯类型</label><br>
								 <input type="radio" name="messageType" id="red" value="考试资讯">考试资讯
			                     <input type="radio" name="messageType" id="blue" value="考试公告">考试公告<br>
				</div>
				<div class="form-group">
					 <label for="exampleInputEmail1">资讯标题</label><input type="text" class="form-control" name="messageTitle" id="exampleInputEmail1" />
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">发布内容</label><textarea class="form-control" rows="3" name="messageContext" placeholder="资讯内容"></textarea>
				</div>
				<div style="width:50px;margin:20px auto"> <button type="submit" class="btn btn-success">发布</button></div>
			</form>
		</div>
	</div>
</div>
					</div>
		
					
					
					
					
					
					
				</div>
			</div>
		</div>
	</div>
</div>	

</body>
</html>