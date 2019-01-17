<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在线考试系统</title>
</head>
<body>
<%@ include file="head.jsp" %>

	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="carousel slide" id="carousel-68469" >
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-68469">
					</li>
					<li data-slide-to="1" data-target="#carousel-68469">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="" src="static/images/banner01.png" />
						<div class="carousel-caption">
							<!-- <h4>
								First Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p> -->
						</div>
					</div>
					<div class="item">
						<img alt="" src="static/images/banner02.png" />
						<div class="carousel-caption">
							
						</div>
					</div>
				</div> <a class="left carousel-control" href="#carousel-68469" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-68469" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
			<div class="container">
			<div class="row clearfix" style="margin-top: 50px">
				<div class="col-md-8 column">
					<h3>
						考试资讯.
					</h3>
					<div class="row clearfix">
						<div class="col-md-6 column">
							<div class="carousel slide" id="carousel-751505">
								<ol class="carousel-indicators">
									<li data-slide-to="0" data-target="#carousel-751505">
									</li>
									<li data-slide-to="1" data-target="#carousel-751505" class="active">
									</li>
									
								</ol>
								<div class="carousel-inner">
									<div class="item">
										<a href="showmessage.do?messageid=24"><img alt="" src="static/images/tetle01.png" /></a>
										<div class="carousel-caption">
											
										</div>
									</div>
									<div class="item active">
										<a href="showmessage.do?messageid=11"><img alt="" src="static/images/tetle02.png" /></a>
										<div class="carousel-caption">
											
										</div>
									</div>
								</div> <a class="left carousel-control" href="#carousel-751505" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-751505" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
							</div>
							<div style="margin-top: 10px" >
							<ul class="list-unstyled">
							<c:forEach items="${messageList }" var="message">
								<li style="margin-bottom: 15px">
									<div style="width: 200px;float: left;margin-bottom: 15px"><a href="showmessage.do?messageid=${message.messageId }" target="_blank">${message.messageTitle }</a></div> <span style="float: right;">
									<fmt:formatDate value="${message.messageTime }" pattern="yyyy-MM-dd"/> </span>
								</li>
								</c:forEach>
							</ul>
							</div>
						</div>
						<div class="col-md-6 column">
						<c:forEach items="${testList }" var="test">
							<blockquote>
								<p>
									 <a href="showexam.do?id=${test.testId }&type1=test">${test.testName }</a>
								</p> <small>${test.testClass } <cite>${test.testScore }分</cite></small> 
							</blockquote>
						</c:forEach>
						</div>
					</div>
				</div>
				<div class="col-md-4 column">
					<div class="jumbotron">
						<h3>
							考试公告
						</h3>
						<ul class="list-unstyled">
						   <c:forEach items="${examList }" var="exam">
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
			<!-- <div class="row clearfix" style="margin-top: 40px;margin-bottom: 100px">
				<div class="col-md-8 column">
					 
					
					<h3>
						最新题库.
					</h3>
					<div class="row clearfix">
						<div class="col-md-6 column">
							<ul class="list-unstyled">
								<li style="margin-bottom: 5px">
									这里是最新题库<span style="float: right;">123123</span>
								</li>
								<li>
									Consectetur adipiscing elit
								</li>
								<li>
									Integer molestie lorem at massa
								</li>
								<li>
									Facilisis in pretium nisl aliquet
								</li>
								<li>
									Nulla volutpat aliquam velit
								</li>
								<li>
									Faucibus porta lacus fringilla vel
								</li>
								<li>
									Aenean sit amet erat nunc
								</li>
								<li>
									Eget porttitor lorem
								</li>
							</ul>
						</div>
						<div class="col-md-6 column">
							<ul class="list-unstyled">
								<li style="margin-bottom: 5px">
									这里是最新题库<span style="float: right;">123123</span>
								</li>
								<li>
									Consectetur adipiscing elit
								</li>
								<li>
									Integer molestie lorem at massa
								</li>
								<li>
									Facilisis in pretium nisl aliquet
								</li>
								<li>
									Nulla volutpat aliquam velit
								</li>
								<li>
									Faucibus porta lacus fringilla vel
								</li>
								<li>
									Aenean sit amet erat nunc
								</li>
								<li>
									Eget porttitor lorem
								</li>
							</ul>
						</div>
					</div>
				</div> -->
				<!-- <div class="col-md-4 column">
					<h3>
						题库大全.
					</h3>
					<ul class="list-unstyled">
								<li style="margin-bottom: 5px">
									这里是题库的分类
								</li>
						<li>
							Consectetur adipiscing elit
						</li>
						<li>
							Integer molestie lorem at massa
						</li>
						<li>
							Facilisis in pretium nisl aliquet
						</li>
						<li>
							Nulla volutpat aliquam velit
						</li>
						<li>
							Faucibus porta lacus fringilla vel
						</li>
						<li>
							Aenean sit amet erat nunc
						</li>
						<li>
							Eget porttitor lorem
						</li>
					</ul>
				</div>
			</div> -->
			<!-- <div class="row clearfix" style="margin-top: 40px">
				<div class="col-md-12 column">
					<div class="row clearfix">
						<div class="col-md-8 column">
							<h3>
								h3. 这是一套可视化布局系统.
							</h3>
							<div class="row">
								<div class="col-md-4">
									<div class="thumbnail">
										<img alt="300x200" src="static/images/banner01.png" />
										<div class="caption">
											<h3>
												Thumbnail label
											</h3>
											<p>
												Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
											</p>
											<p>
												 <a class="btn btn-primary" href="#">Action</a> <a class="btn" href="#">Action</a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="thumbnail">
										<img alt="300x200" src="static/images/banner01.png" />
										<div class="caption">
											<h3>
												Thumbnail label
											</h3>
											<p>
												Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
											</p>
											<p>
												 <a class="btn btn-primary" href="#">Action</a> <a class="btn" href="#">Action</a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="thumbnail">
										<img alt="300x200" src="static/images/banner01.png" />
										<div class="caption">
											<h3>
												Thumbnail label
											</h3>
											<p>
												Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
											</p>
											<p>
												 <a class="btn btn-primary" href="#">Action</a> <a class="btn" href="#">Action</a>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 column">
							<h3>
								h3. 这是一套可视化布局系统.
							</h3>
							<div class="media">
								 <a href="#" class="pull-left"><img src="static/images/show01.jpg" class="media-object" alt='' /></a>
								<div class="media-body">
									<h4 class="media-heading">
										Nested media heading
									</h4> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
									<div class="media">
										 <a href="#" class="pull-left"><img src="static/images/show01.jpg" class="media-object" alt='' /></a>
										<div class="media-body">
											<h4 class="media-heading">
												Nested media heading
											</h4> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div> -->
		</div>
	</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>