<%--
  Created by IntelliJ IDEA.
  User: alibct
  Date: 2017/3/24
  Time: 下午7:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>404 Not Found</title>
    <style>
        .card {
            width: 500px;
            height: 250px;
            position: absolute;
            z-index: 0;
            text-align: center;

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

        .card p {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="card">
    <h2>404 Not Found</h2>
    <p>请求的页面不存在...</p>
    <a href="<%=request.getContextPath()%>/main">返回首页</a>
</div>
</body>
</html>
