function ajaxlogin(){
	var email = $("#inputEmail").val();
	var password = $("#inputPassword").val();
	var reg = /^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
	if(email==""||password==""){
		$("#loginlabel").html("<b style='color: red;'>邮箱或密码不能为空！</b>");
		return;
	}
	if(!reg.test(email)){
		$("#loginlabel").html("<b style='color: red;'>请填写正确的邮箱！</b>");
		return;
	}
	var url2="ajaxlogin.do";
	var data={"userEmail":email,"userPassword":password};
	$.post(url2,data,function(result){
		//result就是服务器返回的应答内容
		// 将应答内容添加到username对应的span中
		$("#loginlabel").html(result);
		if(result=="正在登录"){
			window.location.reload(true);
		}
	});
}
function ajaxregist(){
	var email = $("#registEmail").val();
	var password = $("#registPassword").val();
	var rpassword = $("#registPassword1").val();
	var reg = /^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
	if(email==""||password==""){
		$("#registlabel").html("<b style='color: red;'>邮箱或密码不能为空！</b>");
		return;
	}
	if(!reg.test(email)){
		$("#registlabel").html("<b style='color: red;'>请填写正确的邮箱！</b>");
		return;
	}
	if(password!=rpassword){
		$("#registlabel").html("<b style='color: red;'>两次密码不一致！</b>");
		return;
	}
	var url2="ajaxregist.do";
	var data={"userEmail":email,"userPassword":password};
	$.post(url2,data,function(result){
		//result就是服务器返回的应答内容
		// 将应答内容添加到username对应的span中
		$("#registlabel").html(result);
		if(result=="正在注册"){
			window.location.reload(true);
		}
	});
}

function updateinfo(){
	var email = $("#updateemail").val();
	var username = $("#updateusername").val();
	var phone = $("#updateusername").val();
	var reg = /^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
	if(email==""||username==""||phone==""){
		$("#updatelabel").html("<b style='color: red;'>邮箱用户名和手机号不能为空！</b>");
		return;
	}
	if(!reg.test(email)){
		$("#updatelabel").html("<b style='color: red;'>请填写正确的邮箱！</b>");
		return;
	}
	$("#updateinfoform").submit();
}

function changepassword(){
	var password = $("#changepasswordoldPassword").val();
	var npassword = $("#changepasswordPassword").val();
	var rpassword = $("#changepasswordnewPassword").val();
	if(password==""||npassword==""||rpassword==""){
		$("#changepasswordlabel").html("<b style='color: red;'>原密码和新密码不能为空！</b>");
		return;
	}
	if(npassword!=rpassword){
		$("#changepasswordlabel").html("<b style='color: red;'>两次密码不一致！</b>");
		return;
	}
	var url2="ajaxchackpassword.do";
	var data={"oldPassword":password};
	$.post(url2,data,function(result){
		$("#changepasswordlabel").html("<b style='color: red;'>"+result+"</b>");
		if(result==""){
			$("#changepasswordform").submit();
		}
	});
}

