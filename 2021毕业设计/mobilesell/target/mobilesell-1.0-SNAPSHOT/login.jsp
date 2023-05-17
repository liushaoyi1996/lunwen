<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="${path}/dist/css/bootstrap.min.css">
		<style type="text/css">
			#lay_outer {
				border: 1px solid #ccc;
				border-radius: 6px 6px 0 0;
				padding: 20px 30px;
				margin-top: 100px;
				width:700px;
				margin: 0 auto
			}
		</style>		
		<script src="${pageContext.request.contextPath}/dist/js/jquery.min.js"></script>
		<script type="text/javascript" src="${path}/dist/js/bootstrap.min.js"></script>
	</head>

	<body>
		
			<div id="lay_outer">
			<fieldset>
				<legend>用户登录入口</legend>
		<form class="form-horizontal" role="form" action="" id="form1">
			<table>
			<tr>
				<td><label class="control-label">用户名&nbsp;&nbsp;</label></td>
				<td><input type="text" id="id" class="form-control" placeholder="请输入名字" style="width:400px"></td>
				<td></td>
			</tr>
			<tr>
				<td><label class="control-label">密码&nbsp;&nbsp;</label></td>
				<td><input type="password" id="password" class="form-control" placeholder="请输入密码" style="width:400px"></td>
				<td><span id="validate" style="display:none">请全部正确填写！</span></td>
			
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
					<td><button type="button" id="login" class="btn btn-primary">登录</button>
					</td>
					<td></td>
					<td></td>
			</tr>
			</table>
		</form>
		</fieldset>
		</div>
		
		<script>
		$("#login").click(function(){ 
			if($("#id").val().length==0){
				alert("用户名不能为空");
			}else if($("#password").val().length==0){
				alert("密码不能为空");
			}
		
	});
		    $("#login").click(function(){
		        $.ajax({url:"${pageContext.request.contextPath}/user/login",
		        	data: {id:$("#id").val(), password:$("#password").val()},
		        	success:function(data){
		            if(data=="right"){
		            	window.location.href="${pageContext.request.contextPath}";
		            	}else{
		            		$('#validate').css('display','block');
		            		alert("账号或密码错误");
		            	}
		        }});
		    });
		   
		</script>
	</body>

</html>