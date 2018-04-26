<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>produce</title>
<link rel="stylesheet" type="text/css" href="cssi/normalize.css" />
<link rel="stylesheet" href="cssi/main.css" />
<link rel="stylesheet" href="cssi/magic.min.css" />

<link rel="stylesheet" type="text/css" href="css1/head1.css">
<script type="text/javascript" src="js1/jquery-1.12.4.min.js"></script>

<style type="text/css">
.img{
	width: 100%;
	height: 100%;
	
}
.header{
margin-top: 0%;
}
</style>
</head>
<body>
	<!-- <ul id="nav">
	<li><a href="index.html">Puff</a></li>
	<li><a href="open.html">Open</a></li>
	<li><a href="perspective.html">Perspective</a></li>
	<li><a href="rotate.html">Rotate</a></li>								
	<li><a href="slide.html">Slide</a></li>					
	<li><a href="tin.html">Tin</a></li>														
	<li class="current"><a href="bomb.html">Bomb</a></li>												
	</ul>
		 -->
<div class="header">
	<div class="headerinner">
		<ul class="headernav">
			<li class="logo">
				<!---<img src="" alt="" />--->
			</li>
			<li><a href="index.jsp">主页</a></li>
			<li><a href="my/ShowOrders.action" >我的订单</a></li>
			<li><a href="my/myCar.action" >购物车</a></li>
			<li><a href="srv.jsp">客户服务</a></li>
			<li><a href="about.jsp" >about</a></li>
			<li>
				<c:if test="${not empty user.uid }"><a onclick="logout()">退出</a></c:if>
				<c:if test="${empty user.uid }"><a href="../vpilogin.jsp">登录</a></c:if>
			</li>
		</ul>
	</div>
</div>
<script>
$(function(){
	/*搜索*/
	$(".search_pic").click(function(){
		$(".headernav").fadeOut(500);
		$(".search_main").fadeIn(1000);
	});
	$(".search_main .close_btn").click(function(){
		$(".search_main").fadeOut(500);
		$(".headernav").fadeIn(1000);
	});
	/*登录*/
	$(".list a").click(function(){
		$(".member").slideToggle(500);
	});

});
</script>
	<div class="container">
	<c:forEach items="${listP }" var="product">
		<div class="box">
			<div class="box-content">
				<div class="box-wrapper">
					${product.descs }<span class="name">库存：${product.balance }</span>
					<div class="row">折扣价：￥${product.price }</div>					
				</div>
			</div>
			<div class="box-overlay magictime" data-hover="bombRightOut" data-return="">
				<c:forEach items="${product.src }" var="img" begin="0" end="0">
					<img src="img/${img}" alt="" class="img" width="160" height="30"/>
				</c:forEach>
			</div>
			<a class="link" onclick="proInfo(${product.pid})" target="_blank"></a>						
		</div>
	</c:forEach>								
	</div>
<script type="text/javascript">
	function proInfo(pid){
		window.location.href="proinfo?pid="+pid;
	}
</script>
<script src="jsi/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="jsi/main.js"></script>
</body>
</html>