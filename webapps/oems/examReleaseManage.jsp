<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<!-- Examinfo_id:考试id
Examinfo_name:考试名称
Examinfo_time:考试时间
Examinfo_starttime:报名开始时间
Examinfo_endtime:报名结束时间
Examinfo_people:报名人数
Examinfo_context:考试介绍 -->
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="tabbable" id="tabs-572786">
				<ul class="nav nav-tabs">
				    <li class="active">
						 <a href="#panel-168171" data-toggle="tab">正在考试</a>
					</li>
					<li>
						 <a href="#panel-172010" data-toggle="tab">发布考试</a>
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
					<tr class="success">
						<th>
							考试编号
						</th>
						<th>
							考试名称
						</th>
						<th>
							考试时间
						</th>
						<th>
							报考人数
						</th>
						<th>
							报名时间
						</th>
						<th>
							考试要点
						</th>
						<th>
							考试设置
						</th>
					</tr>
				</thead>
				<tbody>
				<!-- examinfo_id, examinfo_name, examinfo_time, examinfo_starttime, examinfo_endtime, 
    examinfo_people, examinfo_context, examinfo_mark -->
				<c:forEach items="${examinfoList }" var="examinfo">
					<tr>
						<td>
							${examinfo.examinfoId}
						</td>
						<td>
							${examinfo.examinfoName}
						</td>
						<td>
							<fmt:formatDate type="both" value="${examinfo.examinfoTime}" />
						</td>
						<td>
							${examinfo.examinfoPeople}
						</td>
						<td>
							<fmt:formatDate type="both" value="${examinfo.examinfoStarttime}" />&nbsp;&nbsp;--&nbsp;&nbsp;<fmt:formatDate type="both" value="${examinfo.examinfoEndtime}" />
						</td>
						<!-- <td>
							考试中(入口关闭)/考试结束(入口关闭)/已发布
						</td> -->
						<td>
							${examinfo.examinfoContext}
						</td>
						<td>
							<a href="examinfoByid.do?examinfoId=${examinfo.examinfoId}"><button type="button" class="btn btn-primary">考试更新</button></a>
						</td>
					</tr>
					</c:forEach>
			</tbody>
			</table>
		</div>
	</div>
</div>
					</div>
					<!-- 考试发布 -->
					<div class="tab-pane " id="panel-172010">
						<div class="container" style="width:800px;margin:80px auto">
	<div class="row clearfix">
		<div class="col-md-12 column">
		<a href="allExamMessage.do">前往发布考试公告</a>
	     <form role="form" action="releaseExaminfo.do" method="post">
			    <div class="form-group">
					 <label for="exampleInputEmail1">考试名称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="examinfoName" id="exampleInputEmail1" value=""/>
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">报名人数:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="examinfoPeople" id="exampleInputPassword1" value=""/>
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
				
					   <select class="btn btn-default" name="examinfoMark">
						  <c:forEach items="${testList}" var="test">
				          <option value ="${test.testId}">${test.testName}</option>
				          </c:forEach>
				        </select>
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">考试介绍</label>
					 <textarea class="form-control" rows="10"  name="examinfoContext" placeholder="输入考试要点"></textarea>
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