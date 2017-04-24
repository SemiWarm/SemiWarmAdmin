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
            <!-- 页面内容 -->
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
                                    <form class="form-horizontal goods_form">
                                        <!-- goodsId -->
                                        <div class="form-group">
                                            <label for="goodsId" class="col-lg-2 control-label">商品ID</label>
                                            <div class="col-lg-9">
                                                <input type="number" class="form-control" id="goodsId"
                                                       placeholder="商品ID" required disabled>
                                            </div>
                                        </div>
                                        <!-- goodsCategory -->
                                        <div class="form-group">
                                            <label for="goodsCategory" class="col-lg-2 control-label">商品类目</label>
                                            <div class="col-lg-9">
                                                <select class="selectpicker form-control" id="goodsCategory"
                                                        title="商品类目">
                                                    <optgroup label="推荐">
                                                        <option>MUJI</option>
                                                        <option>Coach</option>
                                                    </optgroup>
                                                    <optgroup label="家居">
                                                        <option>UNIQLO</option>
                                                        <option>A21</option>
                                                    </optgroup>
                                                    <optgroup label="服饰">
                                                        <option>UNIQLO</option>
                                                        <option>A21</option>
                                                    </optgroup>
                                                    <optgroup label="其它">
                                                        <option>UNIQLO</option>
                                                        <option>A21</option>
                                                    </optgroup>
                                                </select>
                                            </div>
                                        </div>
                                        <!-- goodsTitle -->
                                        <div class="form-group">
                                            <label for="goodsTitle" class="col-lg-2 control-label">商品标题</label>
                                            <div class="col-lg-9">
                                                <input type="text" class="form-control" id="goodsTitle"
                                                       placeholder="商品标题" required autofocus>
                                            </div>
                                        </div>
                                        <!-- goodsTags -->
                                        <div class="form-group">
                                            <label for="goodsTags" class="col-lg-2 control-label">商品标签</label>
                                            <div class="col-lg-9">
                                                <select class="selectpicker form-control" id="goodsTags" multiple
                                                        title="商品标签"
                                                        data-max-options="2">
                                                    <option data-content="<span class='label label-success'>新品</span>">
                                                        新品
                                                    </option>
                                                    <option data-content="<span class='label label-danger'>热门</span>">
                                                        热门
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
                                                    <optgroup label="家居">
                                                        <option>MUJI</option>
                                                        <option>Coach</option>
                                                    </optgroup>
                                                    <optgroup label="服饰">
                                                        <option>UNIQLO</option>
                                                        <option>A21</option>
                                                    </optgroup>
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
                                                <div class="btn-toolbar pull-right" role="toolbar" aria-label="...">
                                                    <div class="btn-group" role="group" aria-label="...">
                                                        <button type="button" class="btn btn-default"><span
                                                                class="glyphicon glyphicon-pencil"></span></button>
                                                        <button type="button" class="btn btn-default"><span
                                                                class="glyphicon glyphicon-trash"></span></button>
                                                    </div>
                                                </div>
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
                                            <!-- specParams -->
                                            <div class="col-lg-9 col-lg-offset-2" style="padding-top: 5px">
                                                <table id="specParamsTable" data-toggle="specParamsTable"
                                                       data-click-to-select="true">
                                                    <thead>
                                                    <tr>
                                                        <th rowspan="2" data-field="state" data-radio="true"
                                                            data-halign="center"
                                                            data-align="center"
                                                            data-valign="middle">#
                                                        </th>
                                                        <th colspan="4" data-halign="center" data-align="center"
                                                            data-valign="middle">参数明细
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th data-field="specName" data-halign="center"
                                                            data-align="center" data-valign="middle">
                                                            规格名称
                                                        </th>
                                                        <th data-field="specParam" data-halign="center"
                                                            data-align="center"
                                                            data-valign="middle">
                                                            参数名称
                                                        </th>
                                                        <th data-field="goodsQuantity" data-halign="center"
                                                            data-align="center"
                                                            data-valign="middle">
                                                            商品数量
                                                        </th>
                                                    </tr>
                                                    </thead>
                                                </table>
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
                                                       name="image" type="file" multiple required>
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
                            <div class="row">
                                <div class="col-lg-12">
                                    <div id="mdEditor" class="editormd">
                <textarea class="editormd-markdown-textarea" name="markdown-area"
                          style="display:none;"># 请描述商品</textarea>
                                        <textarea class="editormd-html-textarea" name="html-area"></textarea>
                                    </div>
                                </div>
                            </div>
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
<script type="text/javascript">
    var goodsBannersUploader = $('#goodsBannersUploader');
    var specParamsTable = $('#specParamsTable');
    var editor;
    var data = [{
        "specName": "尺寸",
        "specParam": "M",
        "goodsQuantity": 20
    }, {
        "specName": "尺寸",
        "specParam": "L",
        "goodsQuantity": 20
    }, {
        "specName": "尺寸",
        "specParam": "XL",
        "goodsQuantity": 20
    }, {
        "specName": "颜色",
        "specParam": "粉色",
        "goodsQuantity": 20
    }, {
        "specName": "颜色",
        "specParam": "湖蓝",
        "goodsQuantity": 20
    }, {
        "specName": "颜色",
        "specParam": "藏青",
        "goodsQuantity": 20
    }];
    $(function () {
        // 初始化上传域
        goodsBannersUploader.fileinput({
            language: 'zh', // 设置语言
            uploadUrl: '<%=request.getContextPath()%>/upload/categoryBanner/image', // 上传地址
            allowedFileExtensions: ['jpg', 'png', 'gif'], // 允许上传的文件后缀
            showRemove: true, // 是否显示移除按钮
            removeClass: 'btn btn-warning', // 移除按钮主题
            showUpload: true, // 是否显示上传按钮
            showCaption: true, // 是否显示标题
            dropZoneEnabled: false,
            minFileCount: 3, // 最少文件数量
            maxFileCount: 5, // 最多文件数量
            enctype: 'multipart/form-data'
        });
        // 初始化表格数据
        specParamsTable.bootstrapTable({data: data});
        // 初始化编辑器
        $(function () {
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
    });
</script>
</body>
</html>
