<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="static/css/bootstrapValidator.css">
<link rel="stylesheet" type="text/css"
	href="static/css/registration.css">
<script type="text/javascript" src="static/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<title>中学生在线考试</title>
<script type="text/javascript">
/* 

	window.onload = function() {
		var type = $('#type').val();
		if(type != 'test'){
		
	document.onkeydown = function (e) {
		var ev = window.event || e;
		var code = ev.keyCode || ev.which;
		if (code == 116) {
		ev.keyCode ? ev.keyCode = 0 : ev.which = 0;
		cancelBubble = true;
		return false;
		}
		} 
	//禁止f5刷新
	document.oncontextmenu=function(){return false};//禁止右键刷新
	
		 */
	function again(){
		 var result=confirm("考试时间未到，是否确定交卷？");
		 if(result.toString()=="false"){
			 return false;
		 }
	}
</script>
</head>
<body>

<input id="time" type="hidden" value="${examinfotime }"/>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column"
				style="background-image: url(static/images/exam-background.jpg); height: 152px;">
				<div class="page-header">
				<c:if test="${type ne 'test' }">
				<h1>${examinfo.examinfoName }</h1>
				</c:if>
				<c:if test="${type eq 'test' }">
					<h1>OEMS在线题库</h1>
					</c:if>
					<input type="hidden" id="type" value="${type}">
					<c:if test="${type ne 'test' }">
					<div class="page-text">
						答题剩余时间:<span id="myspan"></span>
					</div>
					<div class="page-button-submit">交卷</div>
						</c:if>
				</div>

				<div class="progress">
					<div class="progress-bar progress-success"></div>
				</div>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-12 column"
				style="background-color: ffffef; border: 1px solid #cccccc;">
				<form name="form" id="uuform" method="post" action="AnswerInsert.do">
				<input type="hidden" name="examid" value="${examid }">
				<input type="hidden" name="applyid" value="${applyid }">
					<ol>
						<c:forEach items="${ExamList}" var="exam">
							<c:if test="${exam.examType eq '选择题'}">
								<li>
									<div class="exam-title-info">
										${exam.examName.split("\\*\\*")[0]} &nbsp;<a
											style="color: red;">${exam.examScore}分</a>
									</div>
									<div class="exam-content-selectinfo">
										<input type="radio" name="${exam.examId }" value="A">&nbsp;${exam.examName.split("\\*\\*")[1]}<br>
										<input type="radio" name="${exam.examId }" value="B">&nbsp;${exam.examName.split("\\*\\*")[2]}<br>
										<input type="radio" name="${exam.examId }" value="C">&nbsp;${exam.examName.split("\\*\\*")[3]}<br>
										<input type="radio" name="${exam.examId }" value="D">&nbsp;${exam.examName.split("\\*\\*")[4]}<br>
									</div>
									<c:if test="${type eq 'test' }">
									<div class="exam-content-answer">
										正确答案:${exam.examAnswer}<br> 解析：${exam.examMark}
									</div>
									</c:if>
								</li>
							</c:if>
							<c:if test="${exam.examType eq '简答题' }">
							<li>
							<div class="exam-title-info">
								${exam.examName} &nbsp;<a style="color: red;">${exam.examScore}分</a>
							</div>
							<div class="exam-content-textinfo">
								<textarea rows="8" cols="154" name="${exam.examId}" style="resize: none;"></textarea>
							</div>
							<c:if test="${type eq 'test' }">
							<div class="exam-content-answer">
								正确答案:<br>
								解析：${exam.examMark}
							</div>
							</c:if>
						</li>
							</c:if>
						</c:forEach>
					</ol>
					<c:if test="${type ne 'test' }">
					<input id="submittest" name="submittest" type="submit" value="交卷" onclick="return again()" >
					</c:if>
				</form>
			</div>
		</div>
	</div>
	<script>
var box = document.getElementById("myspan");
function abc() {
	var type = $('#type').val();
	if(type != 'test'){
	var time = new Date();
	var starttime=document.getElementById("time").value;
	var newtime = new Date(starttime);
	var x = newtime.getTime()-time.getTime();
	var day = Math.floor(x/(24*60*60*1000));
	var hou = Math.floor(x%(24*60*60*1000)/(60*60*1000));
	var min = Math.floor(x%(24*60*60*1000)%(60*60*1000)/(60*1000));
	var sec = Math.floor(x%(24*60*60*1000)%(60*60*1000)%(60*1000)/100)/10;
	box.innerHTML = "";
	box.innerHTML = day+"天"+hou+"小时"+min+"分"+sec+"秒";
	 if(day<0&&hou<0&&min<0&&sec<0){
		$("#uuform").submit();
	} 
		
	}
}
setInterval(abc, 100);
</script>
</body>
</html>