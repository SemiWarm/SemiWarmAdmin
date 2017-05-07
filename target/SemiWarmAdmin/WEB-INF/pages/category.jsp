<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: alibct
  Date: 2017/3/9
  Time: 下午2:14
  Desc: 半暖商城-类目管理
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Long administratorId = (Long) session.getAttribute("administratorId");
    String administratorName = (String) session.getAttribute("administratorName");
    Integer privilegeLevel = (Integer) session.getAttribute("privilegeLevel");
    if (null == administratorId) {
        response.sendRedirect(request.getContextPath() + "/signIn");
    }
%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/static/images/favicon.ico">
    <title>半暖商城-类目管理</title>
    <%--Tell the browser to be responsive to screen width--%>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/fileinput.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/theme.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/ionicons.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/AdminLTE.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/sweetalert.css">
    <%--
    AdminLTE Skins. We have chosen the skin-blue for this starter
    page. However, you can choose any other skin. Make sure you
    apply the skin class to the body tag so the changes take effect.
    --%>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/skin-red-light.min.css">
    <%--HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries--%>
    <%--WARNING: Respond.js doesn't work if you view the page via file://--%>
    <%--[if lt IE 9]--%>
    <%--<script src="../../static/js/html5shiv.min.js"></script>--%>
    <%--<script src="../../static/js/respond.min.js"></script>--%>
    <%--[endif]--%>
    <style>
        .vertical-align {
            display: flex;
            align-items: center;
        }

        li.disabled:hover, li.disabled:focus {
            /*解决li标签设为disabled后还能点击的bug*/
            pointer-events: none;
            cursor: not-allowed;
            text-decoration: none;
            background-color: transparent;
            opacity: 0.7;
        }
    </style>
