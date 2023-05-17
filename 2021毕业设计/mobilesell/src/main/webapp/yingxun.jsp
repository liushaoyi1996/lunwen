<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%       
    String str = request.getParameter("info");//用request得到
    request.setAttribute("str", str);
%> 

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${path}/dist/css/bootstrap.min.css">
<title></title>
    <script src="${path}/dist/js/jquery.min.js"></script>
    <script type="text/javascript" src="${path}/dist/js/bootstrap.min.js"></script>
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

		<table>
			<caption><h3>电影资讯</h3></caption>
			
			<tr></tr>
			</table>
			<div>
			   <c:out value="${str}"/>
			</div>
			
</body>

</html>