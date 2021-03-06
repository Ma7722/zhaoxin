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
			<h1>为何要学java？</h1>
		</div>
		<div class="content">
			<p>Java风靡全球21年，位居热门编程语言之首，据官方数据统计，在全球编程语言工程师的数量上Java以900万的程序员数量位居首位，很多软件的开发都离不开它。</p>
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
					<p>java编程语言连续多年位于热门编程语言之首。87%的互联网企业需要会java语言的工程师。</p>
				</div>
			</div>
			<div class="content">
				<div class="title1">
					<h1>市场需求</h1>
				</div>
				<div class="new">
					<p>根据职业社“OFFER派”统计数据显示，目前招聘需求数量最多的岗位，java全栈工程师进入前三。</p>
				</div>
			</div>
			<div class="content">
				<div class="title1">
					<h1>就业薪资</h1>
				</div>
				<div class="new">
					<p>上海java全栈工程师平均工资：¥13030元/月。积累1-2年项目经验之后，通常称为年薪15万-20万的java全栈工程师。</p>
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
			<h1>java工程师需要学什么？</h1>
		</div>
		<div class="content">
			<img src="${pageContext.request.contextPath}/img/j.png" />
		</div>
	</div>
	<div class="footer">		
		<p>Copyright © 2013-2018 jikexueyuan.com All Rights Reserved. 京ICP备11018032号 京公网安备11010802013056</p>
	</div>
</body>
</html>