</head>
<%--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
--%>
<body class="hold-transition skin-red-light sidebar-mini">
<div class="wrapper">
    <%--顶部导航条--%>
    <header class="main-header">
        <a class="logo" href="#">
            <span class="logo-mini"><b>半</b>暖</span>
            <span class="logo-lg"><b>S</b>emi<b>W</b>arm</span>
        </a>

        <nav class="navbar navbar-static-top" role="navigation">
            <a class="sidebar-toggle" data-toggle="offcanvas" href="#" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li class="dropdown user user-menu">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <img class="user-image" src="<%=request.getContextPath()%>/static/images/user_logo.png"
                                 alt="User Image">
                            <span class="hidden-xs"><%=administratorName%></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="user-header" style="color: white">
                                <img class="img-circle" src="<%=request.getContextPath()%>/static/images/user_logo.png"
                                     alt="User Image">
                                <p style="color: white">
                                    <%=administratorName%>
                                </p>
                                <small>权限等级</small>
                                <%=privilegeLevel%>
                            </li>
                            <li class="user-body">
                                <div class="row">
                                    <div class="col-xs-4">
                                        <%--消息图标--%>
                                        <ul class="nav navbar-nav">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-envelope-o"></i>
                                                    <span class="label label-success">4</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-xs-4">
                                        <%--通知图标--%>
                                        <ul class="nav navbar-nav">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-bell-o"></i>
                                                    <span class="label label-warning">10</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-xs-4">
                                        <%--任务图标--%>
                                        <ul class="nav navbar-nav">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-flag-o"></i>
                                                    <span class="label label-danger">9</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="user-footer">
                                <div class="pull-left">
                                    <%--设置界面--%>
                                    <a class="btn btn-default btn-flat" href="#">设 置</a>
                                </div>
                                <div class="pull-right">
                                    <%--退出登录按钮--%>
                                    <a class="btn btn-default btn-flat" href="<%=request.getContextPath()%>/signIn">退
                                        出</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <%--左侧导航栏--%>
    <aside class="main-sidebar">
        <section class="sidebar">
            <div class="user-panel">
                <div class="pull-left image">
                    <img class="img-circle" src="<%=request.getContextPath()%>/static/images/user_logo.png"
                         alt="User Image">
                </div>
                <div class="pull-left info">
                    <p><%=administratorName%>
                    </p>
                    <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
                </div>
            </div>
            <%--搜索表单--%>
            <form class="sidebar-form" action="#" method="get">
                <div class="input-group">
                    <input class="form-control" name="txtSearch" type="text" title="请输入搜索内容">
                    <span class="input-group-btn">
                        <button class="btn btn-flat" id="btnSearch" name="btnSearch" type="submit"><i
                                class="fa fa-search"></i></button>
                    </span>
                </div>
            </form>
            <ul class="sidebar-menu">
                <%--主页--%>
                <li>
                    <a href="<%=request.getContextPath()%>/main">
                        <i class="fa fa-home" style="font-size: larger"></i>
                        <span>主页</span>
                    </a>
                </li>
                <%--图片管理模块--%>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-file-image-o" style="font-size: larger"></i>
                        <span>图片管理</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="<%=request.getContextPath()%>/image">
                                <i class="fa fa-plus-square"></i>
                                <span> 图片管理</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-pencil-square"></i>
                                <span> 图片编辑</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <%--Splash管理模块--%>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-picture-o"></i>
                        <span> Splash管理</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="#">
                                <i class="fa fa-plus-square"></i>
                                <span> Splash管理</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-pencil-square"></i>
                                <span> Splash编辑</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <%--用户管理模块--%>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-users"></i>
                        <span>用户管理</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="#">
                                <i class="fa fa-plus-square"></i>
                                <span> 用户管理</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-pencil-square"></i>
                                <span> 用户编辑</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <%--商品管理模块--%>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-gift" style="font-size: larger"></i>
                        <span>商品管理</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="<%=request.getContextPath()%>/goods">
                                <i class="fa fa-plus-square"></i>
                                <span> 商品管理</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-pencil-square"></i>
                                <span> 商品编辑</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <%--类目管理--%>
                <li class="treeview active">
                    <a href="#">
                        <i class="fa fa-th"></i>
                        <span>类目管理</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li class="active">
                            <a href="<%=request.getContextPath()%>/category">
                                <i class="fa fa-plus-square"></i>
                                <span> 类目管理</span>
                            </a>
                        </li>
                        <li>
                            <a href="<%=request.getContextPath()%>/categoryEdit">
                                <i class="fa fa-pencil-square"></i>
                                <span> 类目编辑</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </section>
    </aside>

    <%--主要内容区--%>
    <div class="content-wrapper">
        <section class="content-header">
            <h1>
                主 页
                <small>类目管理</small>
            </h1>
            <ol class="breadcrumb">
                <li>
                    <a href="<%=request.getContextPath()%>/main"><i class="fa fa-home"></i> 主页</a>
                </li>
                <li class="active">类目管理</li>
            </ol>
        </section>

        <!-- 内容区域 -->
        <section class="content">

            <!-- 页面内容 -->
            <br>
            <%--增加类目--%>
            <div class="row">
                <div class="col-lg-12">
                    <div class="box box-success">
                        <div class="box-header with-border">
                            <h3 class="box-title">增加类目</h3>
                            <div class="box-tools pull-right">
                                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                </button>
                            </div><!-- /.box-tools -->
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            <%--类目表单--%>
                            <form class="form-horizontal" id="addCategoryForm" enctype="multipart/form-data">
                                <%--类目名称--%>
                                <div class="row form-group">
                                    <label for="categoryName"
                                           class="col-md-2 control-label col-md-offset-2">类目名称</label>
                                    <div class="col-md-6">
                                        <input class="form-control" id="categoryName" name="categoryName" type="text"
                                               placeholder="类目名称" required>
                                    </div>
                                </div>
                                <%--类目标题--%>
                                <div class="row form-group">
                                    <label for="categoryTitle"
                                           class="col-md-2 control-label col-md-offset-2">类目标题</label>
                                    <div class="col-md-6">
                                        <input class="form-control" id="categoryTitle" name="categoryTitle" type="text"
                                               placeholder="类目标题" required>
                                    </div>
                                </div>
                                <%--类目描述--%>
                                <div class="row form-group">
                                    <label for="categoryDesc"
                                           class="col-md-2 control-label col-md-offset-2">类目描述</label>
                                    <div class="col-md-6">
                                        <textarea class="form-control" id="categoryDesc" name="categoryDesc" rows="2"
                                                  placeholder="类目描述" required></textarea>
                                    </div>
                                </div>
                                <%--Banner访问地址--%>
                                <div class="row form-group">
                                    <label for="categoryBanner" class="col-md-2 control-label col-md-offset-2">Banner访问地址</label>
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <input class="form-control" id="categoryBanner" name="categoryBanner"
                                                   type="text"
                                                   placeholder="http://www.semiwarm.cn/admin/upload/images/categoryBanner/..."
                                                   disabled
                                                   required>
                                            <span class="input-group-btn">
                                                <button class="btn btn-primary" data-toggle="modal"
                                                        data-target="#categorySelectModal"
                                                        type="button">
                                                    <i class="glyphicon glyphicon-save" style="font-size: larger"></i>
                                                     Banner
                                                </button>
                                            </span>
                                            <!-- Modal -->
                                            <div class="modal fade" id="categorySelectModal" tabindex="-1" role="dialog"
                                                 aria-labelledby="categorySelectModalLabel">
                                                <div class="modal-dialog modal-lg" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close"><span
                                                                    aria-hidden="true">&times;</span></button>
                                                            <h4 class="modal-title" id="categorySelectModalLabel">
                                                                请选择类目Banner</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <%--图片信息--%>
                                                            <div id="categoryBannerContainer">

                                                            </div>
                                                            <nav aria-label="...">
                                                                <ul class="pager">
                                                                    <li id="categoryBannerPageIndicatorPrevious"
                                                                        class="previous">
                                                                        <a href="javascript:void(0);"><span
                                                                                aria-hidden="true">&larr;</span>&nbsp;上一页</a>
                                                                    </li>
                                                                    <li id="categoryBannerPageIndicatorNext"
                                                                        class="next"><a
                                                                            href="javascript:void(0);">下一页&nbsp;<span
                                                                            aria-hidden="true">&rarr;</span></a>
                                                                    </li>
                                                                </ul>
                                                            </nav>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button class="btn btn-default" type="button"
                                                                    data-dismiss="modal">取 消
                                                            </button>
                                                            <button class="btn btn-primary"
                                                                    id="btnSelectCategoryBannerConfirm"
                                                                    name="btnConfirm" type="button">确 定
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%--Banner本地上传--%>
                                <div class="row form-group">
                                    <label for="categoryBannerUploader" class="col-md-2 control-label col-md-offset-2">Banner本地上传</label>
                                    <div class="col-md-6">
                                        <input class="form-control file-loading" id="categoryBannerUploader"
                                               name="image" type="file">
                                    </div>
                                </div>
                                <%--footer--%>
                                <div class="row">
                                    <button class="btn btn-warning col-md-2 col-md-offset-4" id="btnCategoryReset"
                                            name="btnCategoryReset" type="reset">重置
                                    </button>
                                    <button class="btn btn-primary col-md-2 col-md-offset-2" id="btnCategoryAdd"
                                            name="btnCategoryAdd" type="button">添加
                                    </button>
                                </div>
                            </form>
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->
                </div>
            </div>

            <%--增加子类目--%>
            <div class="row">
                <div class="col-lg-12">
                    <div class="box box-success collapsed-box">
                        <div class="box-header with-border">
                            <h3 class="box-title">增加子类目</h3>
                            <div class="box-tools pull-right">
                                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div><!-- /.box-tools -->
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            <form class="form-horizontal" id="addSubCategoryForm" enctype="multipart/form-data">
                                <!-- Category -->
                                <div class="row form-group">
                                    <label for="category"
                                           class="col-md-2 col-md-offset-2 control-label">类目选择</label>
                                    <div class="col-lg-6">
                                        <select class="selectpicker form-control" id="category" title="类目选择">
                                            <c:forEach items="${categories}" var="category">
                                                <option value="${category.categoryId}"
                                                        data-content="<span class='glyphicon glyphicon-check'></span>&nbsp;${category.categoryName}&nbsp;&nbsp;<span class='glyphicon glyphicon-menu-right'></span>&nbsp;${category.categoryDesc}">
                                                        ${category.categoryName}
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <!-- subCategoryName -->
                                <div class="row form-group">
                                    <label for="subCategoryName"
                                           class="col-md-2 col-md-offset-2 control-label">子类目名称</label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" id="subCategoryName" placeholder="子类目名称"
                                               required>
                                    </div>
                                </div>
                                <!--Banner访问地址-->
                                <div class="row form-group">
                                    <label for="subCategoryBanner" class="col-md-2 col-md-offset-2 control-label">Banner访问地址</label>
                                    <div class="col-lg-6">
                                        <div class="input-group">
                                            <input class="form-control" id="subCategoryBanner" name="subCategoryBanner"
                                                   type="text"
                                                   placeholder="http://www.semiwarm.cn/admin/upload/images/subCategoryBanner/..."
                                                   disabled
                                                   required>
                                            <span class="input-group-btn">
                                                <button class="btn btn-primary" data-toggle="modal"
                                                        data-target="#subCategorySelectModal"
                                                        type="button">
                                                    <i class="glyphicon glyphicon-save" style="font-size: larger"></i>
                                                    Banner
                                                </button>
                                            </span>
                                            <!-- Modal -->
                                            <div class="modal fade" id="subCategorySelectModal" tabindex="-1"
                                                 role="dialog"
                                                 aria-labelledby="subCategorySelectModalLabel">
                                                <div class="modal-dialog modal-lg" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close"><span
                                                                    aria-hidden="true">&times;</span></button>
                                                            <h4 class="modal-title" id="subCategorySelectModalLabel">
                                                                请选择子类目Banner</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div id="subCategoryBannerContainer">

                                                            </div>
                                                            <nav aria-label="...">
                                                                <ul class="pager">
                                                                    <li id="subCategoryBannerPageIndicatorPrevious"
                                                                        class="previous">
                                                                        <a href="javascript:void(0);"><span
                                                                                aria-hidden="true">&larr;</span>&nbsp;上一页</a>
                                                                    </li>
                                                                    <li id="subCategoryBannerPageIndicatorNext"
                                                                        class="next"><a
                                                                            href="javascript:void(0);">下一页&nbsp;<span
                                                                            aria-hidden="true">&rarr;</span></a>
                                                                    </li>
                                                                </ul>
                                                            </nav>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button class="btn btn-default" type="button"
                                                                    data-dismiss="modal">取 消
                                                            </button>
                                                            <button class="btn btn-primary"
                                                                    id="btnSelectSubCategoryBannerConfirm"
                                                                    name="btnSelectSubCategoryBannerConfirm"
                                                                    type="button">确 定
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--Banner本地上传-->
                                <div class="row form-group">
                                    <label for="subCategoryBannerUploader"
                                           class="col-md-2 col-md-offset-2 control-label">Banner本地上传</label>
                                    <div class="col-lg-6">
                                        <input class="form-control file-loading" id="subCategoryBannerUploader"
                                               name="image" type="file">
                                    </div>
                                </div>

                                <!-- subCategoryTitle -->
                                <div class="row form-group">
                                    <label for="subCategoryTitle"
                                           class="col-md-2 col-md-offset-2 control-label">子类目标题</label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" id="subCategoryTitle"
                                               placeholder="子类目标题" required>
                                    </div>
                                </div>
                                <!-- subCategoryDesc -->
                                <div class="row form-group">
                                    <label for="subCategoryDesc"
                                           class="col-md-2 col-md-offset-2 control-label">子类目描述</label>
                                    <div class="col-lg-6">
                                        <textarea class="form-control" rows="3" id="subCategoryDesc" placeholder="子类目描述"
                                                  required></textarea>
                                    </div>
                                </div>
                                <!--子类目图标访问地址-->
                                <div class="row form-group">
                                    <label for="subCategoryIcon" class="col-md-2 col-md-offset-2 control-label">子类目图标访问地址</label>
                                    <div class="col-lg-6">
                                        <div class="input-group">
                                            <input class="form-control" id="subCategoryIcon" name="subCategoryIcon"
                                                   type="text"
                                                   placeholder="http://www.semiwarm.cn/admin/upload/images/subCategoryIcon/..."
                                                   disabled
                                                   required>
                                            <span class="input-group-btn">
                                                <button class="btn btn-primary" data-toggle="modal"
                                                        data-target="#subCategoryIconSelectModal"
                                                        type="button">
                                                    <i class="glyphicon glyphicon-save" style="font-size: larger"></i>
                                                    Icon
                                                </button>
                                            </span>
                                            <!-- Modal -->
                                            <div class="modal fade" id="subCategoryIconSelectModal" tabindex="-1"
                                                 role="dialog"
                                                 aria-labelledby="subCategoryIconSelectModalLabel">
                                                <div class="modal-dialog modal-lg" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close"><span
                                                                    aria-hidden="true">&times;</span></button>
                                                            <h4 class="modal-title"
                                                                id="subCategoryIconSelectModalLabel">
                                                                请选择子类目图标</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div id="subCategoryIconContainer">

                                                            </div>
                                                            <nav aria-label="...">
                                                                <ul class="pager">
                                                                    <li id="iconPageIndicatorPrevious" class="previous">
                                                                        <a href="javascript:void(0);"><span
                                                                                aria-hidden="true">&larr;</span>&nbsp;上一页</a>
                                                                    </li>
                                                                    <li id="iconPageIndicatorNext" class="next"><a
                                                                            href="javascript:void(0);">下一页&nbsp;<span
                                                                            aria-hidden="true">&rarr;</span></a>
                                                                    </li>
                                                                </ul>
                                                            </nav>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button class="btn btn-default" type="button"
                                                                    data-dismiss="modal">取 消
                                                            </button>
                                                            <button class="btn btn-primary" id="btnSelectIconConfirm"
                                                                    name="btnSelectIconConfirm" type="button">确 定
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--子类目图标本地上传-->
                                <div class="row form-group">
                                    <label for="subCategoryIconUploader"
                                           class="col-md-2 col-md-offset-2 control-label">子类目图标本地上传</label>
                                    <div class="col-lg-6">
                                        <input class="form-control file-loading" id="subCategoryIconUploader"
                                               name="image" type="file">
                                    </div>
                                </div>
                                <!-- subCategoryTags -->
                                <div class="row form-group">
                                    <label for="subCategoryTags"
                                           class="col-md-2 col-md-offset-2 control-label">子类目标签</label>
                                    <div class="col-lg-6">
                                        <select class="selectpicker form-control" id="subCategoryTags" multiple
                                                title="子类目标签"
                                                data-max-options="2">
                                            <option value="上新"
                                                    data-content="<span class='label label-success'>上新</span>">上新
                                            </option>
                                            <option value="热门"
                                                    data-content="<span class='label label-danger'>热门</span>">热门
                                            </option>
                                            <option value="人气"
                                                    data-content="<span class='label label-warning'>人气</span>">人气
                                            </option>
                                            <option value="推荐" data-content="<span class='label label-info'>推荐</span>">
                                                推荐
                                            </option>
                                            <option value="促销"
                                                    data-content="<span class='label label-danger'>促销</span>">促销
                                            </option>
                                        </select>
                                    </div>
                                </div>

                                <%--footer--%>
                                <div class="row">
                                    <button class="btn btn-warning col-md-2 col-md-offset-4" id="btnSubCategoryReset"
                                            name="btnSubCategoryReset" type="reset">重置
                                    </button>
                                    <button class="btn btn-primary col-md-2 col-md-offset-2" id="btnSubCategoryAdd"
                                            name="btnSubCategoryAdd" type="button">添加
                                    </button>
                                </div>
                            </form>
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->
                </div>
            </div>

        </section>
    </div>
