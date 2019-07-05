<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<script src="js/jquery.min.js"></script>
	<script src="js/amazeui.min.js"></script>
	<link rel="stylesheet" href="css/amazeui.min.css" />
	<link rel="stylesheet" href="css/main.css" />
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
			<h1>为何要学测试？</h1>
		</div>
		<div class="content">
			<p>只要有开发，就会有测试。在国内一些大型的互联网公司，软件测试人员甚至多于开发人员！ PC软件、互联网软件、手机软件、嵌入式软件、都需要测试！</p>
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
					<p>测试是各种产品的必经阶段，测试工程师的价值不言而喻。</p>
				</div>
			</div>
			<div class="content">
				<div class="title1">
					<h1>市场需求</h1>
				</div>
				<div class="new">
					<p>职友网数据显示，北、上、深、广相关的职位共有130430个，尤其测试高端人才稀缺</p>
				</div>
			</div>
			<div class="content">
				<div class="title1">
					<h1>就业薪资</h1>
				</div>
				<div class="new">
					<p>测试工程师平均工资：¥12900元/月，工作1~2年后通常会成为年薪15万以上的测试工程师。</p>
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
			<h1>测试工程师需要学什么？</h1>
		</div>
		<div class="content">
			<img src="${pageContext.request.contextPath}/img/p3.png" />
		</div>
	</div>
	<div class="footer">		
		<p>Copyright © 2013-2018 jikexueyuan.com All Rights Reserved. 京ICP备11018032号 京公网安备11010802013056</p>
	</div>
</body>
</html>
