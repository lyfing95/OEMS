<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>考试信息审核</title>
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
	<div class="container" style="margin-top:80px;">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<table class="table">
					<thead>
						<tr class="warning">
							<th></th>
							<th>序号</th>
							<th>姓名</th>
							<th>报名时间</th>
							<th>报考科目</th>
							<th>考试时间</th>
							<th>报名状态</th>
							<th>审核</th>
						</tr>
					</thead>
					<tbody>
					   <c:forEach items="${applyList}" var="apply" varStatus="status">
						<tr>
						<!--  apply_id, apply_userid, apply_name, apply_examinfoid, apply_status, apply_score, 
    apply_time, apply_mark-->
						   <td><span class="glyphicon glyphicon-user"></span></td>
							<td>${status.index+1}</td>
							<td>${apply.applyName}</td>
							<td><fmt:formatDate type="both" value="${apply.applyTime}"/></td>
							<td>${apply.examinfo.examinfoName}</td>
							<td><fmt:formatDate type="both" value="${apply.examinfo.examinfoTime}"/></td>
							<td>${apply.applyStatus}</td>
							<td><a href="userApplyInfo.do?applyId=${apply.applyId}"><button type="button"
										class="btn btn-primary">查看信息</button></a></td>
						
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>