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
            报名<span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">
            
            <li><a href="${pageContext.request.contextPath}/front/baoming">新人报名</a></li>
          </ul>
    </li>
</ul
	</div>
	<div class="container">
		<div class="first">
			<div class="first-a">
				<h1>为每个人</h1>
			</div>
			<div class="first-b">
				<h1>找到好方向</h1>
			</div>
		</div>
		<div class="second">
			<img src="${pageContext.request.contextPath}/img/xuexiao.jpg"  />
		</div>
		<div class="four">
			<div class="title"><h1>学习环境</h1></div>
			<div class="content clear-float">
				<img src="${pageContext.request.contextPath}/img/huanjing.jpg" />
				<img src="${pageContext.request.contextPath}/img/huanjing.jpg" />
				<img src="${pageContext.request.contextPath}/img/huanjing.jpg" />
				<img src="${pageContext.request.contextPath}/img/huanjing.jpg" />
			</div>
		</div>
		<div class="three">
			<div class="title"><h1>行业前景</h1></div>
			<div class="content clear-float">
				<img src="${pageContext.request.contextPath}/img/a.png" />
				<img src="${pageContext.request.contextPath}/img/b.png" />
				<img src="${pageContext.request.contextPath}/img/c.png" />
				<img src="${pageContext.request.contextPath}/img/d.png" />
				<img src="${pageContext.request.contextPath}/img/e.png" />
				<img src="${pageContext.request.contextPath}/img/f.png" />
			</div>
		</div>
		<div class="three">
			<div class="title"><h1>专业方向</h1></div>
			<div class="content clear-float">
				<img src="${pageContext.request.contextPath}/img/g.png" />
				<img src="${pageContext.request.contextPath}/img/h.png" />
				<img src="${pageContext.request.contextPath}/img/m.png" />
				<img src="${pageContext.request.contextPath}/img/n.png" />
				<img src="${pageContext.request.contextPath}/img/o.png" />
				<img src="${pageContext.request.contextPath}/img/p.png" />
				<img src="${pageContext.request.contextPath}/img/q.png" />
			</div>
		</div>
	</div>
	<div class="footer">
		<p>Copyright © 2013-2018 jikexueyuan.com All Rights Reserved. 京ICP备11018032号 京公网安备11010802013056</p>
	</div>
</body>
</html>