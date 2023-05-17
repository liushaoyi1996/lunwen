<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>用户头像上传</title>
    <meta charset="utf-8">
</head>
<body>
    <h1>头像上传</h1>
    <hr/>
    <form action="${base}/upload" method="post" enctype="multipart/form-data">
        请上传您的头像:<input type="file" name="file"/>
        <input type="submit" value="上传"/>
    </form>
</body>
</html>