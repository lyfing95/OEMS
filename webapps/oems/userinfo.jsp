<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>
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
					个人中心
				</li>
			</ul>
			<div class="tabbable" id="tabs-304727">
				<ul class="nav nav-tabs">
					<li>
						 <a href="#panel-592696" data-toggle="tab">个人信息维护</a>
					</li>
					<li class="active">
						 <a href="#panel-397042" data-toggle="tab">修改密码</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane" id="panel-592696">
						<form id="updateinfoform" role="form" action="userinfoupdate.do" method="post">
						<input type="hidden" value="${loginUser.userId }" name="userId">
				<div class="form-group">
					 <label for="email">邮箱</label><input type="email" disabled="disabled"  name="userEmail" class="form-control" id="updateemail" value="${loginUser.userEmail }"/>
				</div>
			    <div class="form-group">
					 <label for="username">用户名</label><input type="text" name="userName" class="form-control" id="updateusername" value="${loginUser.userName }"/>
				</div>
				<div class="form-group">
					 <label for="phone">电话</label><input type="text"  name="userPhone" class="form-control" id="updatephone" value="${loginUser.userPhone }"/>
				</div>
				<!-- <div class="form-group">
					 <label for="exampleInputFile">File input</label><input type="file" id="exampleInputFile" />
					<p class="help-block">
						Example block-level help text here.
					</p>
				</div> -->
				<div class="checkbox">性别
				     <c:if test="${loginUser.userSex==null }">
					 <label><input type="radio" name="userSex" value="男"/>男</label>
					 <label><input type="radio" name="userSex" value="女"/>女</label>
					 </c:if>
					 <c:if test="${loginUser.userSex eq '男' }">
					 <label><input type="radio" name="userSex" checked="checked" value="男"/>男</label>
					 <label><input type="radio" name="userSex" value="女"/>女</label>
					 </c:if>
					 <c:if test="${loginUser.userSex eq '女'}">
					 <label><input type="radio" name="userSex" value="男"/>男</label>
					 <label><input type="radio" name="userSex" checked="checked" value="女"/>女</label>
					 </c:if>
					 <p class="help-block" id="updateinfolabel">
						${msg}
					</p>
			</form>
				</div> <button onclick="updateinfo()" class="btn btn-default">提交修改</button>
					</div>
					<div class="tab-pane active" id="panel-397042">
						<form id="changepasswordform" role="form" action="changepassword.do" method="post">
			    <input type="hidden" value="${loginUser.userId }" name="userId">
				<div class="form-group">
					 <label for="oldPassword">原密码</label><input type="password" class="form-control" id="changepasswordoldPassword" name="oldPassword"/>
				</div>
				<div class="form-group">
					 <label for="Password">新密码</label><input type="password" class="form-control" id="changepasswordPassword" name="userPassword"/>
				</div>
				<div class="form-group">
					 <label for="newPassword">确认密码</label><input type="password" class="form-control" id="changepasswordnewPassword" />
				</div>
				 <p class="help-block" id="changepasswordlabel">
						${msg}
					</p>
			</form>
				 <button onclick="changepassword()" class="btn btn-default">修改密码</button>
					</div>
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