<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>上传试卷</title>
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
<!-- Test_id:试卷id
Test_name:试卷名称
Test_class:种类
Test_score:试卷分值
Test_time:考试时长
Test_type:试卷模拟还是正式考试 -->
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="tabbable" id="tabs-572786">
				<ul class="nav nav-tabs">
				    <li class="active">
						 <a href="#panel-168171" data-toggle="tab">所有试卷</a>
					</li>
					<li>
						 <a href="#panel-172010" data-toggle="tab">上传试卷</a>
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
							序号
						</th>
						<th>
							试卷编号
						</th>
						<th>
							试卷名称
						</th>
						<th>
							试卷种类
						</th>
						<th>
							试卷分值
						</th>
						<th>
							考试时长
						</th>
						<th>
							试卷归属
						</th>
						<th>
							试卷操作
						</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${testList }" var="test" varStatus="stauts">
					<tr>
					     <td>
							${status.index+1 }
						</td>
						<td>
							${test.testId}
						</td>
						<td>
							${test.testName}
						</td>
						<td>
							${test.testClass}
						</td>
						<td>
							${test.testScore}
						</td>
						<td>
							${test.testTime}
						</td>
						<td>
							${test.testType}
						</td>
						<td>
							<a href="testInfo.do?testId=${test.testId}"><button type="button" class="btn btn-primary">更新试卷</button></a>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
					</div>
					<!-- 上传试卷-->
					<div class="tab-pane " id="panel-172010">
						<div class="container" style="width:800px;margin:80px auto">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<form role="form">
				<div class="form-group">
					 <label for="exampleInputEmail1">试卷名称</label><input type="email" class="form-control" id="exampleInputEmail1" />
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">试卷种类</label><input type="password" class="form-control" id="exampleInputPassword1" />
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">考试分值</label><input type="password" class="form-control" id="exampleInputPassword1" />
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">考试时间</label><input type="password" class="form-control" id="exampleInputPassword1" />
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">试卷归属</label><input type="password" class="form-control" id="exampleInputPassword1" />
				</div>
				 <div class="form-group">
					 <label for="exampleInputFile">选择试卷</label><input type="file" id="exampleInputFile" />
					<p class="help-block">
						选择指定科目试卷进行上传
					</p>
				</div> 
				 
				 
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="alert alert-success alert-dismissable">
				 <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
				<h4>
					注意!
				</h4> <strong>Warning!</strong>上传的试卷必须经过专业人员审核允许后方可上传 <a href="#" class="alert-link">en?</a>
			</div>
		</div>
	</div>
                 <div class="checkbox"><label><input type="checkbox" />已允许</label></div> 
				<div style="width:50px;margin:20px auto"> <button type="button" class="btn btn-success">上传</button></div>
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