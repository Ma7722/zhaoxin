<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/amazeui.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/amazeui.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />
	<title>招生报名</title>
</head>
<body>
	<div class="header">
		<ul class="am-nav am-nav-pills">
	<li class="logo" ></li>		
    <li ><a href="${pageContext.request.contextPath}/front/home">首页</a></li>
    <li class="am-dropdown " data-am-dropdown>
        <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
            专业介绍 <span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">

			<li><a href="${pageContext.request.contextPath}/front/ui">前端</a></li>
			<li><a href="${pageContext.request.contextPath}/front/sjk">数据库</a></li>
			<li><a href="${pageContext.request.contextPath}/front/text">测试</a></li>
			<li><a href="${pageContext.request.contextPath}/front/yw">运维</a></li>
			<li><a href="${pageContext.request.contextPath}/front/java">java</a></li>
			<li><a href="${pageContext.request.contextPath}/front/php">php</a></li>
			<li><a href="${pageContext.request.contextPath}/front/python">python</a></li>
          </ul>
    </li>
    <li class="am-dropdown " data-am-dropdown>
        <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
            报名登入<span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">
            
            <li><a href="${pageContext.request.contextPath}/front/baoming">新人报名</a></li>
          </ul>
    </li>
</ul
	</div>
	<div class="introuduce">
		<div class="title">
			<h1>为何要学php？</h1>
		</div>
		<div class="content">
			<p>作为当今主流的开发语言，PHP集简单、免费、高效等荣誉于一身。对于将来要在开发领域叱咤风云的你来说，PHP全栈工程师将为你打开IT开发领域大门！</p>
		</div>
	</div>
	<div class="inter clear-float">
		<div class="inter-l">
			<img src="${pageContext.request.contextPath}/img/p1.png"  />
		</div>
		<div class="inter-r">
			<div class="content">
				<div class="title">
					<h1>行业前景</h1>
				</div>
				<div class="new">
					<p>目前，65%全球互联网网站采用PHP技术。同时，数据显示，394家Alexa Toop500中国采用PHP技术</p>
				</div>
			</div>
			<div class="content">
				<div class="title1">
					<h1>市场需求</h1>
				</div>
				<div class="new">
					<p>根据拉勾网显示，2016年PHP相关职位42898个，人才供比达到1:40。优秀的PHP开发工程师更是稀缺。</p>
				</div>
			</div>
			<div class="content">
				<div class="title1">
					<h1>就业薪资</h1>
				</div>
				<div class="new">
					<p>目前，上海PHP全栈工程师平均工资10900元/月。1-2年项目经验之后通常成为年薪20万以上的PHP全栈工程师。</p>
				</div>
			</div>
			
		</div>
	</div>
	<div class="pic">
		<img src="${pageContext.request.contextPath}/img/p2 (2).jpg" width="300px;" style="margin-left:35px;"/>
		<img src="${pageContext.request.contextPath}/img/p3 (2).jpg" />
	</div>
	<div class="study">
		<div class="title">
			<h1>php工程师需要学什么？</h1>
		</div>
		<div class="content">
			<img src="${pageContext.request.contextPath}/img/p1.jpg" />
		</div>
	</div>
	<div class="footer">		
		<p>Copyright © 2013-2018 jikexueyuan.com All Rights Reserved. 京ICP备11018032号 京公网安备11010802013056</p>
	</div>
</body>
</html>
