<%--
  Created by IntelliJ IDEA.
  User: alibct
  Date: 2017/2/24
  Time: 下午12:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.invalidate();
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>半暖-社区化导购商城</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/main.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/bootstrap.min.css">
</head>
<body>
<%--<div class="canvas-background">--%>
<%--<canvas id="particle"></canvas>--%>
<%--<script>--%>
<%--//定义画布宽高和生成点的个数--%>
<%--var WIDTH = window.innerWidth, HEIGHT = window.innerHeight, POINT = 35;--%>
<%--var canvas = document.getElementById('particle');--%>
<%--canvas.width = WIDTH, canvas.height = HEIGHT;--%>
<%--var context = canvas.getContext('2d');--%>
<%--context.strokeStyle = 'rgba(0,0,0,0.02)', context.strokeWidth = 1, context.fillStyle = 'rgba(0,0,0,0.05)';--%>
<%--var circleArr = [];--%>

<%--//线条：开始xy坐标，结束xy坐标，线条透明度--%>
<%--function Line(x, y, _x, _y, o) {--%>
<%--this.beginX = x, this.beginY = y, this.closeX = _x, this.closeY = _y, this.o = o;--%>
<%--}--%>
<%--//点：圆心xy坐标，半径，每帧移动xy的距离--%>
<%--function Circle(x, y, r, moveX, moveY) {--%>
<%--this.x = x, this.y = y, this.r = r, this.moveX = moveX, this.moveY = moveY;--%>
<%--}--%>
<%--//生成max和min之间的随机数--%>
<%--function num(max, _min) {--%>
<%--var min = arguments[1] || 0;--%>
<%--return Math.floor(Math.random() * (max - min + 1) + min);--%>
<%--}--%>
<%--// 绘制原点--%>
<%--function drawCricle(cxt, x, y, r, moveX, moveY) {--%>
<%--var circle = new Circle(x, y, r, moveX, moveY);--%>
<%--cxt.beginPath();--%>
<%--cxt.arc(circle.x, circle.y, circle.r, 0, 2 * Math.PI);--%>
<%--cxt.closePath();--%>
<%--cxt.fill();--%>
<%--return circle;--%>
<%--}--%>
<%--//绘制线条--%>
<%--function drawLine(cxt, x, y, _x, _y, o) {--%>
<%--var line = new Line(x, y, _x, _y, o);--%>
<%--cxt.beginPath();--%>
<%--cxt.strokeStyle = 'rgba(0,0,0,' + o + ')';--%>
<%--cxt.moveTo(line.beginX, line.beginY);--%>
<%--cxt.lineTo(line.closeX, line.closeY);--%>
<%--cxt.closePath();--%>
<%--cxt.stroke();--%>
<%--}--%>
<%--//初始化生成原点--%>
<%--function init() {--%>
<%--circleArr = [];--%>
<%--for (var i = 0; i < POINT; i++) {--%>
<%--circleArr.push(drawCricle(context, num(WIDTH), num(HEIGHT), num(15, 2), num(10, -10) / 40, num(10, -10) / 40));--%>
<%--}--%>
<%--draw();--%>
<%--}--%>
<%--//每帧绘制--%>
<%--function draw() {--%>
<%--context.clearRect(0, 0, canvas.width, canvas.height);--%>
<%--for (var i = 0; i < POINT; i++) {--%>
<%--drawCricle(context, circleArr[i].x, circleArr[i].y, circleArr[i].r);--%>
<%--}--%>
<%--for (var i = 0; i < POINT; i++) {--%>
<%--for (var j = 0; j < POINT; j++) {--%>
<%--if (i + j < POINT) {--%>
<%--var A = Math.abs(circleArr[i + j].x - circleArr[i].x),--%>
<%--B = Math.abs(circleArr[i + j].y - circleArr[i].y);--%>
<%--var lineLength = Math.sqrt(A * A + B * B);--%>
<%--var C = 1 / lineLength * 7 - 0.009;--%>
<%--var lineOpacity = C > 0.03 ? 0.03 : C;--%>
<%--if (lineOpacity > 0) {--%>
<%--drawLine(context, circleArr[i].x, circleArr[i].y, circleArr[i + j].x, circleArr[i + j].y, lineOpacity);--%>
<%--}--%>
<%--}--%>
<%--}--%>
<%--}--%>
<%--}--%>
<%--//调用执行--%>
<%--window.onload = function () {--%>
<%--init();--%>
<%--setInterval(function () {--%>
<%--for (var i = 0; i < POINT; i++) {--%>
<%--var cir = circleArr[i];--%>
<%--cir.x += cir.moveX;--%>
<%--cir.y += cir.moveY;--%>
<%--if (cir.x > WIDTH) cir.x = 0;--%>
<%--else if (cir.x < 0) cir.x = WIDTH;--%>
<%--if (cir.y > HEIGHT) cir.y = 0;--%>
<%--else if (cir.y < 0) cir.y = HEIGHT;--%>
<%--}--%>
<%--draw();--%>
<%--}, 16);--%>
<%--}--%>
<%--</script>--%>
<%--</div>--%>

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
                <button id="signIn-button" name="signIn-button" type="button" class="signIn-button">登录</button>
            </div>
        </form>
        <div id="message-info" class="message-info">
            <span id="message"></span>
        </div>
    </div>
</div>

<script src="<%=request.getContextPath()%>/static/js/jquery.min.js"></script>
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
        $('#signIn-button').click(function () {
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
