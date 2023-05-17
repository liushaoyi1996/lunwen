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
 <div style="float:left;margin-top:-32px;width:1100px;height:535px;background-color:#ffffff">
      
      
      <table class="table" style="width:98%;margin: 10px auto">
  <thead>
    <tr>
      <th>日期</th>
      <th>时间</th>
      <th>对手</th>
      <th>比分</th>
      <th>地点</th>
      <th>操作</th>
      </tr>
  </thead>
  <tbody>
  <c:forEach items="${matchlist }" var="match">
    <tr class="danger">
      <td>${match.date }</td>
      <td>${match.time }</td>
      <td>${match.against }</td>
      <td>${match.score }</td>
      <td>${match.place }</td>
      <td><button class="btn btn-danger" onclick="deletematch(${match.id})">删除</button></td>
     </tr>
     
   </c:forEach>
  </tbody>
</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 8px;">
			  <tr>
			    <td>
			      <input type="button" class="btn btn-primary" value="新增比赛" onclick="add()" />
			    </td>
			  </tr>
		    </table>
      
 </div>
 </body>
 <script>
 function deletematch(id){
	 if(confirm("确定删除吗？")){
		 window.location.href="${path}/admin/deletematch?id="+id;
	 }
 }
 function add(){
	 window.location.href="${path}/admin/addmatch.jsp";
 }
 </script>
</html>
