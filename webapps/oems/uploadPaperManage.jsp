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
<script>
function checkValue(){

	var text=document.getElementById("test").value;	
	var inp = document.createElement("input");
	inp.type ="text";
	inp.value=text;	
	inp.size="70";
	
	if(text=="选择题"){
	
	
	var table = document.createElement("table");
	var tr = document.createElement("tr");
	var td = document.createElement("td");
	var br = document.createElement("br");
	var hr = document.createElement("hr");
	var tetle = document.createTextNode("选择题题目(每个选项前使用   ** 分隔)"); 
	var td1 = document.createElement("td");
	var textarea=document.createElement("textarea");
	textarea.cols="50";
	textarea.rows="5";
	textarea.name="title";
	
	var tr1 = document.createElement("tr");
	var tetle1 = document.createTextNode("答案"); 
	var td2 = document.createElement("td");
	var td3 = document.createElement("td");
	var inp1=document.createElement("input");
	inp1.type="text";
	inp1.size="70";
	inp1.name="answer";
	var inp0=document.createElement("input");
	inp0.type="hidden";
	inp0.name="type";
	inp0.value="1";
	table.appendChild(inp0);
	
	var tr2 = document.createElement("tr");
	var tetle2 = document.createTextNode("分值"); 
	var td5 = document.createElement("td");
	var td4 = document.createElement("td");
	var inp2=document.createElement("input");
	inp2.type="text";
	inp2.size="70";
	inp2.name="score";
	/* 第一行 */
	table.appendChild(tr);
	tr.appendChild(td);
	td.appendChild(tetle);
	tr.appendChild(td1);
	td1.appendChild(textarea);
	/* 第二行 */
	table.appendChild(tr2);
	tr2.appendChild(td5);
	td5.appendChild(tetle2);
	tr2.appendChild(td4);
	td4.appendChild(inp2);
	
	/* 第三行 */
	table.appendChild(tr1);
	tr1.appendChild(td2);
	td2.appendChild(tetle1);
	tr1.appendChild(td3);
	td3.appendChild(inp1);
	
	document.getElementById("div").appendChild(table);
	document.getElementById("div").appendChild(br);
	document.getElementById("div").appendChild(hr);
	}else{
		var table = document.createElement("table");
		var tr = document.createElement("tr");
		var td = document.createElement("td");
		var br = document.createElement("br");
		var hr = document.createElement("hr");
		var tetle = document.createTextNode("简答题题目"); 
		var td1 = document.createElement("td");
		var textarea=document.createElement("textarea");
		textarea.cols="50";
		textarea.rows="5";
		textarea.name="title";
		
		var tr2 = document.createElement("tr");
		var tetle2 = document.createTextNode("分值"); 
		var td5 = document.createElement("td");
		var td4 = document.createElement("td");
		var inp2=document.createElement("input");
		inp2.type="text";
		inp2.size="70";
		inp2.name="score";
		
		var tr1 = document.createElement("tr");
		var tetle1 = document.createTextNode("解析"); 
		var td2 = document.createElement("td");
		var td3 = document.createElement("td");
		var textarea1=document.createElement("textarea");
		textarea1.cols="50";
		textarea1.rows="5";
		textarea1.name="answer";
		var inp0=document.createElement("input");
		inp0.type="hidden";
		inp0.name="type";
		inp0.value="简答题";
		table.appendChild(inp0);
		/* 第一行 */
		table.appendChild(tr);
		tr.appendChild(td);
		td.appendChild(tetle);
		tr.appendChild(td1);
		td1.appendChild(textarea);
		/* 第二行 */
		table.appendChild(tr2);
		tr2.appendChild(td5);
		td5.appendChild(tetle2);
		tr2.appendChild(td4);
		td4.appendChild(inp2);
		/* 第三行 */
		table.appendChild(tr1);
		tr1.appendChild(td2);
		td2.appendChild(tetle1);
		tr1.appendChild(td3);
		td3.appendChild(textarea1);
		
		document.getElementById("div").appendChild(table);
		document.getElementById("div").appendChild(br);
		document.getElementById("div").appendChild(hr);
	}
	/* document.getElementById("div").appendChild(hh);
	document.getElementById("div").appendChild(inp1);
	document.getElementById("div").appendChild(hh);
	document.getElementById("div").appendChild(inp2);
	document.getElementById("div").appendChild(hh); */
}


</script>
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
			<form id="shijuanform" action="ok.do" method="post">
	<label for="testtype">试卷种类</label>
	<select id="testtype" name="testtype">
		<option value="模拟试卷">模拟试卷</option>
		<option value="考试试卷">考试试卷</option>
	</select>
	<label for="testname">试卷名称</label>
	<input id="testname" type="text" name="testname">
	<label for="testclass">试卷科目(如：建筑类)</label>
	<input id="testclass" type="text" name="testclass">
	<br>
	<div id="div">
	
	</div>
	</form>
				 
				 
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="alert alert-success alert-dismissable">
				 <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
				<h4>
					注意!
				</h4> <strong>Warning!</strong>上传的试卷必须经过专业人员审核允许后方可上传 <a href="#" class="alert-link"></a>
			</div>
		</div>
	</div>
                 <div class="checkbox"><label><input type="checkbox" />已允许</label></div> 
	<select id="test">
		<option value="选择题">选择题</option>
		<option value="简答题">简答题</option>
	</select>
	<button class="btn btn-success" value="添加" onclick="checkValue()">添加</button>
				<div style="width:50px;margin:20px auto"> <button type="button" onclick="tijiao()" class="btn btn-success">上传</button></div>
			
		</div>
	</div>
</div>
					</div>
		
					
					
					
					
					
					
				</div>
			</div>
		</div>
	</div>
</div>	
<script type="text/javascript">
function tijiao(){
	$("#shijuanform").submit();
}
</script>
</body>
</html>