<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>资讯详情</title>
</head>
<body>
<%@ include file="head.jsp" %>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-8 column">
			<ul class="breadcrumb">
				<li>
					 <a href="index.do">主页</a>
				</li>
				<li>
					 <a href="showallmessage.do">考试资讯</a>
				</li>
				<li class="active">
					资讯详情
				</li>
			</ul>
			<div class="page-header">
				<h1>
					${message.messageTitle } <small><fmt:formatDate value="${message.messageTime }" pattern="yyyy-MM-dd HH:mm:ss"/></small>
				</h1>
			</div>
			<dl>
				<dt>
					正文
				</dt>
				<dd>
					${message.messageContext }
				</dd>
			</dl>
			
			<div class="row clearfix">
					<h3>
						最新资讯.
					</h3>
				<div class="col-md-6 column">
					<ul class="list-unstyled">
					<c:forEach items="${messageList }" var="message" begin="0" end="5">
								<li style="margin-bottom: 15px">
									<div style="width: 200px;float: left;margin-bottom: 15px"><a href="showmessage.do?messageid=${message.messageId }" target="_blank">${message.messageTitle }</a></div> <span style="float: right;">
									<fmt:formatDate value="${message.messageTime }" pattern="yyyy-MM-dd"/> </span>
								</li>
								</c:forEach>
								</ul>
				</div>
				<div class="col-md-6 column">
					<ul class="list-unstyled">
						<c:forEach items="${messageList }" var="message" begin="6" end="11">
								<li style="margin-bottom: 15px">
									<div style="width: 200px;float: left;margin-bottom: 15px"><a href="showmessage.do?messageid=${message.messageId }" target="_blank">${message.messageTitle }</a></div> <span style="float: right;">
									<fmt:formatDate value="${message.messageTime }" pattern="yyyy-MM-dd"/> </span>
								</li>
								</c:forEach>
					</ul>
				</div>
			</div>
		</div>
		<div class="col-md-4 column">
			<div class="jumbotron">
						  <h3>
							考试公告
						</h3>
						<ul class="list-unstyled">
						   <c:forEach items="${examList }" var="exam" begin="0" end="5">
								<li style="margin-bottom: 5px">
									<a href="showmessage.do?messageid=${exam.messageId }" target="_blank">${exam.messageTitle }</a><span style="float: right;">
									<fmt:formatDate value="${exam.messageTime }" pattern="yyyy-MM-dd"/></span>
								</li>
								</c:forEach>
								</ul>
								
						<p>
							 <a class="btn btn-primary btn-large" href="showallexammessage.do">了解更多</a>
						</p>
			</div>
		</div>
	</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>