<%--
  Created by IntelliJ IDEA.
  User: alibct
  Date: 2017/3/15
  Time: 下午12:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Markdown 编辑器</title>
    <link rel="stylesheet" href="../../static/css/style.css"/>
    <link rel="stylesheet" href="../../static/css/editormd.css"/>
</head>
<body>
<div id="container">
    <div id="mdEditor">
        <textarea style="display:none;">### 请输入内容</textarea>
    </div>
</div>
<script src="../../static/js/jquery.min.js"></script>
<script src="../../static/js/editormd.js"></script>
<script type="text/javascript">
    var editor;
    $(function () {
        editor = editormd("mdEditor", {
            width: "90%",
            height: 640,
            syncScrolling: "single",
            path: "../../static/lib/",
            saveHTMLToTextarea: true,
            emoji: true,
            imageUpload: true,
            imageFormats: ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
            imageUploadURL: ""
        });
    });
</script>
</body>
</html>
