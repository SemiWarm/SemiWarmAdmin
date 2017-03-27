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
    <title>半暖-社区化导购商城</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/main.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/bootstrap.min.css">
</head>
<body>
<div class="login-card">
    <div class="login-form">
        <h1 class="logo hide-text">半暖</h1>
        <form id="signInForm">
            <div class="group-inputs">
                <div class="input-wrapper account">
                    <input id="adminName" name="adminName" type="text" aria-label="请输入用户名" placeholder="请输入用户名"
                           required>
                </div>
                <div class="input-wrapper password">
                    <input id="password" name="password" type="password" aria-label="请输入密码" placeholder="请输入密码"
                           required>
                </div>
            </div>
            <div class="button-wrapper">
                <button class="signIn-button" id="signIn-button" name="signIn-button" type="button">登录</button>
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

    $(function () {

        // 将错误信息提示框设为不可见
        $('#message-info').css('display', 'none');

        // 监听回车事件
        $('body').keydown(function (e) {
            if (e.keyCode == 13) {
                doLogin();
            }
        });

        // 监听登录按钮事件
        $('#signIn-button').bind('click',function () {
           doLogin();
        });
    });

    // 登录逻辑
    var doLogin = function () {
        $.ajax({
            // 请求发送方式
            type: 'post',
            // 请求地址
            url: '<%=request.getContextPath()%>/signIn',
            // 请求数据，用户名和密码
            data: {'adminName': $('#adminName').val(), 'password': $('#password').val()},
            // 异步，不写默认为True
            async: false,
            // 请求成功后的回调
            success: function (signInResponse) {
                // 登录成功状态码为 1
                if (signInResponse["success"] == 1) {
                    // 隐藏错误信息提示框
                    $('#message-info').css('display', 'none');
                    // 设置成功提示信息
                    $('#message').text(signInResponse["message"]);
                    // 跳转到主页
                    window.location.href = "<%=request.getContextPath()%>/main";
                } else if (signInResponse["success"] == 0) {
                    // 登录失败状态码为 0
                    // 设置错误提示信息
                    $('#message').text(signInResponse["message"]);
                    // 显示错误提示框
                    $('#message-info').css('display', 'block');
                }
            },
            error: function (errorMessage) {
                // 其它错误信息
                $('#message').text(errorMessage);
                $('#message-info').css('display', 'block');
            }
        });
    }
</script>
</body>
</html>
