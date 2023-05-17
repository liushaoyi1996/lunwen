<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>用户添加页面</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="${base}/style/style.css">
    <script type="text/javascript" src="${base}/js/My97DatePicker/WdatePicker.js">
    </script>
</head>
<body>
    <h1>添加用户</h1>
    <hr/>
    <form action="${base}/user/add" method="post">
        <table>
            <tr>
                <th>用户名</th>
                <td>
                   <input type="text" name="username"/>
                </td>
            </tr>
            <tr>
                <th>密码</th>
                <td>
                    <input type="password" name="password"/>
                </td>
            </tr>
            <tr>
                <th>性别</th>
                <td>
                    男:<input type="radio" name="gender" value="MALE"/>
                    女:<input type="radio" name="gender" value="FEMALE"/>
                </td>
            </tr>
            <tr>
                <th>生日</th>
                <td>
                    <input class="Wdate" type="text" name="birthday" onclick="WdatePicker()"/>
                </td>
            </tr>
            <tr>
                <th colspan="2">
                    <input type="submit" value="添加"/>
                </th>
            </tr>
        </table>

    </form>
</body>
</html>