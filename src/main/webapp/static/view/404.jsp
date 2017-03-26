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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/main.css">
</head>
<body>
<div class="card">
    <h2>404 Not Found</h2>
    <p>请求的页面不存在...</p>
    <a href="<%=request.getContextPath()%>/main">返回首页</a>
</div>
</body>
</html>
