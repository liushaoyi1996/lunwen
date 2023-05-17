<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
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
 <div style="float:left;margin-top:-32px;width:1100px;height:535px;background-color:#ffffff">

    <form method="post" action="${path }/admin/reply" name="formPw">
			<table width="70%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-top:38px;margin-left:10px">
				<caption><h3>回复留言</h3></caption>
				<tr bgcolor="#FFFFFF">
				    
				    <td width="75%" bgcolor="#FFFFFF">
				       <textarea class="form-control" rows="3" id="a1" name="reply"></textarea>
				    </td>
				</tr>
				
				<tr height=5><input type="hidden" name="id" id="hid"></tr>
				<tr bgcolor="#FFFFFF">
			        <td width="75%" bgcolor="#FFFFFF">
			             <input class="btn btn-info" type="submit" value="回复"/>
			             &nbsp;&nbsp;&nbsp;
			             <input class="btn btn-default" type="reset" value="重置"/>
			        </td>
				</tr>
			</table>
			</form>
</div>
</body>
<script>
var url = location.search; 
var id= url.substring(url.indexOf("=")+1);
$("#hid").val(id);
</script>
</html>