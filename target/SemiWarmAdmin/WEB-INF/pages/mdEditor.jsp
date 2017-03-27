<%--
  Created by IntelliJ IDEA.
  User: alibct
  Date: 2017/3/15
  Time: 下午12:57
  Desc: Markdown 编辑器
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Markdown 编辑器</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/style.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/editormd.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/bootstrap.min.css"/>
</head>
<body>
<div id="container">
    <div>
        <button id="getHtml" type="button" class="btn btn-primary"></button>
    </div>
    <div id="mdEditor">
        <textarea class="editormd-markdown-textarea" name="markdown-area" style="display:none;"># 请输入标题</textarea>
        <textarea class="editormd-html-textarea" name="html-area"></textarea>
    </div>
</div>
<script src="<%=request.getContextPath()%>/static/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/editormd.js"></script>
<script type="text/javascript">
    var editor;
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
            imageUploadURL: "<%=request.getContextPath()%>/file/upload/editormd/images"
        });
    });

    $("#getHtml").bind('click',function () {
        alert(editor.getHTML());
    });
</script>
</body>
</html>
