<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/amazeui.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/yanzheng.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/amazeui.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css"/>
    <script src="${pageContext.request.contextPath}/layer/layer.js"></script>
    <title>招生报名</title>


    <%--添加信息--%>
    <script>
        function addNewcomer() {
            $.post(
                '${pageContext.request.contextPath}/front/add',
                $('#AddNewcomer').serialize(),
                function (result) {
                    if (result.status == 1) {
                        layer.msg('报名成功', {
                            time: 2000,
                            skin: 'successMsg'
                        }, function () {
                            location.href = '${pageContext.request.contextPath}/front/home';
                        })
                    }
                }
            );
        }
    </script>
</head>
<body>
<div class="header">
    <ul class="am-nav am-nav-pills">
        <li class="logo"></li>
        <li><a href="${pageContext.request.contextPath}/front/home">首页</a></li>
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
<form id="AddNewcomer" action="succeed.jsp" class="am-form" method="post">
    <fieldset>
        <legend>报名登记表</legend>
        <div class="am-form-group">
            <label for="doc-vld-name-2-1">姓名：</label>
            <input type="text" id="doc-vld-name-2-1" minlength="2" placeholder="输入姓名" name="name" required/>
        </div>
        <div class="am-form-group">
            <label for="doc-vld-name-2-1">学号：</label>
            <input type="text" id="doc-vld-name-2-1" minlength="10" placeholder="输入学号" name="xuehao" required/>
        </div>
        <div class="am-form-group">
            <label for="doc-select-1-1">年级</label>
            <select id="doc-select-1-1" name="nianji" required>
                <option value="">-=请选择一项=-</option>
                <option value="option1">大一</option>
                <option value="option2">大二</option>
                <option value="option3">大三</option>
                <option value="option3">大四</option>
                <option value="option3">大五</option>

            </select>
            <span class="am-form-caret"></span>
        </div>

        <div class="am-form-group">
            <label for="doc-vld-name-2-1">学院：</label>
            <input type="text" id="doc-vld-name-2-1" minlength="2" placeholder="输入所在学院" name="xueyuan" required/>
        </div>
        <div class="am-form-group">
            <label for="doc-vld-name-2-1">专业：</label>
            <input type="text" id="doc-vld-name-2-1" minlength="2" placeholder="输入所在专业" name="zhuanye" required/>
        </div>
        <div class="am-form-group">
            <label for="doc-vld-name-2-1">手机号：</label>
            <input type="text" id="doc-vld-name-2-1" minlength="11" placeholder="输入手机号" name="phone" required/>
        </div>
        <div class="am-form-group">
            <label for="doc-vld-name-2-1">微信：</label>
            <input type="text" id="doc-vld-name-2-1" minlength="11" placeholder="微信" name="qq" required/>
        </div>


        <div class="am-form-group">
            <label for="doc-select-1-1">兴趣方向</label>
            <select id="doc-select-1-1" name="team" required>
                <option value="">-=请选择一项=-</option>
                <option value="option1">前端</option>
                <option value="option2">数据库</option>
                <option value="option3">运维</option>
                <option value="option3">测试</option>
                <option value="option3">java</option>
                <option value="option3">php</option>
                <option value="option3">python</option>
            </select>
            <span class="am-form-caret"></span>
        </div>


        <button class="am-modal-btn" onclick="addNewcomer()" type="button">确定报名</button>
    </fieldset>
</form>
</body>
</html>
