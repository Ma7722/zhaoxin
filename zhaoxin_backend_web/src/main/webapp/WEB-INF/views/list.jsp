<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=utf-8" %>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>56招新后台</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/amazeui.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/app.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/amazeui.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/app.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-paginator.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/layer/layer.js"></script>
    <%--分页--%>
    <script>
        $(function () {
            $('#pagination').bootstrapPaginator({
                bootstrapMajorVersion: 3,
                currentPage:${pageInfo.pageNum},
                totalPages:${pageInfo.pages},
                pageUrl: function (type, page, current) {
                    return '${pageContext.request.contextPath}/backend/list?pageNum=' + page;
                },
                itemTexts: function (type, page, current) {
                    switch (type) {
                        case 'first':
                            return '首页';
                        case 'prev':
                            return '上一页';
                        case 'next':
                            return '下一页';
                        case 'last':
                            return '末页';
                        case 'page':
                            return page;
                    }
                }
            });
        });
    </script>

    <%--添加信息--%>
    <script>
        function addNewcomer() {
            $.post(
                '${pageContext.request.contextPath}/backend/add',
                $('#AddNewcomer').serialize(),
                function (result) {
                    if (result.status == 1) {
                        layer.msg('添加成功', {
                            time: 2000,
                            skin: 'successMsg'
                        }, function () {
                            location.href = '${pageContext.request.contextPath}/backend/list?pageNum=' +${pageInfo.pageNum};
                        })
                    }
                }
            );
        }
    </script>

    <%--修改-显示信息--%>
    <script>
        function showNewcomerModal(id) {
            $('#showNewcomerModal').modal('show');
            $.post(
                '${pageContext.request.contextPath}/backend/findById',
                {'id': id},
                function (result) {
                    if (result.status == 1) {
                        $('#newcomerNum').val(result.data.id);
                        $('#newcomerName').val(result.data.name);
                        $('#newcomerNianji').val(result.data.nianji);
                        $('#newcomerPhone').val(result.data.phone);
                        $('#newcomerQQ').val(result.data.qq);
                        $('#newcomerTeam').val(result.data.team);
                        $('#newcomerXuehao').val(result.data.xuehao);
                        $('#newcomerXueyuan').val(result.data.xueyuan);
                        $('#newcomerZhuanye').val(result.data.zhuanye);
                    }
                }
            );
        }
    </script>

    <%--修改--%>
    <script>
        function modifyNewcomer(id) {
            $.ajax({
                type: 'post',
                url: '${pageContext.request.contextPath}/backend/modify',
                data: {
                    'id': $('#newcomerNum').val(),
                    'name': $('#newcomerName').val(),
                    'nianji': $('#newcomerNianji').val(),
                    'phone': $('#newcomerPhone').val(),
                    'qq': $('#newcomerQQ').val(),
                    'team': $('#newcomerTeam').val(),
                    'xuehao': $('#newcomerXuehao').val(),
                    'xueyuan': $('#newcomerXueyuan').val(),
                    'zhuanye': $('#newcomerZhuanye').val()
                },
                dataType: 'json',
                success: function (result) {
                    if (result.status == 1) {
                        layer.msg(result.message, {
                            time: 2000,
                            skin: 'successMsg'
                        }, function () {
                            location.href = '${pageContext.request.contextPath}/backend/list';
                        })
                    } else {
                        layer.msg(result.message, {
                            time: 2000,
                            skin: 'errorMsg'
                        })
                    }
                }
            })
        }
    </script>

    <%--显示确认删除的提示--%>
    <script>
        function showDeleteModal(id) {
            $('#deleteNewcomerId').val(id);
            $('#deleteNewcomerModal').modal('show');
        }
    </script>

    <%--删除信息--%>
    <script>
        function deleteNewcomer() {
            $.post(
                '${pageContext.request.contextPath}/backend/removeById',
                {'id': $('#deleteNewcomerId').val()},
                function (result) {
                    if (result.status == 1) {
                        layer.msg('删除成功', {
                            time: 1000,
                            skin: 'successMsg'
                        }, function () {
                            //重新加载数据
                            location.href = '${pageContext.request.contextPath}/backend/list?pageNum=' +${pageInfo.pageNum};
                        })
                    }
                }
            );
        }
    </script>

    <%--导出excel--%>
    <script>
        function exportNewcomer(){
            $.post(
                '${pageContext.request.contextPath}/backend/export',
            );

        }
    </script>
