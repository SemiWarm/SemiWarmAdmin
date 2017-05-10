<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: alibct
  Date: 2017/3/9
  Time: 下午2:14
  Desc: 半暖商城-商品管理
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Long administratorId = (Long) session.getAttribute("administratorId");
    String administratorName = (String) session.getAttribute("administratorName");
    Integer privilegeLevel = (Integer) session.getAttribute("privilegeLevel");
    if (null == administratorId) {
        response.sendRedirect(request.getContextPath() + "/signIn");
        return;
    }
%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/static/images/favicon.ico">
    <title>半暖商城-商品管理</title>
    <%--Tell the browser to be responsive to screen width--%>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/ionicons.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/AdminLTE.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/fileinput.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/bootstrap-table.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/editormd.css">
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
                <li class="treeview active">
                    <a href="#">
                        <i class="fa fa-gift" style="font-size: larger"></i>
                        <span>商品管理</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li class="active">
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
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-th"></i>
                        <span>类目管理</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
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
                <small>商品管理</small>
            </h1>
            <ol class="breadcrumb">
                <li>
                    <a href="<%=request.getContextPath()%>/main"><i class="fa fa-home"></i> 主页</a>
                </li>
                <li class="active">商品管理</li>
            </ol>
        </section>

        <!-- 内容区域 -->
        <section class="content">

            <br>
            <!-- 添加商品 -->
            <div class="row">

                <div class="col-lg-12">
                    <div class="box box-success">
                        <div class="box-header with-border">
                            <h3 class="box-title">增加商品</h3>
                            <div class="box-tools pull-right">
                                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                </button>
                            </div><!-- /.box-tools -->
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            <!-- 增加商品开始 -->
                            <div class="row">
                                <div class="col-lg-10 col-lg-offset-1">
                                    <form class="form-horizontal">
                                        <!-- goodsCategory -->
                                        <div class="form-group">
                                            <label for="goodsCategory" class="col-lg-2 control-label">商品类目</label>
                                            <div class="col-lg-9">
                                                <select class="selectpicker form-control" id="goodsCategory"
                                                        title="商品类目">
                                                    <c:forEach items="${goodsCategory}" var="category">
                                                        <optgroup label="${category.key.categoryName}">
                                                            <c:forEach items="${category.value}" var="subCategory">
                                                                <option value="${subCategory.subCategoryId}">${subCategory.subCategoryName}</option>
                                                            </c:forEach>
                                                        </optgroup>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <!-- goodsTitle -->
                                        <div class="form-group">
                                            <label for="goodsTitle" class="col-lg-2 control-label">商品标题</label>
                                            <div class="col-lg-9">
                                                <input type="text" class="form-control" id="goodsTitle"
                                                       placeholder="商品标题" required>
                                            </div>
                                        </div>
                                        <!-- goodsTags -->
                                        <div class="form-group">
                                            <label for="goodsTags" class="col-lg-2 control-label">商品标签</label>
                                            <div class="col-lg-9">
                                                <select class="selectpicker form-control" id="goodsTags" multiple
                                                        title="商品标签"
                                                        data-max-options="2">
                                                    <option value="上新"
                                                            data-content="<span class='label label-success'>上新</span>">
                                                        上新
                                                    </option>
                                                    <option value="热门"
                                                            data-content="<span class='label label-danger'>热门</span>">热门
                                                    </option>
                                                    <option value="人气"
                                                            data-content="<span class='label label-warning'>人气</span>">
                                                        人气
                                                    </option>
                                                    <option value="推荐"
                                                            data-content="<span class='label label-info'>推荐</span>">推荐
                                                    </option>
                                                    <option value="促销"
                                                            data-content="<span class='label label-danger'>促销</span>">促销
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                        <!-- goodsProvider -->
                                        <div class="form-group">
                                            <label for="goodsProvider" class="col-lg-2 control-label">商品提供商</label>
                                            <div class="col-lg-9">
                                                <select class="selectpicker form-control" id="goodsProvider"
                                                        title="商品提供商">
                                                    <c:forEach items="${goodsProviders}" var="goodsProvider">
                                                        <option value="${goodsProvider.providerId}">${goodsProvider.providerName}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <!-- goodsPrice -->
                                        <div class="form-group">
                                            <label for="goodsPrice" class="col-lg-2 control-label">商品定价</label>
                                            <div class="col-lg-9">
                                                <input type="number" class="form-control" id="goodsPrice"
                                                       placeholder="商品定价" required>
                                            </div>
                                        </div>
                                        <!-- goodsSpec -->
                                        <div class="form-group">
                                            <label for="goodsSpec" class="col-lg-2 control-label">商品规格</label>
                                            <div class="col-lg-9">
                                                <button class="btn btn-info col-lg-4" id="goodsSpec" data-toggle='modal'
                                                        data-target='#addSpecParamModal'><span
                                                        class="glyphicon glyphicon-plus"></span>添加规格
                                                </button>
                                                <div class="btn-toolbar pull-right" role="toolbar">
                                                    <div class="btn-group" role="group">
                                                        <button id="btnRemoveSpecRow" type="button"
                                                                class="btn btn-default"><span
                                                                class="glyphicon glyphicon-trash"></span></button>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- specParams -->
                                            <div class="col-lg-9 col-lg-offset-2"
                                                 style="padding-top: 5px">
                                                <table id="specParamsTable" data-toggle="table"
                                                       data-click-to-select="true">
                                                    <thead>
                                                    <tr>
                                                        <th rowspan="2" data-field="state"
                                                            data-radio="true"
                                                            data-halign="center"
                                                            data-align="center"
                                                            data-valign="middle">#
                                                        </th>
                                                        <th colspan="5" data-halign="center"
                                                            data-align="center"
                                                            data-valign="middle">参数明细
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th data-field="id" data-halign="center"
                                                            data-align="center" data-valign="middle">
                                                            规格ID
                                                        </th>
                                                        <th data-field="specName" data-halign="center"
                                                            data-align="center" data-valign="middle">
                                                            规格名称
                                                        </th>
                                                        <th data-field="specParam" data-halign="center"
                                                            data-align="center"
                                                            data-valign="middle">
                                                            参数名称
                                                        </th>
                                                        <th data-field="goodsQuantity"
                                                            data-halign="center"
                                                            data-align="center"
                                                            data-valign="middle">
                                                            商品数量
                                                        </th>
                                                    </tr>
                                                    </thead>
                                                    <tbody></tbody>
                                                </table>
                                            </div>
                                            <!-- Modal -->
                                            <div class="modal fade" id="addSpecParamModal" tabindex="-1" role="dialog"
                                                 aria-labelledby="addSpecParamModalLabel">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close"><span
                                                                    aria-hidden="true">&times;</span></button>
                                                            <h4 class="modal-title" id="addSpecParamModalLabel">
                                                                添加规格参数</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <!-- 下拉菜单联动 -->
                                                            <div id="addSpecModal">
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label for="goodsCount"
                                                                               class="col-lg-2 control-label">商品数量</label>
                                                                        <div class="col-lg-10">
                                                                            <input type="number" class="form-control"
                                                                                   id="goodsCount"
                                                                                   placeholder="商品数量" required>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <label class="btn btn-info col-lg-12" id="newSpec"
                                                                           role="button"><span
                                                                            class="glyphicon glyphicon-plus"></span>新增规格</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button class="btn btn-default" type="button"
                                                                    data-dismiss="modal">取消
                                                            </button>
                                                            <button class="btn btn-primary" id="btnConfirm"
                                                                    type="button">确定
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- goodsBanners -->
                                        <div class="form-group">
                                            <label for="goodsBanners" class="col-lg-2 control-label">商品图片</label>
                                            <div class="col-lg-9">
                                                <textarea class="form-control" rows="3" id="goodsBanners"
                                                          placeholder="Urls:http://www.semiwarm.cn/upload/images/goods/..."
                                                          required
                                                          disabled></textarea>
                                            </div>
                                        </div>
                                        <!-- goodsBannersUploader -->
                                        <div class="form-group">
                                            <label for="goodsBannersUploader"
                                                   class="col-lg-2 control-label">商品图片上传</label>
                                            <div class="col-lg-9">
                                                <input class="form-control file-loading" id="goodsBannersUploader"
                                                       name="images" type="file" multiple required>
                                            </div>
                                        </div>
                                        <!-- goodsDesc -->
                                        <div class="form-group">
                                            <label for="goodsDesc" class="col-lg-2 control-label">商品简介</label>
                                            <div class="col-lg-9">
                                                <textarea class="form-control" rows="3" id="goodsDesc"
                                                          placeholder="商品简介" required></textarea>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-10 col-lg-offset-1 text-center">
                                    <h4>商品详情</h4>
                                </div>
                            </div>
                            <!-- goodsDetail -->
                            <div class="row">
                                <div class="col-lg-12">
                                    <div id="mdEditor" class="editormd">
                                        <textarea class="editormd-markdown-textarea" name="markdown-area"
                                                  style="display:none;"># 请描述商品</textarea>
                                        <textarea class="editormd-html-textarea" name="html-area"></textarea>
                                    </div>
                                </div>
                            </div>
                            <%--footer--%>
                            <div class="row">
                                <button class="btn btn-warning col-lg-2 col-lg-offset-2" id="btnGoodsReset"
                                        name="btnGoodsReset" type="reset">重置
                                </button>
                                <div class="col-lg-4">

                                </div>
                                <button class="btn btn-primary col-lg-2" id="btnGoodsAdd"
                                        name="btnGoodsAdd" type="button">添加
                                </button>
                            </div>
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->
                </div>

            </div>

            <%--添加规格--%>
            <div class="row">
                <div class="col-lg-12">
                    <div class="box box-success collapsed-box">
                        <div class="box-header with-border">
                            <h3 class="box-title">添加商品规格</h3>
                            <div class="box-tools pull-right">
                                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div><!-- /.box-tools -->
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            <div class="row">
                                <div class="col-lg-10 col-lg-offset-1">
                                    <form class="form-horizontal" id="goodsSpecForm">
                                        <!-- 规格名称 -->
                                        <div class="form-group">
                                            <label for="goodsSpecName" class="col-lg-2 control-label">规格名称</label>
                                            <div class="col-lg-9">
                                                <input type="text" class="form-control" id="goodsSpecName"
                                                       placeholder="规格名称" required>
                                            </div>
                                        </div>

                                        <!-- 规格描述 -->
                                        <div class="form-group">
                                            <label for="goodsSpecDesc" class="col-lg-2 control-label">规格描述</label>
                                            <div class="col-lg-9">
                                                <textarea class="form-control" rows="3" id="goodsSpecDesc"
                                                          placeholder="规格描述" required></textarea>
                                            </div>
                                        </div>

                                        <%--footer--%>
                                        <div class="row">
                                            <button class="btn btn-warning col-md-2 col-md-offset-4"
                                                    id="btnGoodsSpecReset"
                                                    name="btnGoodsSpecReset" type="reset">重置
                                            </button>
                                            <button class="btn btn-primary col-md-2 col-md-offset-2"
                                                    id="btnGoodsSpecAdd"
                                                    name="btnGoodsSpecAdd" type="button">添加
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <%--添加供应商--%>
            <div class="row">

                <div class="col-lg-12">
                    <div class="box box-success collapsed-box">
                        <div class="box-header with-border">
                            <h3 class="box-title">添加商品提供商</h3>
                            <div class="box-tools pull-right">
                                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                                </button>
                            </div><!-- /.box-tools -->
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            <div class="row">
                                <div class="col-lg-10 col-lg-offset-1">
                                    <form class="form-horizontal" id="goodsProviderForm">
                                        <!-- 供应商名称 -->
                                        <div class="form-group">
                                            <label for="goodsProviderName" class="col-lg-2 control-label">供应商名称</label>
                                            <div class="col-lg-9">
                                                <input type="text" class="form-control" id="goodsProviderName"
                                                       placeholder="供应商名称" required>
                                            </div>
                                        </div>

                                        <!-- 供应商简介 -->
                                        <div class="form-group">
                                            <label for="goodsProviderProfile"
                                                   class="col-lg-2 control-label">供应商简介</label>
                                            <div class="col-lg-9">
                                                <textarea class="form-control" rows="3" id="goodsProviderProfile"
                                                          placeholder="供应商简介" required></textarea>
                                            </div>
                                        </div>

                                        <!-- 供应商描述 -->
                                        <div class="form-group">
                                            <label for="goodsProviderDesc"
                                                   class="col-lg-2 control-label">供应商描述</label>
                                            <div class="col-lg-9">
                                                <textarea class="form-control" rows="5" id="goodsProviderDesc"
                                                          placeholder="供应商描述" required></textarea>
                                            </div>
                                        </div>

                                        <!-- 供应商Banner -->
                                        <div class="form-group">
                                            <label for="goodsProviderBanners"
                                                   class="col-lg-2 control-label">供应商Banner</label>
                                            <div class="col-lg-9">
                                                <input class="form-control" id="goodsProviderBanners"
                                                       name="goodsProviderBanners"
                                                       type="text"
                                                       placeholder="http://www.semiwarm.cn/admin/upload/images/goods/..."
                                                       disabled
                                                       required>
                                            </div>
                                        </div>
                                        <!-- 供应商Banner -->
                                        <div class="form-group">
                                            <label for="goodsProviderBannersUploader"
                                                   class="col-lg-2 control-label">Banner上传</label>
                                            <div class="col-lg-9">
                                                <input class="form-control file-loading"
                                                       id="goodsProviderBannersUploader"
                                                       name="image" type="file" multiple required>
                                            </div>
                                        </div>

                                        <%--footer--%>
                                        <div class="row">
                                            <button class="btn btn-warning col-md-2 col-md-offset-4"
                                                    id="btnGoodsProviderReset"
                                                    name="btnGoodsProviderReset" type="reset">重置
                                            </button>
                                            <button class="btn btn-primary col-md-2 col-md-offset-2"
                                                    id="btnGoodsProviderAdd"
                                                    name="btnGoodsProviderAdd" type="button">添加
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </section>
    </div>
