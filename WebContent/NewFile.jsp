<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



ccnoobs 18:03:48
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
	window.onload = function() {
		var type = $('#type').val();
		if(type != 'test'){
		var myspan = document.getElementById("myspan");
		var h = 0;
		var m = 0;
		var s = 15;
		var flag;
		function daoji() {
			s = s - 1;
			myspan.innerHTML = h + "时" + m + "分" + s + "秒";
			if (s == 0) {
				if (m == 0) {
					if (h == 0) {
						alert("交卷时间到");
						document.getElementById("uuform").submit();
						window.clearInterval(flag);
						return ;
					} else {
						h = h - 1;
						m = 60;
						m = m - 1;
						s = 61;
						s = s - 1;
					}
				} else {
					m = m - 1;
					s = 61;
					s = s - 1;					
				}
				
			}
			
		}
		flag = setInterval(daoji, 1000);
	}
	};
	
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
	
	function again(){
		 var result=confirm("考试时间未到，是否确定交卷？");
		 if(result.toString()=="false"){
			 return false;
		 }
	}
		
</script>
</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column"
				style="background-image: url(static/images/exam-background.jpg); height: 152px;">
				<div class="page-header">
				<c:if test="${type ne 'test' }">
				<h1>OEMS在线考试</h1>
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
				<input type="hidden" name="examid" value="${applyid }">
					<ol>
						<c:forEach items="${ExamList}" var="ExamList">
							<c:if test="${ExamList.examType eq '选择题'}">
								<li>
									<div class="exam-title-info">
										${ExamList.examName.split("\\*\\*")[0]} &nbsp;<a
											style="color: red;">5分</a>
									</div>
									<div class="exam-content-selectinfo">
										<input type="radio" name="${ExamList.examId }" value="A">&nbsp;${ExamList.examName.split("\\*\\*")[1]}<br>
										<input type="radio" name="${ExamList.examId }" value="B">&nbsp;${ExamList.examName.split("\\*\\*")[2]}<br>
										<input type="radio" name="${ExamList.examId }" value="C">&nbsp;${ExamList.examName.split("\\*\\*")[3]}<br>
										<input type="radio" name="${ExamList.examId }" value="D">&nbsp;${ExamList.examName.split("\\*\\*")[4]}<br>
									</div>
									
									<div class="exam-content-answer">
										正确答案:${ExamList.examAnswer}<br> 解析：${ExamList.examMark}
									</div>
								</li>
							</c:if>
							<c:if test="${ExamList.examType eq '简答题' }">
							<li>
							<div class="exam-title-info">
								${ExamList.examName} &nbsp;<a style="color: red;">20分</a>
							</div>
							<div class="exam-content-textinfo">
								<textarea rows="8" cols="154" name="${ExamList.examId}" style="resize: none;"></textarea>
							</div>
							<div class="exam-content-answer">
								正确答案:<br>
								解析：孟德斯鸠说：人生而平等，根本没有高低贵贱之分。我们没有权利假借后天的给予对别人颐指气使，也没有理由为后天的际遇而自怨自艾。在人之上，要视别为人；在人之下，要视自己为人。
							</div>
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
</body>
</html>













</body>
</html>