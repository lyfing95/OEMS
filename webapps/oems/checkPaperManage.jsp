<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="tabbable" id="tabs-572786">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#panel-168171" data-toggle="tab">考试试卷</a>
						</li>
					</ul>


					<div class="tab-content">
						<!-- 考试试卷 -->
						<div class="tab-pane active" id="panel-168171">
							<div class="container">
								<div class="row clearfix">
									<div class="col-md-12 column">
										<table class="table">
											<thead>
												<tr class="success">
													<th>序号</th>
													<th>试卷编号</th>
													<th>试卷名称</th>
													<th>试卷种类</th>
													<th>试卷分值</th>
													<th>考试时间</th>
													<th>试卷操作</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${examList}" var="exam" varStatus="status">
													<tr>
														<td>${status.index+1}</td>
														<td>${exam.test.testId}</td>
														<td>${exam.test.testName}</td>
														<td>${exam.test.testClass}</td>
														<td>${exam.test.testScore}</td>
														<td><fmt:formatDate type="both"
																value="${exam.examinfoTime}" /></td>
														<td><a
															href="checkExam.do?examinfoId=${exam.examinfoId}"><button
																	type="button" class="btn btn-primary">进入阅卷</button></a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
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