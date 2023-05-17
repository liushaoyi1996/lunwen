<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="path" value="${pageContext.request.contextPath}" scope="application"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>主页</title>
<link rel="stylesheet" type="text/css" href="${path}/dist/css/bootstrap.min.css">

<style>

li:hover{
	background-color:#5BC0DE;
}
</style>
<script type="text/javascript" src="${path}/dist/js/jquery.min.js"></script>
<script type="text/javascript" src="${path}/dist/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="../nav.jsp" %>

<div style="background-color:#EEEEEE;height:1000px;margin-top:-20px">
<br><br>
 <table class="table" style="width:70%;margin: 10px auto">
  <thead>
    <tr>
      <th style="width:100px">内容编号</th>
      <th>具体内容</th>
      
      </tr>
  </thead>
  <tbody>
  <c:forEach items="${contentlist }" var="con">
    <tr class="danger">
      <td>${con.id }</td>
      <td>${con.content }</td>
      
     </tr>
     
   </c:forEach>
  </tbody>
</table>
</div>


</body>
</html>