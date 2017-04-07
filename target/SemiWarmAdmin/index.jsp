<%--
  Created by IntelliJ IDEA.
  User: alibct
  Date: 2017/2/24
  Time: 下午12:56
  Desc: 半暖-社区化导购商城
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.invalidate();
%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/static/images/favicon.ico">
    <title>半暖-社区化导购商城</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/bootstrap.min.css">
    <%--建议将自定义的Style文件放在本地，防止出现服务器无法加载的问题--%>
    <style>
        body {
            /*font-family: "Helvetica Neue", Helvetica, "PingFang SC", "Hiragino Sans GB", "Microsoft YaHei", Arial, sans-serif;*/
            /*-webkit-font-smoothing: subpixel-antialiased;*/
            background: #F7FAFC;
            text-align: center;
        }

        .login-card {
            width: 320px;
            height: 360px;
            position: absolute;
            z-index: 0;

            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
            margin: auto;

            border-radius: 10px;
            background: #FFFFFF;
            box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.3);
            -webkit-box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.3);
        }

        .login-form {
            margin: 58px auto;
        }

        .logo {
            margin: 0 auto;
            width: 200px;
            height: 80px;
            background: url("<%=request.getContextPath()%>/static/images/logo.png") no-repeat;
            background-size: contain;
        }

        .hide-text {
            font: 0/0 a;
            color: transparent;
            text-shadow: none;
            border: 0;
        }

        .group-inputs {
            border: 1px solid #e0e0e0;
            border-radius: 4px;
            width: 280px;
            margin: 15px auto;
        }
        .account {
            margin: 0 auto;
            border-bottom: 1px solid #e0e0e0;
        }

        .password {
            margin: -1px auto 0 auto;
            border-top: 1px solid #e0e0e0;
        }

        .input-wrapper input {
            width: 274px;
            height: 40px;
            border-color: transparent;
            outline: none;
            text-align: center;
        }

        .signIn-button {
            width: 280px;
            height: 45px;
            background: #0F88EB;
            box-shadow: none;
            border: 0;
            border-radius: 4px;
            line-height: 40px;
            color: #FFFFFF;
            font-size: 15px;
        }

        .message-info {
            width: 280px;
            margin: 8px auto;
            padding: 5px;
            border: 1px solid #ebccd1;
            border-radius: 4px;
            color: #a94442;
            background-color: #f2dede;
        }

        input:-webkit-autofill {
            -webkit-box-shadow: 0 0 0 50px white inset;
        }
    </style>
</head>
<body>
<div class="login-card">
    <div class="login-form">
        <h1 class="logo hide-text">半暖</h1>
        <form id="signInForm">
            <div class="group-inputs">
                <div class="input-wrapper account">
                    <input id="administratorName" name="administratorName" type="text" aria-label="请输入管理员名称" placeholder="请输入管理员名称"
                           required>
                </div>
                <div class="input-wrapper password">
                    <input id="password" name="password" type="password" aria-label="请输入登录密码" placeholder="请输入登录密码"
                           required>
                </div>
            </div>
            <div class="button-wrapper">
                <button class="signIn-button" id="signIn-button" type="button">登录</button>
            </div>
        </form>
        <div class="message-info" id="message-info">
            <span id="message"></span>
        </div>
    </div>
</div>

<script src="<%=request.getContextPath()%>/static/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap.min.js"></script>
<script type="text/javascript">

    var messageInfo = $('#message-info');
    var message = $('#message');
    var signInButton = $('#signIn-button');

    $(function () {

        // 将错误信息提示框设为不可见
        messageInfo.css('display', 'none');

        // 监听回车事件
        $('body').keydown(function (e) {
            if (e.keyCode === 13) {
                doLogin();
            }
        });

        // 监听登录按钮事件
        signInButton.bind('click',function () {
           doLogin();
        });
    });

    // 登录逻辑
    var doLogin = function () {
        signInButton.text("登录中...");
        signInButton.attr("disabled",true);
        $.ajax({
            // 请求发送方式
            type: 'post',
            // 请求地址
            url: '<%=request.getContextPath()%>/signIn',
            // 请求数据，用户名和密码
            data: {'administratorName': $('#administratorName').val(), 'password': $('#password').val()},
            // 异步，不写默认为True
            async: true,
            // 请求成功后的回调
            success: function (signInResponse) {
                // 登录成功状态码为 1
                if (signInResponse["success"] === 1) {
                    // 隐藏错误信息提示框
                    messageInfo.css('display', 'none');
                    // 设置成功提示信息
                    message.text(signInResponse["message"]);
                    // 跳转到主页
                    window.location.href = "<%=request.getContextPath()%>/main";
                } else if (signInResponse["success"] === 0) {
                    // 登录失败状态码为 0
                    signInButton.text("登录");
                    signInButton.attr("disabled",false);
                    // 设置错误提示信息
                    message.text(signInResponse["message"]);
                    // 显示错误提示框
                    messageInfo.css('display', 'block');
                }
            },
            error: function (errorMessage) {
                signInButton.text("登录");
                signInButton.attr("disabled",false);
                // 其它错误信息
                messageInfo.text(errorMessage);
                messageInfo.css('display', 'block');
            }
        });
    }
</script>
</body>
</html>