</head>

<body data-type="generalComponents">

<header class="am-topbar am-topbar-inverse admin-header">
    <div class="am-topbar-brand">
        <a href="javascript:;" class="tpl-logo">
            <img src="${pageContext.request.contextPath}/img/logo.png" alt="">
        </a>
    </div>
    <div class="am-icon-list tpl-header-nav-hover-ico am-fl am-margin-right"></div>

    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
            data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
            class="am-icon-bars"></span></button>

    <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

        <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">

            <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen" class="tpl-header-list-link"><span
                    class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>

            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                    <span class="tpl-header-list-user-nick">禁言小张</span><span class="tpl-header-list-user-ico"> <img
                        src="${pageContext.request.contextPath}/img/user01.png"></span>
                </a>
                <ul class="am-dropdown-content">
                    <li><a href="#"><span class="am-icon-bell-o"></span> 资料</a></li>
                    <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
                    <li><a href="#"><span class="am-icon-power-off"></span> 退出</a></li>
                </ul>
            </li>
            <li><a href="###" class="tpl-header-list-link"><span
                    class="am-icon-sign-out tpl-header-list-ico-out-size"></span></a></li>
        </ul>
    </div>
</header>

<div class="tpl-page-container tpl-page-header-fixed">
    <div class="tpl-left-nav tpl-left-nav-hover">
        <div class="tpl-left-nav-title">列表</div>
        <div class="tpl-left-nav-list">
            <ul class="tpl-left-nav-menu">
                <li class="tpl-left-nav-item">
                    <a href="${pageContext.request.contextPath}/backend/home" class="nav-link active">
                        <i class="am-icon-home"></i>
                        <span>首页</span>
                    </a>
                </li>

                <li class="tpl-left-nav-item">
                    <!-- 打开状态 a 标签添加 active 即可   -->
                    <a href="javascript:;" class="nav-link tpl-left-nav-link-list active">
                        <i class="am-icon-table"></i>
                        <span>新人列表</span>
                        <!-- 列表打开状态的i标签添加 tpl-left-nav-more-ico-rotate 图表即90°旋转  -->
                        <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
                    </a>
                    <ul class="tpl-left-nav-sub-menu" style="display:block">
                        <li>
                            <!-- 打开状态 a 标签添加 active 即可   -->
                            <a href="${pageContext.request.contextPath}/backend/list" class="active">
                                <i class="am-icon-angle-right"></i>
                                <span>文字表格</span>
                                <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="tpl-content-wrapper">
        <div class="tpl-content-page-title">新人列表</div>
        <ol class="am-breadcrumb">
            <li><a href="${pageContext.request.contextPath}/backend/home" class="am-icon-home">首页</a></li>
            <li><a href="${pageContext.request.contextPath}/backend/list">新人列表</a></li>
            <li class="am-active">文字列表</li>
        </ol>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span> 列表
                </div>
            </div>
            <div class="tpl-block">
                <div class="am-g">

                    <%--添加信息 start--%>
                    <div class="am-u-sm-12 am-u-md-6">
                        <div class="am-btn-toolbar">
                            <div class="am-btn-group am-btn-group-xs">
                                <button type="button" class="am-btn am-btn-alert am-btn-success"
                                        data-am-modal="{target: '#my-alert'}"><span class="am-icon-plus"></span> 添加
                                </button>
                                <div class="am-modal am-modal-alert" tabindex="-1" id="my-alert">
                                    <div class="am-modal-dialog">
                                        <div class="am-modal-hd">添加信息</div>
                                        <div class="am-modal-bd">
                                            <%--表单--%>
                                            <form id="AddNewcomer"
                                                  class="am-form" method="post">
                                                <fieldset>
                                                    <div class="am-form-group">
                                                        <%--@declare id="doc-vld-name-2-1"--%><label
                                                            for="doc-vld-name-2-1"
                                                            style="margin-left:-430px;">姓名：</label>
                                                        <input type="text" class="doc-vld-name-2-1" minlength="10"
                                                               placeholder="输入姓名" name="name" required/>
                                                    </div>

                                                    <div class="am-form-group">
                                                        <label for="doc-vld-name-2-1"
                                                               style="margin-left:-430px;">学号：</label>
                                                        <input type="text" class="doc-vld-name-2-1" minlength="10"
                                                               placeholder="输入学号" name="xuehao" required/>
                                                    </div>

                                                    <div class="am-form-group">
                                                        <label for="doc-vld-name-2-1"
                                                               style="margin-left:-430px;">年级：</label>
                                                        <input type="text" class="doc-vld-name-2-1" minlength="10"
                                                               placeholder="输入年级" name="nianji" required/>
                                                    </div>

                                                    <div class="am-form-group">
                                                        <label for="doc-vld-name-2-1"
                                                               style="margin-left:-430px;">专业：</label>
                                                        <input type="text" class="doc-vld-name-2-1" minlength="10"
                                                               placeholder="输入专业" name="zhuanye" required/>
                                                    </div>

                                                    <div class="am-form-group">
                                                        <label for="doc-vld-name-2-1"
                                                               style="margin-left:-430px;">学院：</label>
                                                        <input type="text" class="doc-vld-name-2-1" minlength="10"
                                                               placeholder="输入所在学院" name="xueyuan" required/>
                                                    </div>

                                                    <div class="am-form-group">
                                                        <label for="doc-vld-name-2-1"
                                                               style="margin-left:-410px;">手机号：</label>
                                                        <input type="text" class="doc-vld-name-2-1" minlength="11"
                                                               placeholder="输入手机号" name="phone" required/>
                                                    </div>

                                                    <div class="am-form-group">
                                                        <label for="doc-vld-name-2-1"
                                                               style="margin-left:-410px;">QQ/微信：</label>
                                                        <input type="text" class="doc-vld-name-2-1" minlength="11"
                                                               placeholder="输入QQ/微信" name="qq" required/>
                                                    </div>

                                                    <div class="am-form-group">
                                                        <label for="doc-select-1-1"
                                                               style="margin-left:-410px;">兴趣方向</label>
                                                        <select id="doc-select-1-1" name="team" required>
                                                            <option value="">-=请选择一项=-</option>
                                                            <option value="前端">前端</option>
                                                            <option value="数据库">数据库</option>
                                                            <option value="运维">运维</option>
                                                            <option value="测试">测试</option>
                                                            <option value="java">java</option>
                                                            <option value="php">php</option>
                                                            <option value="python">python</option>
                                                        </select>
                                                        <span class="am-form-caret"></span>
                                                    </div>
                                                </fieldset>
                                                <div class="am-modal-footer">
                                                    <button class="am-modal-btn" onclick="addNewcomer()" type="button">添加</button>
                                                    <button class="am-modal-btn cancel" data-dismiss="modal">取消</button>
                                                </div>

                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--添加信息 end--%>

                    <%--分组查询信息 start--%>
                    <div class="am-u-sm-12 am-u-md-3">
                        <div class="am-form-group">
                            <select data-am-selected="{btnSize: 'sm'}">
                                <option value="option1">专业类别</option>
                                <option value="option2">UI</option>
                                <option value="option3">PHP</option>
                                <option value="option3">JAVA</option>
                                <option value="option3">Python</option>
                                <option value="option3">数据库</option>
                                <option value="option3">运维</option>
                                <option value="option3">测试</option>
                            </select>
                        </div>
                    </div>
                    <%--分组查询信息 end--%>

                    <%--导出excel start--%>
                    <div class="am-u-sm-12 am-u-md-3">
                        <div class="am-input-group am-input-group-sm">
                            <span class="am-input-group-btn">
                            <button class="am-btn  am-btn-default am-btn-success tpl-am-btn-success am-icon-search" onclick="exportNewcomer()"
                                    type="button">导出</button>
                            </span>
                        </div>
                    </div>
                </div>
                <%--导出excel end--%>

                <%--输出表格--%>
                <div class="am-g">
                    <div class="am-u-sm-12">
                        <form class="am-form">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <th class="table-check"><input type="checkbox" class="tpl-table-fz-check"></th>
                                    <th class="table-id">id</th>
                                    <th class="table-title">小组</th>
                                    <th class="table-title">姓名</th>
                                    <th class="table-title">学号</th>
                                    <th class="table-title">年级</th>
                                    <th class="table-title">专业</th>
                                    <th class="table-title">学院</th>
                                    <th class="table-title">电话</th>
                                    <th class="table-title">QQ/微信</th>
                                    <th class="table-set">功能</th>
                                </tr>
                                </thead>
                                <tbody id="tb">
                                <c:forEach items="${pageInfo.list}" var="Newcomer">
                                    <tr>
                                        <td><input type="checkbox"></td>
                                        <td>${Newcomer.id}</td>
                                        <td><a href="#">${Newcomer.team}</a></td>
                                        <td>${Newcomer.name}</td>
                                        <td>${Newcomer.xuehao}</td>
                                        <td>${Newcomer.nianji}</td>
                                        <td>${Newcomer.zhuanye}</td>
                                        <td>${Newcomer.xueyuan}</td>
                                        <td>${Newcomer.phone}</td>
                                        <td>${Newcomer.qq}</td>
                                        <td>
                                            <div class="am-btn-toolbar">
                                                <div class="am-btn-group am-btn-group-xs">
                                                    <input type="button"
                                                           class="am-btn am-btn-default am-btn-xs am-text-secondary"
                                                           value="修改" onclick="showNewcomerModal(${Newcomer.id})">
                                                    <input type="button"
                                                           class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"
                                                           value="删除" onclick="showDeleteModal(${Newcomer.id})">
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>

                            <%--分页--%>
                            <div class="am-cf">

                                <div class="am-fr">
                                    <ul id="pagination" class="am-pagination tpl-pagination">

                                    </ul>
                                </div>
                            </div>
                            <%--分页--%>
                            <hr>
                        </form>
                    </div>
                </div>
            </div>
            <div class="tpl-alert"></div>
        </div>
    </div>
