<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
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
     
      <th>片名</th>
      <th>座位号</th>
      <th>排期编号</th>
      <th>状态</th>
      <th>操作</th>
      </tr>
  </thead>
  <tbody>
  <c:forEach items="${olist }" var="o">
  
    <tr class="danger">
     
      <td>${o.movie }</td>
      <td>${o.seatnum }</td>
      <td>${o.schedule.id }</td>
      <td>${o.status }</td>
      <td><a onclick="backward(${o.id})">退订</a></td>
     </tr>
     
   </c:forEach>
  </tbody>
</table>


</div>


</body>
<script>
function backward(id){
	  alert("请等待审核");
	  window.location.href = "${path }/index/deleteo?id="+id;
}    
</script>
</html>