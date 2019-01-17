<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
	<head>
	<script src="static/js/jquery-3.2.1.min.js"></script> 
	<script src="static/js/bootstrap.min.js"></script> 
	<link rel="stylesheet" type="text/css" href="static/css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="static/css/bootstrapValidator.css"/>
	<!-- <script src="static/js/jquery-1.4.2.js"></script> -->
	
	
		<title>_left</title>
		<meta charset="utf-8"/>
		<style type="text/css">
			/* css样式 */
			 body{
				background-color: #CDCDCD;
				font-family: "微软雅黑";
				font-size: 14px;
			}
			body,div{
				margin: 0px;
				padding:0px;
			}
			div#menu_bar{
				font-size: 20px;
				color:#FFFFFF;
			}
			div#menu_bar div{
				border-top: 1px solid #cccccc;
				padding: 5px 0;
				text-indent: 15px;
				letter-spacing: 3px;
			}
			div#menu_bar div:last-child{
				border-bottom: 1px solid #cccccc;
			}
			div#menu_bar div:hover{
				background-color: #797981;
			}
			div#menu_bar div a{
				font-size: 20px;
				color:#FFFFFF;
				text-decoration: none;
			}  
		</style>
	</head>
	<body margin="0">
 <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="panel-group" id="panel-809587">
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-809587" href="#panel-element-726859">资讯管理</a>
					</div>
					<div id="panel-element-726859" class="panel-collapse collapse">
						<div class="panel-body">
							<a href="allMessage.do" target="rightFrame">考试资讯</a>
						</div>
						<div class="panel-body">
							<a href="allExamMessage.do" target="rightFrame">考试信息发布</a>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-809587" href="#panel-element-890264">考试管理</a>
					</div>
					<div id="panel-element-890264" class="panel-collapse collapse">
						
						<div class="panel-body">
							 <a href="allExaminfo.do" target="rightFrame">发布考试 </a>
						</div>
						<div class="panel-body">
							<a href="allUserApply.do" target="rightFrame">报名信息审核</a>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-809587" href="#panel-element-890268">试卷管理</a>
					</div>
					<div id="panel-element-890268" class="panel-collapse collapse">
					<div class="panel-body">
							<a href="allTest.do" target="rightFrame">上传试卷</a>
					</div>
				    </div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-809587" href="#panel-element-726869">用户管理</a>
					</div>
					<div id="panel-element-726869" class="panel-collapse collapse">
						<div class="panel-body">
							<a href="allUser.do" target="rightFrame">用户管理</a>
						
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-809587" href="#panel-element-726777">阅卷</a>
					</div>
					<div id="panel-element-726777" class="panel-collapse collapse">
						<div class="panel-body">
							<a href="allExam.do" target="rightFrame">进入阅卷</a>
						
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	
	</body>
</html>
