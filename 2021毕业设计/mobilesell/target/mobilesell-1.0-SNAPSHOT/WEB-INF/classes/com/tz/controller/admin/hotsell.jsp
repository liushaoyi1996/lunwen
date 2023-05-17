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
      <th>影片编号</th>
      <th>片名</th>
      
      <th>操作</th>
      <th>操作</th>
      
      </tr>
  </thead>
  <tbody>
  <c:forEach items="${mlist }" var="m">
    <tr class="danger">
      <td>${m.categoryname }</td>
      <td>${m.model }</td>
     
      <td><button class="btn btn-info" onclick="hotsell(${m.id})">热卖</button><button class="btn btn-info" onclick="hotsella(${m.id})">取消</button></td>
      <td><button class="btn btn-info" onclick="lowprice(${m.id})">特价</button><button class="btn btn-info" onclick="lowpricea(${m.id})">取消</button></td>
      
     </tr>
     
   </c:forEach>
  </tbody>
</table>
			      
 </div>
 </body>
 <script>
 function hotsell(id){
	 if(confirm("确定设置热卖吗？")){
		 window.location.href="${path}/admin/remai?id="+id;
	 }
 }
 function hotsella(id){
     if(confirm("确定取消热卖吗？")){
         window.location.href="${path}/admin/remaia?id="+id;
     }
 }
 function lowpricea(id){
     if(confirm("确定取消特价吗？")){
         window.location.href="${path}/admin/tejia?id="+id;
     }
 }
 function lowprice(id){
	 if(confirm("确定设置特价吗？")){
		 window.location.href="${path}/admin/tejia?id="+id;
	 }
 }
 </script>
</html>
