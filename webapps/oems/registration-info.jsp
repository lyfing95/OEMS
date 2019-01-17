<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="static/css/registration.css">
<title>填写报名信息</title>
<script>
 function checkname(){
	 var name=document.getElementById("exampleInputText").value;
	 var text;
	 var regName=/^[\u4E00-\u9FA5A-Za-z]+$/;
	 if(!regName.test(name)){
		 text="请输入正确的姓名格式";
		 document.getElementById("checkresult").innerHTML = text;
	 }else{
		 text="正确";
		 document.getElementById("checkresult").innerHTML = text;
	 }
 }
</script>
</head>
<body>
<%@ include file="head.jsp" %>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<ul class="breadcrumb">
				<li>
					 <a href="index.do">首页</a>
				</li>
				<li>
					 <a href="ExaminfoAllinfo.do">考试报名</a>
				</li>
				<li>
					 <a href="ExaminfoOne.do?examinfoId=${examinfoOne.examinfoId}">${examinfoOne.examinfoName}</a>
				</li>
				<li class="active">
					报名页面		
				</li>
			</ul>
		</div>
	</div>
	<hr>
<div class="row clearfix">
		<div class="col-md-6 column">
			<div class="jumbotron" style="background-color: white;">
				<h1>
					考生须知
				</h1>
				<p>
					本考试是网上作答，考场内禁止携带和使用通讯工具，严禁他人代考和代他人考试，考生不得要求监考人员解释试题，保持考场安静，严禁大声喧哗，如有违规违纪者，参照中华人民共和国人社部第6号令、第12号令、人社部发[2016]85号规定处理.
				</p>
				<p>
					 <a class="btn btn-primary btn-large" href="#">Learn more</a>
				</p>
			</div>
		</div>
		<div class="col-md-2 column">
		</div>
		<div class="col-md-4 column">
		<br><br>
			<form method="post" action="ApplyInsert.do">
			<input type="hidden" name="applyExaminfoid" value="${examinfoOne.examinfoId}">
				<div class="form-group">
					 <label for="exampleInputText1">真实姓名</label><input type="text" class="form-control" id="exampleInputText" name="applyName" onblur="checkname()" /><div  id="checkresult" style="color:red;"></div>
				</div>
			
				<div class="form-group">
					 <label for="exampleInputFile">身份证正反面照片</label><input type="file" id="exampleInputFile" />
					<p class="help-block">
						Example block-level help text here.
					</p>
				</div>
			    <button type="submit" class="btn btn-default">参加报名</button>
			</form>
		</div>
	</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
