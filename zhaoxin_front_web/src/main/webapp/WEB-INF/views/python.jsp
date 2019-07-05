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
    <li ><a href="{pageContext.request.contextPath}/front/home">首页</a></li>
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
			<h1>为何要学python？</h1>
		</div>
		<div class="content">
			<p>Python被广泛应用于后端开发、游戏开发、网站开发、科学运算、大数据分析、云计算，图形开发等领域</p>
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
					<p>根据TIOBE最新排名 ，Python已超越C#，与Java,C,C++一起成为全球前4大最流行语言</p>
				</div>
			</div>
			<div class="content">
				<div class="title1">
					<h1>市场需求</h1>
				</div>
				<div class="new">
					<p>python具有 简单、易学、免费、开源、可移植、可扩展、可嵌入、面向对象 等 优点，它的面向对象甚至比java和C#.net更彻底</p>
				</div>
			</div>
			<div class="content">
				<div class="title1">
					<h1>就业薪资</h1>
				</div>
				<div class="new">
					<p>phthon工程师平均工资：¥15900元/月，工作1~2年后通常会成为年薪20万以上的python工程师。</p>
				</div>
			</div>
			
		</div>
	</div>
	<div class="pic">
		<img src="${pageContext.request.contextPath}/img/p2 (2).jpg" width="300px;" style="margin-left:35px;"/>
		<img src="${pageContext.request.contextPath}/img/p3.jpg" />
	</div>
	<div class="study">
		<div class="title">
			<h1>phthon发展方向？</h1>
		</div>
		<div class="content">
			<img src="${pageContext.request.contextPath}/img/qqq.png" />
		</div>
	</div>
	<div class="footer">		
		<p>Copyright © 2013-2018 jikexueyuan.com All Rights Reserved. 京ICP备11018032号 京公网安备11010802013056</p>
	</div>
</body>
</html>
