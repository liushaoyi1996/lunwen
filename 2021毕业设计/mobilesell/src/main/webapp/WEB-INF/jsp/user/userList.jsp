<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>用户列表页面</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="${base}/style/style.css">
    <script src="${base }/js/jquery-1.7.2.min.js"></script>
    <script>
        $(function () {
            $(".delBtn").click(function () {
                //发送异步请求
                $.ajax({
                    //请求类型
                    type: "GET",
                    //请求路径
                    url: "${base}/user/delete?id=" + this.id,
                    //处理错误
                    error: function () {
                        alert("处理失败...");
                    },
                    //处理成功
                    success: function () {
                        //$(this);把JS对象转换为jQuery对象
                        document.getElementById("tbl").deleteRow(1);
                    },
                })
            });
            
            $(".uploadBtn").click(function () {
                window.location="${base}/user/preUpload?id=" + this.id;
            });
        });
    </script>
</head>
<body>
<h1>用户列表</h1>
<hr/>
<a href="${base}/user/preAdd">添加用户</a>
<hr>
<table id="tbl">
    <tr>
        <th>编号</th>
        <th>头像</th>
        <th>用户名</th>
        <th>密码</th>
        <th>性别</th>
        <th>生日</th>
        <th>操作</th>
    </tr>
    <c:if test="${!empty users}">
        <c:forEach items="${users}" var="u" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>
                    <c:if test="${!empty u.headImage}">
                        <img src="${base}/images/${u.headImage}.jpg"/>
                    </c:if>
                    <c:if test="${empty u.headImage}">
                        <img src="${base}/images/default.jpg"/>
                    </c:if>
                </td>
                <td>${u.username}</td>
                <td>${u.password}</td>
                <td>${u.gender}</td>
                <td>${u.birthday}</td>
                <td>
                    <input class="delBtn" id="${u.id}" type="button" value="删除"/>
                    <input class="uploadBtn" id="${u.id}" type="button" value="上传头像"/>
                </td>
            </tr>
        </c:forEach>
    </c:if>
    <c:if test="${empty users}">
        <tr>
            <th colspan="6">暂无用户数据...</th>
        </tr>
    </c:if>
</table>
</body>
</html>