<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的考试</title>
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
				<li class="active">
					我的考试
				</li>
			</ul>
			
			<table class="table">
				<thead>
					<tr>
						<th>
							考试名称
						</th>
						
						<th>
							报名时间
						</th>
						
						<th>
							状态
						</th>
						<th>
							得分
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${applyList }" var="apply">
					<tr class="info">
						
						<td>
							${apply.applyMark }
						</td>
						<td>
							<fmt:formatDate value="${apply.applyTime }" pattern="yyyy-MM-dd HH:mm:ss"/>
						</td>
						<td>
							${apply.applyStatus }
						</td>
						<td>
							<c:if test="${apply.applyScore==null }">----</c:if>
							<c:if test="${apply.applyScore!=null }">${apply.applyScore}</c:if>
						</td>
						<td>
							<c:if test="${apply.applyStatus ne '考试已开始' }">----</c:if>
							<c:if test="${apply.applyStatus eq '考试已开始' }"><a href="showexam.do?applyid=${ apply.applyId}&id=${apply.applyMark}&examid=${apply.applyExaminfoid}">去考试</a></c:if>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			
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