</div>

<!-- 修改 start -->
<div class="modal fade" tabindex="-1" id="showNewcomerModal">
    <!-- 窗口声明 -->
    <div class="modal-dialog modal-lg">
        <!-- 内容声明 -->
        <div class="modal-content">
            <!-- 头部、主体、脚注 -->
            <div class="modal-header">
                <button class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">修改</h4>
            </div>

            <div class="modal-body text-center row">
                <div class="col-sm-8">
                    <input type="hidden" name="pageNum" value="${pageInfo.pageNum}">
                    <div class="row text-right">
                        <label for="newcomerNum" class="col-sm-4 control-label">id：</label>
                        <div class="col-sm-4">
                            <input type="number" class="form-control" id="newcomerNum" name="newcomerNum"
                                   readonly>
                        </div>
                    </div>
                    <div class="row text-right">
                        <label for="newcomerName" class="col-sm-4 control-label">姓名：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="newcomerName">
                        </div>
                    </div>
                    <div class="row text-right">
                        <label for="newcomerXuehao" class="col-sm-4 control-label">学号：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="newcomerXuehao">
                        </div>
                    </div>
                    <div class="row text-right">
                        <label for="newcomerNianji" class="col-sm-4 control-label">年级：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="newcomerNianji">
                        </div>
                    </div>
                    <div class="row text-right">
                        <label for="newcomerZhuanye" class="col-sm-4 control-label">专业：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="newcomerZhuanye">
                        </div>
                    </div>
                    <div class="row text-right">
                        <label for="newcomerXueyuan" class="col-sm-4 control-label">学院：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="newcomerXueyuan">
                        </div>
                    </div>
                    <div class="row text-right">
                        <label for="newcomerTeam" class="col-sm-4 control-label">小组：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="newcomerTeam">
                        </div>
                    </div>
                    <div class="row text-right">
                        <label for="newcomerPhone" class="col-sm-4 control-label">电话：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="newcomerPhone">
                        </div>
                    </div>
                    <div class="row text-right">
                        <label for="newcomerQQ" class="col-sm-4 control-label">QQ/微信：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="newcomerQQ">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-warning updateProType" onclick="modifyNewcomer()">修改</button>
                    <button class="btn btn-primary cancel" data-dismiss="modal">取消</button>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- 修改 end -->

<!-- 确认删除 start -->
<div class="modal fade" tabindex="-1" id="deleteNewcomerModal">
    <!-- 窗口声明 -->
    <div class="modal-dialog">
        <!-- 内容声明 -->
        <div class="modal-content">
            <!-- 头部、主体、脚注 -->
            <div class="modal-header">
                <button class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">提示消息</h4>
            </div>
            <div class="modal-body text-center">
                <h4>确认要删除吗？</h4>
            </div>
            <div class="modal-footer">
                <input type="hidden" id="deleteNewcomerId">
                <button class="btn btn-primary updateProType" data-dismiss="modal" onclick="deleteNewcomer()">删除
                </button>
                <button class="btn btn-primary cancel" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>
<!-- 确认删除 end -->


</body>

</html>