</div>
<%--引用文件--%>
<script src="<%=request.getContextPath()%>/static/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-select.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/fileinput.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/theme.js"></script>
<script src="<%=request.getContextPath()%>/static/js/zh.js"></script>
<script src="<%=request.getContextPath()%>/static/js/app.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/sweetalert.min.js"></script>
<script type="text/javascript">

    // 类目
    var addCategoryForm = $('#addCategoryForm');
    var categoryName = $('#categoryName');
    var categoryTitle = $('#categoryTitle');
    var categoryDesc = $('#categoryDesc');
    var categoryBanner = $('#categoryBanner');

    var categoryBannersPageInfo;
    var subCategoryBannersPageInfo;
    var subCategoryIconsPageInfo;

    var categorySelectModal = $('#categorySelectModal');
    var categoryBannerContainer = $('#categoryBannerContainer');
    var categoryBannerPageIndicatorPrevious = $('#categoryBannerPageIndicatorPrevious');
    var categoryBannerPageIndicatorNext = $('#categoryBannerPageIndicatorNext');
    var btnSelectCategoryBannerConfirm = $('#btnSelectCategoryBannerConfirm');

    var categoryBannerUploader = $('#categoryBannerUploader');

    var btnCategoryReset = $('#btnCategoryReset');
    var btnCategoryAdd = $('#btnCategoryAdd');


    // ***********************我是分割线***********************

    // 子类目
    var addSubCategoryForm = $('#addSubCategoryForm');

    // 类目选择
    var category = $('#category');
    // 子类目名称
    var subCategoryName = $('#subCategoryName');
    // 子类目Banner
    var subCategoryBanner = $('#subCategoryBanner');
    // 子类目标题
    var subCategoryTitle = $('#subCategoryTitle');
    // 子类目描述
    var subCategoryDesc = $('#subCategoryDesc');
    // 子类目图标
    var subCategoryIcon = $('#subCategoryIcon');
    // 子类目标签
    var subCategoryTags = $('#subCategoryTags');

    var subCategorySelectModal = $('#subCategorySelectModal');

    var btnSelectSubCategoryBannerConfirm = $('#btnSelectSubCategoryBannerConfirm');

    var subCategoryIconSelectModal = $('#subCategoryIconSelectModal');

    var btnSelectIconConfirm = $('#btnSelectIconConfirm');

    var btnSubCategoryAdd = $('#btnSubCategoryAdd');

    var subCategoryBannerPageIndicatorPrevious = $('#subCategoryBannerPageIndicatorPrevious');
    var subCategoryBannerPageIndicatorNext = $('#subCategoryBannerPageIndicatorNext');

    var iconPageIndicatorPrevious = $('#iconPageIndicatorPrevious');
    var iconPageIndicatorNext = $('#iconPageIndicatorNext');

    var subCategoryBannerContainer = $('#subCategoryBannerContainer');
    var subCategoryIconContainer = $('#subCategoryIconContainer');


    var subCategoryBannerUploader = $('#subCategoryBannerUploader');
    var subCategoryIconUploader = $('#subCategoryIconUploader');

    $(function () {
        // 首先进行Ajax请求获取所有categoryBanner类型的图片信息
        $.ajax({
            type: 'get',
            url: '<%=request.getContextPath()%>/categoryBanner/images/pageNum/1/pageSize/2',
            async: true,
            success: function (pageInfo) {
                categoryBannersPageInfo = pageInfo;
                categoryBannerPageIndicatorPrevious.addClass("disabled");
                if (categoryBannersPageInfo["hasNextPage"] === false) {
                    categoryBannerPageIndicatorNext.addClass("disabled");
                }
                var categoryBannerHtml = "";
                $.each(categoryBannersPageInfo["list"], function (i, item) {
                    // 动态生成图片信息
                    categoryBannerHtml += "<div class='row vertical-align'>" +
                        "<div class='col-md-8'>" +
                        "<div class='thumbnail'>" +
                        "<img src='" + item["imageAccessPath"] + "' alt='" + item["imageOriginalName"] + "'>" +
                        "</div>" +
                        "</div>" +
                        "<div class='col-md-4'>" +
                        "<div class='list-group'>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-success'>是否选择</label>" +
                        "&nbsp;" +
                        "<label><input name='isSelected' type='radio' value='" + item["imageAccessPath"] + "'></label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片名称</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageOriginalName"] + "</label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片类型</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageType"] + "</label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片大小</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageSize"] + "</label>" +
                        "</div>" +
                        "</div>" +
                        "</div>" +
                        "</div>";
                });
                categoryBannerContainer.html(categoryBannerHtml);
            },
            error: function (errorMessage) {
                console.log(errorMessage);
            }
        });

        $.ajax({
            type: 'get',
            url: '<%=request.getContextPath()%>/subCategoryBanner/images/pageNum/1/pageSize/2',
            async: true,
            success: function (pageInfo) {
                subCategoryBannersPageInfo = pageInfo;
                subCategoryBannerPageIndicatorPrevious.addClass("disabled");
                if (subCategoryBannersPageInfo["hasNextPage"] === false) {
                    subCategoryBannerPageIndicatorNext.addClass("disabled");
                }
                var subCategoryBannerHtml = "";
                $.each(subCategoryBannersPageInfo["list"], function (i, item) {
                    // 动态生成图片信息
                    subCategoryBannerHtml += "<div class='row vertical-align'>" +
                        "<div class='col-md-8'>" +
                        "<div class='thumbnail'>" +
                        "<img src='" + item["imageAccessPath"] + "' alt='" + item["imageOriginalName"] + "'>" +
                        "</div>" +
                        "</div>" +
                        "<div class='col-md-4'>" +
                        "<div class='list-group'>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-success'>是否选择</label>" +
                        "&nbsp;" +
                        "<label><input name='isSelected' type='radio' value='" + item["imageAccessPath"] + "'></label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片名称</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageOriginalName"] + "</label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片类型</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageType"] + "</label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片大小</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageSize"] + "</label>" +
                        "</div>" +
                        "</div>" +
                        "</div>" +
                        "</div>";
                });
                subCategoryBannerContainer.html(subCategoryBannerHtml);
            },
            error: function (errorMessage) {
                console.log(errorMessage);
            }
        });

        $.ajax({
            type: 'get',
            url: '<%=request.getContextPath()%>/subCategoryIcon/images/pageNum/1/pageSize/2',
            async: true,
            success: function (pageInfo) {
                subCategoryIconsPageInfo = pageInfo;
                iconPageIndicatorPrevious.addClass("disabled");
                if (subCategoryIconsPageInfo["hasNextPage"] === false) {
                    iconPageIndicatorNext.addClass("disabled");
                }
                var subCategoryIconHtml = "";
                $.each(subCategoryIconsPageInfo["list"], function (i, item) {
                    // 动态生成图片信息
                    subCategoryIconHtml += "<div class='row vertical-align'>" +
                        "<div class='col-md-8'>" +
                        "<div class='thumbnail'>" +
                        "<img src='" + item["imageAccessPath"] + "' alt='" + item["imageOriginalName"] + "'>" +
                        "</div>" +
                        "</div>" +
                        "<div class='col-md-4'>" +
                        "<div class='list-group'>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-success'>是否选择</label>" +
                        "&nbsp;" +
                        "<label><input name='isSelected' type='radio' value='" + item["imageAccessPath"] + "'></label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片名称</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageOriginalName"] + "</label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片类型</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageType"] + "</label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片大小</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageSize"] + "</label>" +
                        "</div>" +
                        "</div>" +
                        "</div>" +
                        "</div>";
                });
                subCategoryIconContainer.html(subCategoryIconHtml);
            },
            error: function (errorMessage) {
                console.log(errorMessage);
            }
        });
    });

    categoryBannerUploader.fileinput({
        language: 'zh', // 设置语言
        uploadUrl: '<%=request.getContextPath()%>/upload/categoryBanner/image', // 上传地址
        allowedFileExtensions: ['jpg', 'png', 'gif', 'jpeg'], // 允许上传的文件后缀
        showRemove: true, // 是否显示移除按钮
        removeClass: 'btn btn-warning', // 移除按钮主题
        showUpload: false, // 是否显示上传按钮
        showCaption: true, // 是否显示标题
        dropZoneEnabled: false,
        minFileCount: 1, // 最少文件数量
        maxFileCount: 1, // 最多文件数量
        enctype: 'multipart/form-data'
    });

    subCategoryBannerUploader.fileinput({
        language: 'zh', // 设置语言
        uploadUrl: '<%=request.getContextPath()%>/upload/subCategoryBanner/image', // 上传地址
        allowedFileExtensions: ['jpg', 'png', 'gif', 'jpeg'], // 允许上传的文件后缀
        showRemove: true, // 是否显示移除按钮
        removeClass: 'btn btn-warning', // 移除按钮主题
        showUpload: false, // 是否显示上传按钮
        showCaption: true, // 是否显示标题
        dropZoneEnabled: false,
        minFileCount: 1, // 最少文件数量
        maxFileCount: 1, // 最多文件数量
        enctype: 'multipart/form-data'
    });

    subCategoryIconUploader.fileinput({
        language: 'zh', // 设置语言
        uploadUrl: '<%=request.getContextPath()%>/upload/subCategoryIcon/image', // 上传地址
        allowedFileExtensions: ['jpg', 'png', 'gif', 'jpeg'], // 允许上传的文件后缀
        showRemove: true, // 是否显示移除按钮
        removeClass: 'btn btn-warning', // 移除按钮主题
        showUpload: false, // 是否显示上传按钮
        showCaption: true, // 是否显示标题
        dropZoneEnabled: false,
        minFileCount: 1, // 最少文件数量
        maxFileCount: 1, // 最多文件数量
        enctype: 'multipart/form-data'
    });

    // 类目Banner上传完成后的回调
    categoryBannerUploader.on('fileuploaded', function (event, data) {
        var response = data.response;
        categoryBanner.val(response["url"]);
    });

    // 子类目Banner上传后的回调
    subCategoryBannerUploader.on('fileuploaded', function (event, data) {
        var response = data.response;
        subCategoryBanner.val(response["url"]);
    });

    // 子类目图标上传后的回调
    subCategoryIconUploader.on('fileuploaded', function (event, data) {
        var response = data.response;
        subCategoryIcon.val(response["url"]);
    });

    // 类目banner上一页按钮
    categoryBannerPageIndicatorPrevious.bind('click', function () {
        console.log(categoryBannersPageInfo["hasPreviousPage"]);
        categoryBannerPageIndicatorNext.removeClass("disabled");
        $.ajax({
            type: 'get',
            url: "<%=request.getContextPath()%>/categoryBanner/images/pageNum/" + categoryBannersPageInfo["prePage"] + "/pageSize/2",
            async: false,
            success: function (pageInfo) {
                categoryBannersPageInfo = pageInfo;
                if (categoryBannersPageInfo["hasPreviousPage"] === false) {
                    categoryBannerPageIndicatorPrevious.addClass("disabled");
                }
                var categoryBannerHtml = "";
                $.each(categoryBannersPageInfo["list"], function (i, item) {
                    // 动态生成图片信息
                    categoryBannerHtml += "<div class='row vertical-align'>" +
                        "<div class='col-md-8'>" +
                        "<div class='thumbnail'>" +
                        "<img src='" + item["imageAccessPath"] + "' alt='" + item["imageOriginalName"] + "'>" +
                        "</div>" +
                        "</div>" +
                        "<div class='col-md-4'>" +
                        "<div class='list-group'>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-success'>是否选择</label>" +
                        "&nbsp;" +
                        "<label><input name='isSelected' type='radio' value='" + item["imageAccessPath"] + "'></label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片名称</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageOriginalName"] + "</label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片类型</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>categoryBanner</label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片大小</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageSize"] + "</label>" +
                        "</div>" +
                        "</div>" +
                        "</div>" +
                        "</div>";
                });
                categoryBannerContainer.html("");
                categoryBannerContainer.html(categoryBannerHtml);
            },
            error: function (errorMessage) {
                console.log(errorMessage);
            }
        });
    });
    // 类目banner下一页按钮
    categoryBannerPageIndicatorNext.bind('click', function () {
        console.log(categoryBannersPageInfo["hasNextPage"]);
        categoryBannerPageIndicatorPrevious.removeClass("disabled");
        $.ajax({
            type: 'get',
            url: "<%=request.getContextPath()%>/categoryBanner/images/pageNum/" + categoryBannersPageInfo["nextPage"] + "/pageSize/2",
            async: false,
            success: function (pageInfo) {
                categoryBannersPageInfo = pageInfo;
                if (categoryBannersPageInfo["hasNextPage"] === false) {
                    categoryBannerPageIndicatorNext.addClass("disabled");
                }
                var categoryBannerHtml = "";
                $.each(categoryBannersPageInfo["list"], function (i, item) {
                    // 动态生成图片信息
                    categoryBannerHtml += "<div class='row vertical-align'>" +
                        "<div class='col-md-8'>" +
                        "<div class='thumbnail'>" +
                        "<img src='" + item["imageAccessPath"] + "' alt='" + item["imageOriginalName"] + "'>" +
                        "</div>" +
                        "</div>" +
                        "<div class='col-md-4'>" +
                        "<div class='list-group'>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-success'>是否选择</label>" +
                        "&nbsp;" +
                        "<label><input name='isSelected' type='radio' value='" + item["imageAccessPath"] + "'></label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片名称</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageOriginalName"] + "</label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片类型</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>categoryBanner</label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片大小</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageSize"] + "</label>" +
                        "</div>" +
                        "</div>" +
                        "</div>" +
                        "</div>";
                });
                categoryBannerContainer.html("");
                categoryBannerContainer.html(categoryBannerHtml);
            },
            error: function (errorMessage) {
                console.log(errorMessage);
            }
        });
    });

    // 子类目bannner上一页按钮
    subCategoryBannerPageIndicatorPrevious.bind('click', function () {
        subCategoryBannerPageIndicatorNext.removeClass("disabled");
        $.ajax({
            type: 'get',
            url: "<%=request.getContextPath()%>/subCategoryBanner/images/pageNum/" + subCategoryBannersPageInfo["prePage"] + "/pageSize/2",
            async: false,
            success: function (pageInfo) {
                subCategoryBannersPageInfo = pageInfo;
                if (subCategoryBannersPageInfo["hasPreviousPage"] === false) {
                    subCategoryBannerPageIndicatorPrevious.addClass("disabled");
                }
                var subCategoryBannerHtml = "";
                $.each(subCategoryBannersPageInfo["list"], function (i, item) {
                    // 动态生成图片信息
                    subCategoryBannerHtml += "<div class='row vertical-align'>" +
                        "<div class='col-md-8'>" +
                        "<div class='thumbnail'>" +
                        "<img src='" + item["imageAccessPath"] + "' alt='" + item["imageOriginalName"] + "'>" +
                        "</div>" +
                        "</div>" +
                        "<div class='col-md-4'>" +
                        "<div class='list-group'>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-success'>是否选择</label>" +
                        "&nbsp;" +
                        "<label><input name='isSelected' type='radio' value='" + item["imageAccessPath"] + "'></label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片名称</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageOriginalName"] + "</label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片类型</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageType"] + "</label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片大小</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageSize"] + "</label>" +
                        "</div>" +
                        "</div>" +
                        "</div>" +
                        "</div>";
                });
                subCategoryBannerContainer.html("");
                subCategoryBannerContainer.html(subCategoryBannerHtml);
            },
            error: function (errorMessage) {
                console.log(errorMessage);
            }
        });
    });
    // 子类目banner下一页按钮
    subCategoryBannerPageIndicatorNext.bind('click', function () {
        subCategoryBannerPageIndicatorPrevious.removeClass("disabled");
        $.ajax({
            type: 'get',
            url: "<%=request.getContextPath()%>/subCategoryBanner/images/pageNum/" + subCategoryBannersPageInfo["nextPage"] + "/pageSize/2",
            async: false,
            success: function (pageInfo) {
                subCategoryBannersPageInfo = pageInfo;
                if (subCategoryBannersPageInfo["hasNextPage"] === false) {
                    subCategoryBannerPageIndicatorNext.addClass("disabled");
                }
                var subCategoryBannerHtml = "";
                $.each(subCategoryBannersPageInfo["list"], function (i, item) {
                    // 动态生成图片信息
                    subCategoryBannerHtml += "<div class='row vertical-align'>" +
                        "<div class='col-md-8'>" +
                        "<div class='thumbnail'>" +
                        "<img src='" + item["imageAccessPath"] + "' alt='" + item["imageOriginalName"] + "'>" +
                        "</div>" +
                        "</div>" +
                        "<div class='col-md-4'>" +
                        "<div class='list-group'>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-success'>是否选择</label>" +
                        "&nbsp;" +
                        "<label><input name='isSelected' type='radio' value='" + item["imageAccessPath"] + "'></label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片名称</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageOriginalName"] + "</label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片类型</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageType"] + "</label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片大小</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageSize"] + "</label>" +
                        "</div>" +
                        "</div>" +
                        "</div>" +
                        "</div>";
                });
                subCategoryBannerContainer.html("");
                subCategoryBannerContainer.html(subCategoryBannerHtml);
            },
            error: function (errorMessage) {
                console.log(errorMessage);
            }
        });
    });

    // 子类目图标上一页按钮
    iconPageIndicatorPrevious.bind('click', function () {
        iconPageIndicatorNext.removeClass("disabled");
        $.ajax({
            type: 'get',
            url: "<%=request.getContextPath()%>/subCategoryIcon/images/pageNum/" + subCategoryIconsPageInfo["prePage"] + "/pageSize/2",
            async: false,
            success: function (pageInfo) {
                subCategoryIconsPageInfo = pageInfo;
                if (subCategoryIconsPageInfo["hasPreviousPage"] === false) {
                    iconPageIndicatorPrevious.addClass("disabled");
                }
                var subCategoryIconHtml = "";
                $.each(subCategoryIconsPageInfo["list"], function (i, item) {
                    // 动态生成图片信息
                    subCategoryIconHtml += "<div class='row vertical-align'>" +
                        "<div class='col-md-8'>" +
                        "<div class='thumbnail'>" +
                        "<img src='" + item["imageAccessPath"] + "' alt='" + item["imageOriginalName"] + "'>" +
                        "</div>" +
                        "</div>" +
                        "<div class='col-md-4'>" +
                        "<div class='list-group'>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-success'>是否选择</label>" +
                        "&nbsp;" +
                        "<label><input name='isSelected' type='radio' value='" + item["imageAccessPath"] + "'></label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片名称</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageOriginalName"] + "</label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片类型</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageType"] + "</label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片大小</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageSize"] + "</label>" +
                        "</div>" +
                        "</div>" +
                        "</div>" +
                        "</div>";
                });
                subCategoryIconContainer.html("");
                subCategoryIconContainer.html(subCategoryIconHtml);
            },
            error: function (errorMessage) {
                console.log(errorMessage);
            }
        });
    });
    // 子类目图标下一页按钮
    iconPageIndicatorNext.bind('click', function () {
        iconPageIndicatorPrevious.removeClass("disabled");
        $.ajax({
            type: 'get',
            url: "<%=request.getContextPath()%>/subCategoryIcon/images/pageNum/" + subCategoryIconsPageInfo["nextPage"] + "/pageSize/2",
            async: false,
            success: function (pageInfo) {
                subCategoryIconsPageInfo = pageInfo;
                if (subCategoryIconsPageInfo["hasNextPage"] === false) {
                    iconPageIndicatorNext.addClass("disabled");
                }
                var subCategoryIconHtml = "";
                $.each(subCategoryIconsPageInfo["list"], function (i, item) {
                    // 动态生成图片信息
                    subCategoryIconHtml += "<div class='row vertical-align'>" +
                        "<div class='col-md-8'>" +
                        "<div class='thumbnail'>" +
                        "<img src='" + item["imageAccessPath"] + "' alt='" + item["imageOriginalName"] + "'>" +
                        "</div>" +
                        "</div>" +
                        "<div class='col-md-4'>" +
                        "<div class='list-group'>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-success'>是否选择</label>" +
                        "&nbsp;" +
                        "<label><input name='isSelected' type='radio' value='" + item["imageAccessPath"] + "'></label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片名称</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageOriginalName"] + "</label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片类型</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageType"] + "</label>" +
                        "</div>" +
                        "<div class='list-group-item'>" +
                        "<label class='label label-danger'>图片大小</label>" +
                        "&nbsp;" +
                        "<label class='label label-default'>" + item["imageSize"] + "</label>" +
                        "</div>" +
                        "</div>" +
                        "</div>" +
                        "</div>";
                });
                subCategoryIconContainer.html("");
                subCategoryIconContainer.html(subCategoryIconHtml);
            },
            error: function (errorMessage) {
                console.log(errorMessage);
            }
        });
    });

    // 类目banner确认选择按钮
    btnSelectCategoryBannerConfirm.bind('click', function () {
        // 获取选择的图片的访问地址
        var categoryBannerUrl = $('input:radio:checked').val();
        categoryBanner.val(categoryBannerUrl);
        categorySelectModal.modal('hide');
    });

    // 子类目banner确认选择按钮
    btnSelectSubCategoryBannerConfirm.bind('click', function () {
        // 获取选择的图片的访问地址
        var subCategoryBannerUrl = $('input:radio:checked').val();
        subCategoryBanner.val(subCategoryBannerUrl);
        subCategorySelectModal.modal('hide');
    });

    // 子类目图标确认选择按钮
    btnSelectIconConfirm.bind('click', function () {
        // 获取选择的图片的访问地址
        var subCategoryIconUrl = $('input:radio:checked').val();
        subCategoryIcon.val(subCategoryIconUrl);
        subCategoryIconSelectModal.modal('hide');
    });

    // 添加类目按钮
    btnCategoryAdd.bind('click', function () {
        if (checkCategoryFormInput().length > 0) {
            sweetAlert("出错啦!", checkCategoryFormInput(), "error");
        } else {
            // 进行ajax请求
            $.ajax({
                type: 'post',
                url: '<%=request.getContextPath()%>/categories',
                data: {
                    'categoryName': categoryName.val(),
                    'categoryBanner': categoryBanner.val(),
                    'categoryTitle': categoryTitle.val(),
                    'categoryDesc': categoryDesc.val()
                },
                async: true,
                success: function (categoryResponse) {
                    if (categoryResponse["success"] === 1) {
                        sweetAlert({title: "成功信息", text: categoryResponse["message"], type: "success"}, function () {
                            addCategoryForm[0].reset();
                        });

                    } else {
                        sweetAlert("错误信息", categoryResponse["message"], "error");
                    }
                },
                error: function (errorMessage) {
                    console.log(errorMessage);
                    sweetAlert("出错啦!", "服务器异常!请求失败!", "error");
                }
            });
        }
    });

    // 添加子类目按钮
    btnSubCategoryAdd.bind('click', function () {
        if (checkSubCategoryFormInput().length > 0) {
            sweetAlert("出错啦!", checkSubCategoryFormInput(), "error");
        } else {
            // 进行ajax请求
            $.ajax({
                type: 'post',
                url: '<%=request.getContextPath()%>/subCategories',
                data: {
                    'subCategoryName': subCategoryName.val(),
                    'subCategoryBanner': subCategoryBanner.val(),
                    'subCategoryTitle': subCategoryTitle.val(),
                    'subCategoryDesc': subCategoryDesc.val(),
                    'subCategoryIcon': subCategoryIcon.val(),
                    'subCategoryTag': subCategoryTags.val().toString(),
                    'categoryId': category.val()
                },
                async: true,
                success: function (subCategoryResponse) {
                    if (subCategoryResponse["success"] === 1) {
                        sweetAlert({title: "成功信息", text: subCategoryResponse["message"], type: "success"}, function () {
                            addSubCategoryForm[0].reset();
                        });

                    } else {
                        sweetAlert("错误信息", subCategoryResponse["message"], "error");
                    }
                },
                error: function (errorMessage) {
                    console.log(errorMessage);
                    sweetAlert("出错啦!", "服务器异常!请求失败!", "error");
                }
            });
        }
    });

    // 检查类目表单函数
    var checkCategoryFormInput = function () {
        var resultInfo = "";
        if (IsNull(replaceHTML(categoryName.val()))) {
            resultInfo += "请输入类目名称!\n";
        }
        if (IsNull(replaceHTML(categoryTitle.val()))) {
            resultInfo += "请输入类目标题!\n";
        }
        if (IsNull(replaceHTML(categoryDesc.val()))) {
            resultInfo += "请输入类目描述!\n";
        }
        if (IsNull(replaceHTML(categoryBanner.val()))) {
            resultInfo += "请选择或上传类目Banner!";
        }
        return resultInfo;
    };

    // 检查子类目表单函数
    var checkSubCategoryFormInput = function () {
        var resultInfo = "";
        if (IsNull(replaceHTML(category.val()))) {
            resultInfo += "请选择所属类目!\n";
        }
        if (IsNull(replaceHTML(subCategoryName.val()))) {
            resultInfo += "请输入子类目名称!\n";
        }
        if (IsNull(replaceHTML(subCategoryBanner.val()))) {
            resultInfo += "请选择或上传子类目Banner!\n";
        }
        if (IsNull(replaceHTML(subCategoryTitle.val()))) {
            resultInfo += "请输入子类目标题!\n";
        }
        if (IsNull(replaceHTML(subCategoryDesc.val()))) {
            resultInfo += "请输入子类目描述!\n";
        }
        if (IsNull(replaceHTML(subCategoryIcon.val()))) {
            resultInfo += "请选择或上传子类目图标!\n";
        }
        if (subCategoryTags.val() === null) {
            resultInfo += "请选择子类目标签!\n";
        }
        return resultInfo;
    };

    /**
     * 判断字符串是否为空
     * @return {boolean}
     */
    function IsNull(str) {
        return (Trim(str) === "");
    }
    function Trim(str) {
        return str.replace(/(^\s*)|(\s*$)/g, "");
    }
    function replaceHTML(str) {
        str = str.replace(/<[^>].*?>/g, "");
        str = str.replace(/&nbsp;/g, "");
        return str;
    }

</script>
</body>
</html>
