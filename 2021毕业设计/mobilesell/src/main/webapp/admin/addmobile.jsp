<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath}" scope="application"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
    <link rel="stylesheet" type="text/css" href="${path }/dist/css/bootstrap.min.css" />
    <script type="text/javascript" src="${path}/dist/js/jquery.min.js"></script>
    <script type="text/javascript" src="${path}/dist/js/bootstrap.min.js"></script>
</head>
<body style="background-color:#2a8dc8">

<%@ include file="../admin/top.jsp" %>
 
 <%@ include file="../admin/menu.jsp" %>

 <%@ include file="../admin/right.jsp" %>
 <div style="margin-top:0px;margin-left:15px;padding-right:0px;height:535px;background-color:#ffffff" class="col-xs-9 col-md-9">

    <form method="post" action="${path }/admin/addmobile" name="formPw">
			<table width="70%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-top:38px;margin-left:10px">
				
				<tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">
				    分类名称：
				    </td>
				    <td width="75%" bgcolor="#FFFFFF">
				        <input class="form-control" type="text"  name="categoryname" size="20" />
				    </td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">
				       型号：
				    </td>
				    <td width="75%" bgcolor="#FFFFFF">
				         <input class="form-control" type="text"  name="model" size="20" />
				    </td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">
				    价格：
				    </td>
				    <td width="75%" bgcolor="#FFFFFF">
				        <input class="form-control" type="text"  name="price" size="20" />
				    </td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">
				    分类：
				    </td>
				    <td width="75%" bgcolor="#FFFFFF">
				        <select name="cid">
				           <option value="1">华为</option>
				           <option value="2">小米</option>
				           <option value="3">苹果</option>
				        </select>
				    </td>
				</tr>
				
				<tr height=5></tr>
				<tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">
				        &nbsp;
				    </td>
			        <td width="75%" bgcolor="#FFFFFF">
			             <input class="btn btn-info" type="submit" value="添加"/>
			             &nbsp;&nbsp;&nbsp;
			             <input class="btn btn-default" type="reset" value="重置"/>
			        </td>
				</tr>
			</table>
			</form>
</div>
</body>
</html>