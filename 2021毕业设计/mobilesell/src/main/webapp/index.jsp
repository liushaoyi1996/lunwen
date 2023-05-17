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
li{
}
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
      <th>分类名称</th>
      <th>型号</th>
      <th>价格</th>

      <th>操作</th>
      </tr>
  </thead>
  <tbody>
  <c:forEach items="${mobilelist }" var="mobile">
    <tr class="danger">
      <td>${mobile.category.categoryname }</td>
      <td>${mobile.model }</td>
      <td>${mobile.price }</td>
      <td><a class="btn btn-primary" onclick="add(${mobile.id})">加入购物车</a></td>
     </tr>
     
   </c:forEach>
  </tbody>
</table>
    <div style="width:70%;margin: 10px auto;margin-top:22px">
    <form action="${path }/index/selectbycate">
    <select name="categoryid" style="float:left;margin-top:-10px">
    <option value="0">请选择</option>
    <option value="1">华为</option>
    <option value="2">小米</option>
    <option value="3">苹果</option>
    </select> 
    <button class="btn btn-info" style="float:left;margin-top:-15px;margin-left:11px;margin-right: 11px">查询</button></form>&nbsp;&nbsp;
    <form action="${path }/index/selectbymodel">
    <input placeholder="输入型号关键词" name="model" type="text" style="float:left;margin-top:-30px;margin-left: 150px"/>
    <button class="btn btn-info" style="float:left;margin-top:-30px;margin-left:320px">查询</button></form><br><br>
    </div>
</div>
</div>
</body>
<script>
    function add(mid){
    	
    	$.ajax({
    		url:'${path}/index/add',
    		type:'POST',
    		data:{"mid":mid},
    		success:function(res){
    		    if (res=="ok"){
                    alert("加入成功");
                }else{
                    alert("请先登录");
                }
    		}
    	});
    }
</script>
</html>