<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<title>管理员登录</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link  rel="stylesheet" href="static/css/bootstrap.min.css"> 
<script src="static/js/jquery-3.2.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>

</head>
<script type="text/javascript">
$(function(){
$("#valiImage").click(function(){
	   var timeStr = new Date().getTime();
	   var url = "valistr.do?time="+timeStr;
	   $("#valiImage").attr("src",url);
}); 
});
</script>
<body>

	<div id="ui" style="text-align:center;">
	<div class="user ">
	<div class="logo" style="margin-bottom: 50px;margin-top: 50px;">
	<a href=#>
	<img src="static/images/1.jpg" width="204px" class="img-rounded"></a>
	</div>
	<h2>oems管理员登录</h2>
	<!-- uiView:  -->
	<div data-ui-view="" class="container">


	<div class="container-fluid full ">
	<form id="login1" action="adminlogin.do" method="post" 
						class="form col-md-4 col-md-offset-4 ">
						<label for="username" class="col-md-3 control-label">用户名</label>
						<div class="form-group" >
							<input id="username" name="username" type="text"
								class="form-control input-lg" placeholder="用户名">
						</div>
						<label for="password" class="col-md-3 control-label">密码</label>
						<div class="form-group">
							<input id="password" name="password" type="password"
								class="form-control input-lg" placeholder="登录密码">
						</div>
						<label class="col-md-3 control-label"
					for="varcode">验证码</label> <br><input class="form-control input-lg" id="varcode"
					type="text" name="varcode" ><img  id="valiImage" alt="验证码" src="valistr.do"> <br>
						
						<div class="form-group">
							<div id="loginInfo"><b style='color:red;font-size:15px;'>${msg }</b></div>
						</div>
						 
						<div class="form-group">
							<button id="submit1" class="btn btn-primary btn-lg btn-block"
								type="button" onclick="validatePassword()">立刻登录</button>
						</div>
					</form>
	</div>
	</div>
	
	<div class="footer">
	<a class="icon-ic_login_backhome" href="index.do">
	返回首页</a>
		</div>
	</div>
	</div>


	
	
	<script type="text/javascript">
		function validatePassword() {
			var username = $("#username").val();
			var password = $("#password").val();
			var varcode = $("#varcode").val();
			var isok = true;
			/* 判断用户名密码是否为空 */
			if (username == "") {
				$("#loginInfo").html(
						"<b style='color:red;font-size:15px;'>用户名不能为空！</b>");
				$("#username").focus();
				isok = false;
				return;
			}
			if (password == "") {
				$("#loginInfo").html(
						"<b style='color:red;font-size:15px;'>密码不能为空！</b>");
				$("#password").focus();
				isok = false;
				return;
			}
			if (varcode == "") {
				$("#loginInfo").html(
						"<b style='color:red;font-size:15px;'>验证码不能为空！</b>");
				$("#varcode").focus();
				isok = false;
				return;
			}
			if (isok) {
				$("#login1").submit();
			}
		}
	</script>
	
	<footer style="text-align: center">
    <hr>
<p class="am-padding-left">© 2018 <a href="#">达内北京海淀基地</a></p>
</footer>


	</body>
	</html>