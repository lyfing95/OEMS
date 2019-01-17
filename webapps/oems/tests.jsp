<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>题库中心</title>
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
					题库中心
				</li>
			</ul>
			
			<table class="table">
				<thead>
					<tr>
						<th>
							试题名称
						</th>
						
						<th>
							试题种类
						</th>
						
						<th>
							分值
						</th>
						
						
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${testList }" var="test">
					<tr>
						
						<td>
							<a href="showexam.do?id=${test.testId }&type1=test">${test.testName }</a>
						</td>
						<td>
							${test.testClass }
						</td>
						<td>
							${test.testScore }
						</td>
						
						
					</tr>
					</c:forEach>
				</tbody>
			</table>
			<ul class="pagination pagination-lg">
			<c:if test="${text!=null }">
			<li>
					 <a href="selecttest.do?text=${text }&page=1">首页</a>
				</li>
				<c:if test="${page ne '1' }">
				<li>
					 <a href="selecttest.do?text=${text }&page=${page-1}">上一页</a>
				</li>
				</c:if>
				<c:if test="${page ne maxpage }">
				<li>
					 <a href="selecttest.do?text=${text }&page=${page+1}">下一页</a>
				</li>
				</c:if>
			</c:if>
			<c:if test="${text==null }">
			<li>
					 <a href="showalltest.do?page=1">首页</a>
				</li>
				<c:if test="${page ne '1' }">
				<li>
					 <a href="showalltest.do?page=${page-1}">上一页</a>
				</li>
				</c:if>
				<c:if test="${page ne maxpage }">
				<li>
					 <a href="showalltest.do?page=${page+1}">下一页</a>
				</li>
				</c:if>
			</c:if>
			</ul>
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