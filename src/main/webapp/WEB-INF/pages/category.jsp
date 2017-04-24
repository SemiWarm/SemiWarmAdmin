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
        return;
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
            <!-- 页面内容 -->
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
                                <div class="row form-group">
                                    <label for="categoryName"
                                           class="col-md-2 control-label col-md-offset-2">类目名称</label>
                                    <div class="col-md-6">
                                        <input class="form-control" id="categoryName" name="categoryName" type="text"
                                               placeholder="类目名称" required>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <label for="categoryTitle"
                                           class="col-md-2 control-label col-md-offset-2">类目标题</label>
                                    <div class="col-md-6">
                                        <input class="form-control" id="categoryTitle" name="categoryTitle" type="text"
                                               placeholder="类目标题" required>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <label for="categoryDesc"
                                           class="col-md-2 control-label col-md-offset-2">类目描述</label>
                                    <div class="col-md-6">
                                        <textarea class="form-control" id="categoryDesc" name="categoryDesc" rows="2"
                                                  placeholder="类目描述" required></textarea>
                                    </div>
                                </div>
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
                                                        data-target="#categorySelectModal" id="btnSelectBanner"
                                                        name="btnSelectBanner" type="button">
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
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button class="btn btn-default" type="button"
                                                                    data-dismiss="modal">取 消
                                                            </button>
                                                            <button class="btn btn-primary" id="btnConfirm"
                                                                    name="btnConfirm" type="button">确 定
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <label for="categoryBannerUploader" class="col-md-2 control-label col-md-offset-2">Banner本地上传</label>
                                    <div class="col-md-6">
                                        <input class="form-control file-loading" id="categoryBannerUploader"
                                               name="image" type="file">
                                    </div>
                                </div>
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

        </section>
    </div>
</div>
<%--引用文件--%>
<script src="<%=request.getContextPath()%>/static/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/fileinput.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/theme.js"></script>
<script src="<%=request.getContextPath()%>/static/js/zh.js"></script>
<script src="<%=request.getContextPath()%>/static/js/app.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/sweetalert.min.js"></script>
<script type="text/javascript">

    var addCategoryForm = $('#addCategoryForm');
    var categoryName = $('#categoryName');
    var categoryTitle = $('#categoryTitle');
    var categoryDesc = $('#categoryDesc');
    var categoryBanner = $('#categoryBanner');

    var categorySelectModal = $('#categorySelectModal');
    var modalBody = $('.modal-body');
    var btnConfirm = $('#btnConfirm');

    var categoryBannerUploader = $('#categoryBannerUploader');
    var btnSelectBanner = $('#btnSelectBanner');

    var btnCategoryReset = $('#btnCategoryReset');
    var btnCategoryAdd = $('#btnCategoryAdd');

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

    // 上传完成后的回调
    categoryBannerUploader.on('fileuploaded', function (event, data) {
        var response = data.response;
        categoryBanner.val(response["url"]);
    });

    // 模态框调用show方法之后执行的回调方法
    categorySelectModal.on('show.bs.modal', function (e) {
        console.log(e);
        // 首先进行Ajax请求获取所有categoryBanner类型的图片信息
        $.ajax({
            type: 'get',
            url: '<%=request.getContextPath()%>/categoryBanner/images',
            async: true,
            success: function (categoryBannerImages) {
                var categoryBannerHtml = "";
                $.each(categoryBannerImages, function (i, item) {
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
                modalBody.html(categoryBannerHtml);
            },
            error: function (errorMessage) {
                console.log(errorMessage);
            }
        });
    });

    btnConfirm.bind('click', function () {
        // 获取选择的图片的访问地址
        var categoryBannerUrl = $('input:radio:checked').val();
        categoryBanner.val(categoryBannerUrl);
        categorySelectModal.modal('hide');
    });

    btnCategoryAdd.bind('click', function () {
        if (checkInput().length > 0) {
            sweetAlert("出错啦!", checkInput(), "error");
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

    var checkInput = function () {
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