</div>
<%--引用文件--%>
<script src="<%=request.getContextPath()%>/static/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/app.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-select.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/fileinput.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/zh.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-table.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap-table-zh-CN.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/marked.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/prettify.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/raphael.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/underscore.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/sequence-diagram.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/flowchart.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/jquery.flowchart.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/editormd.js"></script>
<script src="<%=request.getContextPath()%>/static/js/sweetalert.min.js"></script>
<script type="text/javascript">
    var goodsBannersUploader = $('#goodsBannersUploader'); // 图片上传工具
    var goodsProviderBannersUploader = $('#goodsProviderBannersUploader');
    var specParamsTable = $('#specParamsTable'); // 规格参数表
    var editor; // 商品详情数据存放变量

    // 初始化变量
    var goodsCategory = $('#goodsCategory'); // 所属子类目
    var goodsTitle = $('#goodsTitle'); // 商品标题
    var goodsTags = $('#goodsTags'); // 商品标签
    var goodsProvider = $('#goodsProvider'); // 商品供应商
    var goodsPrice = $('#goodsPrice'); // 商品定价
    var goodsBanners = $('#goodsBanners'); // 商品图片
    var goodsDesc = $('#goodsDesc'); // 商品简介

    // 商品供应商部分
    var goodsProviderBanners = $('#goodsProviderBanners');
    var goodsProviderName = $('#goodsProviderName');
    var goodsProviderProfile = $('#goodsProviderProfile');
    var goodsProviderDesc = $('#goodsProviderDesc');
    var btnGoodsProviderAdd = $('#btnGoodsProviderAdd');
    var goodsProviderForm = $('#goodsProviderForm');

    var checkGoodsProviderInput = function () {
        var result = "";

        if (IsNull(replaceHTML(goodsProviderName.val()))) {
            result += "请填写供应商名称!";
        }

        if (IsNull(replaceHTML(goodsProviderProfile.val()))) {
            result += "请填写供应商简介!";
        }

        if (IsNull(replaceHTML(goodsProviderDesc.val()))) {
            result += "请填写供应商描述!";
        }

        if (IsNull(replaceHTML(goodsProviderBanners.val()))) {
            result += "请上传供应商图片!";
        }

        return result;
    };

    btnGoodsProviderAdd.bind('click', function () {
        if (checkGoodsProviderInput().length > 0) {
            sweetAlert("出错啦!", checkGoodsSpecInput(), "error");
        } else {
            $.ajax({
                type: 'post',
                url: '<%=request.getContextPath()%>/goodsProvider',
                data: {
                    "providerName": goodsProviderName.val(),
                    "providerProfile": goodsProviderProfile.val(),
                    "providerDesc": goodsProviderDesc.val(),
                    "providerBanner": goodsProviderBanners.val()
                },
                async: false,
                success: function (response) {
                    if (response["success"] === 1) {
                        sweetAlert({title: "成功信息", text: response["message"], type: "success"}, function () {
                            goodsProviderForm[0].reset();
                            goodsProviderBannersUploader.fileinput('clear');
                        });
                    } else {
                        sweetAlert("提示信息", response["message"], "error");
                    }
                },
                error: function (errorMessage) {
                    console.log(errorMessage);
                }
            });
        }
    });

    // 商品规格部分
    var goodsSpecName = $('#goodsSpecName');
    var goodsSpecDesc = $('#goodsSpecDesc');
    var btnGoodsSpecAdd = $('#btnGoodsSpecAdd');
    var goodsSpecForm = $('#goodsSpecForm');

    var checkGoodsSpecInput = function () {
        var result = "";

        if (IsNull(replaceHTML(goodsSpecName.val()))) {
            result += "请填写规格名称!";
        }

        if (IsNull(replaceHTML(goodsSpecDesc.val()))) {
            result += "请填写规格描述!";
        }

        return result;
    };

    btnGoodsSpecAdd.bind('click', function () {
        if (checkGoodsSpecInput().length > 0) {
            sweetAlert("出错啦!", checkGoodsSpecInput(), "error");
        } else {
            $.ajax({
                type: 'post',
                url: '<%=request.getContextPath()%>/goodsSpec',
                data: {"specName": goodsSpecName.val(), "specDesc": goodsSpecDesc.val()},
                async: false,
                success: function (response) {
                    if (response["success"] === 1) {
                        sweetAlert({title: "成功信息", text: response["message"], type: "success"}, function () {
                            goodsSpecForm[0].reset();
                        });
                    } else {
                        sweetAlert("提示信息", response["message"], "error");
                    }
                },
                error: function (errorMessage) {
                    console.log(errorMessage);
                }
            });
        }
    });

    $(function () {
        // 初始化上传域
        goodsBannersUploader.fileinput({
            language: 'zh', // 设置语言
            uploadUrl: '<%=request.getContextPath()%>/upload/goodsBanner/images', // 上传地址
            allowedFileExtensions: ['jpg', 'jpeg', 'png', 'gif'], // 允许上传的文件后缀
            showRemove: true, // 是否显示移除按钮
            removeClass: 'btn btn-warning', // 移除按钮主题
            showUpload: true, // 是否显示上传按钮
            showCaption: true, // 是否显示标题
            dropZoneEnabled: false,
            minFileCount: 3, // 最少文件数量
            maxFileCount: 5, // 最多文件数量
            enctype: 'multipart/form-data'
        });

        goodsProviderBannersUploader.fileinput({
            language: 'zh', // 设置语言
            uploadUrl: '<%=request.getContextPath()%>/upload/goodsProviderBanner/image', // 上传地址
            allowedFileExtensions: ['jpg', 'jpeg', 'png', 'gif'], // 允许上传的文件后缀
            showRemove: true, // 是否显示移除按钮
            removeClass: 'btn btn-warning', // 移除按钮主题
            showUpload: false, // 是否显示上传按钮
            showCaption: true, // 是否显示标题
            dropZoneEnabled: false,
            minFileCount: 1, // 最少文件数量
            maxFileCount: 1, // 最多文件数量
            enctype: 'multipart/form-data'
        });

        // 上传完成后的回调函数
        goodsBannersUploader.on('fileuploaded', function (event, data) {
            var responses = data.response;
            console.log(responses);
        });

        // 商品供应商Banner上传完成后的回调
        goodsProviderBannersUploader.on('fileuploaded', function (event, data) {
            var response = data.response;
            goodsProviderBanners.val(response["url"]);
        });
        // 初始化编辑器
        editor = editormd("mdEditor", {
            width: "90%",
            height: 640,
            syncScrolling: "single",
            path: "<%=request.getContextPath()%>/static/lib/",
            saveHTMLToTextarea: true,
            emoji: true,
            editorTheme: "solarized",
            imageUpload: true,
            imageFormats: ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
            imageUploadURL: "<%=request.getContextPath()%>/upload/editormd/images"
        });
    });


    var addSpecParamModal = $('#addSpecParamModal');
    var newSpec = $('#newSpec');
    var addSpecModal = $('#addSpecModal');
    var goodsCount = $('#goodsCount');
    var i = 0;
    var specFormId = "";
    var specNameId = "";
    var specParamId = "";
    var removeSpec = function (formId) {
        console.log(formId);
        var specForm = window.document.getElementById("specForm" + formId);
        specForm.parentNode.removeChild(specForm);
    };

    newSpec.bind('click', function () {
        var currentId = i++;
        specFormId = "specForm" + currentId;
        specNameId = "specName" + currentId;
        specParamId = "specParam" + currentId;
        var addSpecHtml =
            "<div class='row vertical-align form-group' id='" + specFormId + "'>" +
            "<label for='" + specNameId + "' class='col-lg-2 control-label'>规格名称</label>" +
            "<div class='col-lg-4'>" +
            "<select class='selectpicker form-control' id='" + specNameId + "' title='规格名称'>" +
            "<c:forEach items='${goodsSpecs}' var='goodsSpec'>" +
            "<option>${goodsSpec.specName}</option>" +
            "</c:forEach> " +
            "</select>" +
            "</div>" +
            "<div class='col-lg-4'>" +
            "<input class='form-control' id='" + specParamId + "' type='text' placeholder='请输入规格参数'>" +
            "</div>" +
            "<div class='col-lg-2'>" +
            "<button class='btn btn-xs btn-default pull-right' onclick='removeSpec(" + currentId + ")'>" +
            "<span class='glyphicon glyphicon-minus text-muted'></span>" +
            "</button>" +
            "</div>" +
            "</div>";
        addSpecModal.append(addSpecHtml);
        $('.selectpicker').selectpicker('refresh');
    });

    var btnConfirm = $('#btnConfirm');
    btnConfirm.bind('click', function () {
        var errorMessage = "";
        var specNameValues = "";
        var specParamValues = "";
        var specNameSelector = $("#addSpecModal" + " .selectpicker");

        if (specNameSelector.length <= 0) {
            errorMessage += "请至少添加一个规格!\n";
        }

        specNameSelector.each(function (j) {
            if (this.value === "") {
                errorMessage += "第" + (j + 1) + "个规格名称没有选择!\n"
            } else {
                if (j > 0) {
                    specNameValues += ",";
                    specNameValues += this.value;
                } else {
                    specNameValues += this.value;
                }
            }
            console.log(this.value);
        });
        $("#addSpecModal" + " input[type='text']").each(function (j) {
            if (this.value === "") {
                errorMessage += "第" + (j + 1) + "个规格参数没有填写!\n"
            } else {
                if (j > 0) {
                    specParamValues += ",";
                    specParamValues += this.value;
                } else {
                    specParamValues += this.value;
                }
            }
            console.log(this.value);
        });

        if (IsNull(replaceHTML(goodsCount.val()))) {
            errorMessage += "商品数量没有填写!";
        }
        if (errorMessage.length <= 0) {
            specParamsTable.bootstrapTable('append', {
                "id": new Date().getTime(),
                "specName": specNameValues,
                "specParam": specParamValues,
                "goodsQuantity": goodsCount.val()
            })
            ;
            addSpecParamModal.modal('hide');
            addSpecModal.html("");
            $('.selectpicker').selectpicker('refresh');
            goodsCount.val("");
        } else {
            sweetAlert("出错啦!", errorMessage, "error");
        }
    });

    var btnRemoveSpecRow = $('#btnRemoveSpecRow');
    btnRemoveSpecRow.bind('click', function () {
        var rowId = $.map(specParamsTable.bootstrapTable('getSelections'), function (row) {
            return row.id;
        });
        specParamsTable.bootstrapTable('remove', {
            field: 'id',
            values: rowId
        });
    });


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
