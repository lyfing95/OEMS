<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户考试信息详情</title>
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

<body>
 <!-- Examinfo_id:考试id
Examinfo_name:考试名称
Examinfo_time:考试时间
Examinfo_starttime:报名开始时间
Examinfo_endtime:报名结束时间
Examinfo_people:报名人数
Examinfo_context:考试介绍 -->    

<div class="container1">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<ul class="breadcrumb">
				<li>
					 <a href="userExamManage.jsp">报名列表</a>
				</li>
				<li class="active">
					信息详情
				</li>
			</ul>
		</div>
	</div>
</div>

<div style="width:800px;test-align:center;margin:0 auto;margin-top:80px;">
<ul class="list-group" style="align:center">
    <!--  <a href="checkExamUser.jsp">返回</a> -->
	<li class="list-group-item"><strong>姓名：</strong>&nbsp;&nbsp;&nbsp; ${applyInfo.user.userName }</li>
	<li class="list-group-item"><strong>性别：</strong>&nbsp;&nbsp;&nbsp; ${applyInfo.user.userSex }</li>
	
	<li class="list-group-item"><strong>电话：</strong>&nbsp;&nbsp;&nbsp; ${applyInfo.user.userPhone }</li>
	<li class="list-group-item"><strong>邮箱：</strong>&nbsp;&nbsp;&nbsp; ${applyInfo.user.userEmail }</li>
	<li class="list-group-item"><strong>报考科目：</strong>&nbsp;&nbsp;&nbsp; ${applyInfo.examinfo.examinfoName }</li>
	<li class="list-group-item"><strong>报名时间：</strong>&nbsp;&nbsp;&nbsp; <fmt:formatDate type="both" value="${applyInfo.applyTime }"/></li>
	<%-- <li class="list-group-item"><strong>科目信息：</strong>&nbsp;&nbsp;&nbsp; ${applyInfo.examinfo.examinfoName }</li> --%>
	<li class="list-group-item"><strong>报名开始时间：</strong>&nbsp;&nbsp;&nbsp; <fmt:formatDate type="both" value="${applyInfo.examinfo.examinfoStarttime }"/></li>
	<li class="list-group-item"><strong>报名结束时间：</strong>&nbsp;&nbsp;&nbsp; <fmt:formatDate type="both" value="${applyInfo.examinfo.examinfoEndtime }"/></li>
	<li class="list-group-item"><strong>报名人数：</strong>&nbsp;&nbsp;&nbsp; ${applyInfo.examinfo.examinfoPeople }</li>
	<!-- <li class="list-group-item"><strong>已报人数：</strong>&nbsp;&nbsp;&nbsp; 20</li> -->
</ul>
    <div style="width:400px;float:left">
    <div style="margin-left:200px"><a href="applyPass.do?applyId=${applyInfo.applyId}"><button type="button" class="btn btn-success">予以通过</button></a></div>
	 </div>
	<div style="width:400px;float:right">
    <div style="margin-left:180px"><a href="applyNoPass.do?applyId=${applyInfo.applyId}"><button type="button" class="btn btn-danger">不通过</button></a></div>
    </div>
</div>

</body>
</html>