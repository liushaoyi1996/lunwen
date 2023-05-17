<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${path}/dist/css/bootstrap.min.css">
<title></title>
    <script src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="${path}/dist/js/bootstrap.min.js"></script>
    <script>
    	
    </script>
<style>
			table{
				width:50%;
				margin:auto;
				margin-top: 50px;
				border: 0px solid #999;
				border-collapse: collapse;
			}
			table td{
				border: 0px solid #999;
				height: 30px;
			}
			h3{
				color: white;
				text-shadow: 2px 2px 4px #000000;
				font-size: 32px;
			}
			input{
				width:95%;
				height:100%;
			}
			span{
				color: #ccc;
				padding-left: 10px;
			}
			div{
				width: 300px;
				margin: auto;
				
			}
			button{
				width: 80px;
				text-align: center;
			}
		</style>
</head>
<body>
<form action="${pageContext.request.contextPath}/user/register" class="form-horizontal" role="form"  id="form1">
		<table>
			<caption><h3>用户注册入口</h3></caption>
			<tr>
				<td>用户名</td>
				<td><input type="text" name="userId" class="form-control" id="a1"></td>
				<td><span id="red1">请输入用户名(必填)</td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="password" name="password" class="form-control" id="a2"></td>
				<td><span id="red2">请输入用户密码(必填)</span></td>
			</tr>
			<tr>
				<td>姓名</td>
				<td><input type="text" name="user_Name" class="form-control"></td>
				<td><span  id="red3">请输入名称</span></td>
			</tr>
			<tr>
				<td>地址</td>
				<td><input type="text" name="user_Address" class="form-control"></td>
				<td><span id="red4">请输入电话</span></td>
			</tr>
			<tr>
				<td>电话</td>
				<td><input type="text" name="connect" class="form-control"></td>
				<td><span id="red5">请输入地址</span></td>
			</tr>
		</table>
		<br><br>
		<div>
			<button type="button" class="btn btn-primary" style="margin-left:0px;" id="reg">注册</button>
		</div>
		</form>
</body>
<script>
$("#reg").click(function(){ 
		if($("#a1").val().length==0){
			alert("用户名不能为空");
			$("#red1").css("color","red");
		}else if($("#a1").val().length<5){
			alert("用户名长度不够");
			$("#red1").css("color","red");
		}else if($("#a2").val().length==0){
			alert("密码不能为空");
			$("#red2").css("color","red");
		}else if($("#a2").val().length<5){
			alert("密码长度不够");
			$("#red2").css("color","red");
		}else if($("#a1").val().length!=0&&$("#a2").val().length!=0 ){
			$("#form1").submit();
			alert("注册成功");
		}else{
			
		}
	
});
</script>
</html>