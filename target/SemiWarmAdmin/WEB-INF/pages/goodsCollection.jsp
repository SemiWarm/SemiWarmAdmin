<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: alibct
  Date: 2017/3/9
  Time: 下午2:14
  Desc: 半暖商城-商品集管理
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
    <title>半暖商城-商品集管理</title>
    <%--Tell the browser to be responsive to screen width--%>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/ionicons.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/AdminLTE.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/bootstrap-table.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/fileinput.min.css">
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
                <%--商品集管理模块--%>
                <li class="treeview active">
                    <a href="#">
                        <i class="fa fa-list"></i>
                        <span>商品集管理</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li class="active">
                            <a href="<%=request.getContextPath()%>/goodsCollection">
                                <i class="fa fa-plus-square"></i>
                                <span> 商品集管理</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-pencil-square"></i>
                                <span> 商品集编辑</span>
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
                <small>商品集管理</small>
            </h1>
            <ol class="breadcrumb">
                <li class="active">
                    <a href="<%=request.getContextPath()%>/main"><i class="fa fa-home"></i> 主页</a>
                </li>
                <li class="active">商品集管理</li>
            </ol>
        </section>

        <!-- 内容区域 -->
        <section class="content">

            <!-- 页面内容 -->
            <br>
            <!-- 添加商品集 -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="box box-success">
                        <div class="box-header with-border">
                            <h3 class="box-title">增加商品集</h3>
                            <div class="box-tools pull-right">
                                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                </button>
                            </div><!-- /.box-tools -->
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            <div class="row">
                                <div class="col-lg-10 col-lg-offset-1">
                                    <form class="form-horizontal">
                                        <!-- collectionName -->
                                        <div class="form-group">
                                            <label for="collectionName" class="col-lg-2 control-label">商品集名称</label>
                                            <div class="col-lg-9">
                                                <input type="text" class="form-control" id="collectionName"
                                                       placeholder="商品集名称" required>
                                            </div>
                                        </div>
                                        <!-- collectionTitle -->
                                        <div class="form-group">
                                            <label for="collectionTitle" class="col-lg-2 control-label">商品集标题</label>
                                            <div class="col-lg-9">
                                                <input type="text" class="form-control" id="collectionTitle"
                                                       placeholder="商品集标题" required>
                                            </div>
                                        </div>
                                        <!-- collectionDesc -->
                                        <div class="form-group">
                                            <label for="collectionDesc" class="col-lg-2 control-label">商品集描述</label>
                                            <div class="col-lg-9">
                                                <textarea class="form-control" rows="4" id="collectionDesc"
                                                          placeholder="商品集描述" required></textarea>
                                            </div>
                                        </div>

                                        <!-- collectionBanner -->
                                        <div class="form-group">
                                            <label for="collectionBanner"
                                                   class="col-lg-2 control-label">商品集Banner</label>
                                            <div class="col-lg-9">
                                                <input class="form-control" id="collectionBanner"
                                                       placeholder="Urls:http://www.semiwarm.cn/upload/images/goods/..."
                                                       required
                                                       disabled>
                                            </div>
                                        </div>
                                        <!-- collectionBannerUploader -->
                                        <div class="form-group">
                                            <label for="collectionBannerUploader"
                                                   class="col-lg-2 control-label">Banner上传</label>
                                            <div class="col-lg-9">
                                                <input class="form-control file-loading" id="collectionBannerUploader"
                                                       name="image" type="file" required>
                                            </div>
                                        </div>

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

                                        <%--下拉菜单联动--%>
                                        <!-- goods -->
                                        <div class="form-group">
                                            <label for="goods" class="col-lg-2 control-label">商品</label>
                                            <div class="col-lg-9">
                                                <div class="input-group">
                                                    <select class="selectpicker form-control" id="goods" multiple
                                                            title="请选择商品">
                                                    </select>
                                                    <span class="input-group-btn"><button id="btnAddGoods"
                                                                                          class="btn btn-primary"
                                                                                          type="button">添加</button></span>
                                                </div>
                                            </div>
                                            <div class="col-lg-1 col-lg-offset-10" style="padding-top: 5px">
                                                <button id="btnRemoveGoodsRow" type="button"
                                                        class="btn btn-default"><span
                                                        class="glyphicon glyphicon-trash"></span></button>
                                            </div>
                                            <!-- goodsTable -->
                                            <div class="col-lg-9 col-lg-offset-2"
                                                 style="padding-top: 5px">
                                                <table id="goodsTable" data-toggle="table"
                                                       data-click-to-select="true">
                                                    <thead>
                                                    <tr>
                                                        <th rowspan="2" data-field="state"
                                                            data-radio="true"
                                                            data-halign="center"
                                                            data-align="center"
                                                            data-valign="middle">#
                                                        </th>
                                                        <th colspan="3" data-halign="center"
                                                            data-align="center"
                                                            data-valign="middle">商品明细
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th data-field="id" data-halign="center"
                                                            data-align="center" data-valign="middle">
                                                            商品ID
                                                        </th>
                                                        <th data-field="subCategoryName" data-halign="center"
                                                            data-align="center" data-valign="middle">
                                                            商品类目
                                                        </th>
                                                        <th data-field="goodsName" data-halign="center"
                                                            data-align="center" data-valign="middle">
                                                            商品名称
                                                        </th>
                                                    </tr>
                                                    </thead>
                                                    <tbody></tbody>
                                                </table>
                                            </div>
                                        </div>

                                        <%--footer--%>
                                        <div class="row">
                                            <button class="btn btn-warning col-md-2 col-md-offset-4"
                                                    id="btnGoodsCollectionReset"
                                                    name="btnGoodsCollectionReset" type="reset">重置
                                            </button>
                                            <button class="btn btn-primary col-md-2 col-md-offset-2"
                                                    id="btnGoodsCollectionAdd"
                                                    name="btnGoodsCollectionAdd" type="button">添加
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
<script src="<%=request.getContextPath()%>/static/js/sweetalert.min.js"></script>
<script type="text/javascript">
    var collectionBanner = $('#collectionBanner');
    var collectionBannerUploader = $('#collectionBannerUploader'); // 图片上传工具
    var goodsCategory = $('#goodsCategory');
    var goods = $('#goods');
    var btnAddGoods = $('#btnAddGoods');
    var goodsTable = $('#goodsTable');
    var btnRemoveGoodsRow = $('#btnRemoveGoodsRow');
    var btnGoodsCollectionAdd = $('#btnGoodsCollectionAdd');

    // 数据
    var collectionName = $('#collectionName');
    var collectionTitle = $('#collectionTitle');
    var collectionDesc = $('#collectionDesc');


    $(function () {
        collectionBannerUploader.fileinput({
            language: 'zh', // 设置语言
            uploadUrl: '<%=request.getContextPath()%>/upload/collectionBanner/image', // 上传地址
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
    });

    // 上传完成后的回调函数
    collectionBannerUploader.on('fileuploaded', function (event, data) {
        var response = data.response;
        if (response["success"] === 1) {
            console.log(response["url"]);
            collectionBanner.val(response["url"]);
        }
    });

    goodsCategory.bind('change', function () {
        console.log(goodsCategory.val());
        $.ajax({
            type: 'get',
            url: "<%=request.getContextPath()%>/subCategory/" + goodsCategory.val() + "/goods",
            async: false,
            success: function (goodsList) {
                var goodsOptions = "";
                $.each(goodsList, function (i, item) {
                    goodsOptions += "<option value='" + item["goodsId"] + "," + item["goodsTitle"] + "'>" + item["goodsTitle"] + "</option>";
                });
                goods.html("");
                goods.html(goodsOptions);
                $('.selectpicker').selectpicker('refresh');
            },
            error: function (errorMessage) {
                console.log(errorMessage);
            }
        });
    });

    btnAddGoods.bind('click', function () {
        console.log(goods.val());
        $.each(goods.val(), function (i, item) {
            console.log(item);
            var temp = item.split(',');
            console.log(temp[0]);
            console.log(temp[1]);
            goodsTable.bootstrapTable('append', {
                "id": temp[0],
                "subCategoryName": goodsCategory.val(),
                "goodsName": temp[1]
            });
        });
        $('.selectpicker').selectpicker('deselectAll');
    });

    btnRemoveGoodsRow.bind('click', function () {
        var rowId = $.map(goodsTable.bootstrapTable('getSelections'), function (row) {
            return row.id;
        });
        goodsTable.bootstrapTable('remove', {
            field: 'id',
            values: rowId
        });
    });

    var checkInput = function () {

        var result = "";

        if (IsNull(replaceHTML(collectionName.val()))) {
            result += "请输入商品集名称!\n";
        }

        if (IsNull(replaceHTML(collectionTitle.val()))) {
            result += "请输入商品集标题!\n";
        }

        if (IsNull(replaceHTML(collectionDesc.val()))) {
            result += "请输入商品集描述!\n";
        }

        if (IsNull(replaceHTML(collectionBanner.val()))) {
            result += "请上传商品集Banner!\n";
        }

        return result;
    };

    btnGoodsCollectionAdd.bind('click', function () {
        if (checkInput().length > 0) {
            sweetAlert("出错啦!", checkInput(), "error");
        } else {
            var goodsCollectionsList = [];
            $.each(goodsTable.bootstrapTable('getData'), function (i, item) {
                goodsCollectionsList.push({
                    "goodsId": item["id"],
                    "collectionId": ""
                });
            });
            var goodsCollection = {
                "collectionName": collectionName.val(),
                "collectionTitle": collectionTitle.val(),
                "collectionDesc": collectionDesc.val(),
                "collectionBanner": collectionBanner.val()
            };

            var goodsCollectionPOJO = {
                "goodsCollection": goodsCollection,
                "goodsCollectionsList": goodsCollectionsList
            };

            console.log(goodsCollectionPOJO);
            $.ajax({
                type: 'post',
                contentType: 'application/json', // 必须添加
                url: '<%=request.getContextPath()%>/goodsCollection',
                data: JSON.stringify(goodsCollectionPOJO),
                async: false,
                success: function (response) {
                    if (response["success"] === 1) {
                        sweetAlert("提示信息", response["message"], "success");
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
