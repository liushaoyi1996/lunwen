<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" scope="application"></c:set>

<c:if test="${admin==null }">
 <c:redirect url="../admin/login.jsp"></c:redirect>
 </c:if>
    
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>
   </title>
    <link rel="stylesheet" type="text/css" href="${path }/dist/css/bootstrap.min.css" />
    <script type="text/javascript" src="${path}/dist/js/jquery.min.js"></script>
    <script type="text/javascript" src="${path}/dist/js/bootstrap.min.js"></script>
   
  </head>
  

 <body style="background-color:#2a8dc8">
 
 <%@ include file="../admin/top.jsp" %>
 
 <%@ include file="../admin/menu.jsp" %>

 <%@ include file="../admin/right.jsp" %>
 <div style="margin-top:0px;margin-left:15px;padding-right:0px;height:535px;background-color:#ffffff" class="col-xs-9 col-md-9">
      
      
      <table class="table" style="width:98%;margin: 10px auto">
  <thead>
    <tr>
      <th style="width:100px">新闻编码</th>
      <th>新闻内容</th>
      <th>操作</th>
      </tr>
  </thead>
  <tbody>
  <c:forEach items="${contentlist }" var="newlist">
    <tr class="danger">
      <td>${newlist.id }</td>
      <td>${newlist.content }</td>
      <td><button class="btn btn-danger" onclick="delnews(${newlist.id})">删除</button></td>
     </tr>
     
   </c:forEach>
  </tbody>
</table>
      
 </div>
 </body>
 <script>
 function delnews(id){
	 if(confirm("确定删除吗？")){
		 window.location.href="${path}/admin/delnew?id="+id;
	 }
 }

 </script>
</html>
