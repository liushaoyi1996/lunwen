<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="path" value="${pageContext.request.contextPath}" scope="application"></c:set>
<%-- <c:redirect url="/index/movie"></c:redirect> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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

<div>
 <table class="table" style="width:70%;margin: 10px auto">
  <thead>
    <tr>
      <th>型号</th>
      <th>价格</th>
      <th>数量</th>>
      <th>操作</th>
      <th>操作</th>
      </tr>
  </thead>
  <tbody>
  <c:forEach items="${clist }" var="c">
    <tr class="danger">
      <td>${c.model }</td>
      <td>${c.price }</td>
      <td><input type="text" value="${c.num }" id="num"></td>
      <td><a class="btn btn-info" onclick="change(${c.id})">修改数量</a></td>
      <td><a class="btn btn-info" onclick="deletes(${c.id})">删除</a></td>
     </tr>
     
   </c:forEach>
  </tbody>
</table>
<button class="btn btn-primary" style="margin-left:200px" onclick="tijiao()">提交订单</button>
</div>
</div>
</body>
<script>
    function change(mid){
    	
    	$.ajax({
    		url:'${path}/index/changenum',
    		type:'POST',
    		data:{"mid":mid,"num":$("#num").val()},
    		success:function(){
    			alert("修改成功");
    		}
    	});
    }
    function deletes(mid){
    	
    	$.ajax({
    		url:'${path}/index/deleteitem',
    		type:'POST',
    		data:{"mid":mid},
    		success:function(){
    			alert("删除成功");
    			window.location.reload();
    		}
    	});
    }
    function tijiao(){
    	$.ajax({
    		url:'${path}/index/submit',
    		type:'POST',
    		data:"",
    		success:function(){
    			alert("提交成功");
    			window.location.reload();
    		}
    	});
    }
</script>
</html>