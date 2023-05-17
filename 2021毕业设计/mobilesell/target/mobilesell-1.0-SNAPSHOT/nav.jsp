<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" scope="application"></c:set>

<div style="background-color:#BE0E3C">
<div class="container" style="width:70%;margin-left:150px;">
<div >
	<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
		<!-- 轮播（Carousel）指标 -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="2" class="active"></li>
		</ol>
		<!-- 轮播（Carousel）项目 -->
		<div class="carousel-inner">
			<div class="item active">
				<img src="${path }/images/1.jpg" alt="First slide" style="height:350px">
				<div class="carousel-caption"></div>
			</div>
			<div class="item">
				<img src="${path }/images/6.jpg" alt="Second slide" style="height:350px">
				<div class="carousel-caption"></div>
			</div>
			<div class="item">
				<img src="${path }/images/1.jpg" alt="Third slide" style="height:350px">
				<div class="carousel-caption"></div>
			</div>
		</div>
		<!-- 轮播（Carousel）导航 -->
		
	</div>
</div>
<!-- 轮播end -->
<nav class="navbar navbar-default col-xs-9 col-md-12" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#example-navbar-collapse">
				<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

		</div>
		<div class="collapse navbar-collapse" id="example-navbar-collapse">
			<ul class="nav navbar-nav col-xs-9 col-md-9" style="width:100%">
				<li><a href="${path }/index.jsp"><b>首页</b></a></li>				
				<li><a href="${path }/index/category"><b>手机分类</b></a></li>				
				
				<li><a href="${path }/index/cart"><b>购物车</b></a></li>
				<li><a href="${path }/index/hotsell"><b>热卖</b></a></li>
				
				<li><a href="${path }/index/lowprice"><b>特价</b></a></li>		
				
				<li><a href="${path }/admin/login.jsp"><b>管理员模块</b></a></li>
				<li><a href="${path }/index/news"><b>新闻</b></a></li>
				<li><a href="${path }/index/gonggao"><b>公告</b></a></li>

				<%if(session.getAttribute("user")==null || session.getAttribute("user")==""){%>
				<li><a href="${path }/login.jsp"><b>登录${id }</b></a></li>
				<li><a href="${path }/register.jsp"><b>注册</b></a></li>
				<%}else{%>
				<li><a href=""><b>当前登录用户:${id }</b></a></li>
				<li><a href="${path }/user/logout"><b>退出</b></a></li>
				<%}%>
			</ul>
			
			</div>
		</div>
</nav>
</div>
</div>
<script>
</script>




