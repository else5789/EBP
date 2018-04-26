<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的订单</title>
<link rel="stylesheet" type="text/css" href="css1/head.css">
<link rel="stylesheet" href="css6/reset.css">
<link rel="stylesheet" href="css6/animate.css">
<link rel="stylesheet" href="css6/jd_cart.css">

<script type="text/javascript" src="js1/jquery-1.12.4.min.js"></script>
<style type="text/css">
body{
	margin:0;
	font-family:Arial, sans-serif;
	font-size:14px;
	background-color:#efe1d3;
	color:black;
	padding-top:0px;
	background-image:url(../img/indexbg2.png); 
	background-repeat:no-repeat;
    background-size:100% 144%;
}
</style>

</head>
<script type="text/javascript">
 	function logout(){
		var flag2=confirm("确认退出登录？");
		if(flag2){
			window.location="../my/logout.action";
			alert("成功退出登录!");
		}else{
			alert("取消退出登录!");
		}
 	}
	$(function(){
		$(".orderDiv").hide();
	})
	function showtd(oid){
		/* alert(oid); */
			$.ajax({  
			  url: "userQueryAllOrderList?oid="+oid,  
			  type:'post',
			  dataType:"html",  
			  data:"",
			  success:function(data){  
				$("#div"+oid).html(data);
			}
	}); 
		//$("#div"+oid).hide();
		$("#div"+oid).show();
	}
	function hidediv(oid) {
		$("#div"+oid).hide();
	}
</script>
<body>
<div class="header">
	<div class="headerinner">
		<ul class="headernav">
			<li class="logo">
				<!---<img src="" alt="" />--->
			</li>
			<li><a href="../index.jsp">主页</a></li>
			<li><a href="#" >我的订单</a></li>
			<li><a href="../my/myCar.action">购物车</a></li>
			<li><a href="../srv.jsp" >客户服务</a></li>
			<li><a href="../about.jsp" >about</a></li>
			<li>
				<c:if test="${not empty user.uid }"><a onclick="logout()">退出</a></c:if>
				<c:if test="${empty user.uid }"><a href="../vpilogin.jsp">登录</a></c:if>
			</li>
			<li class="search">
				<a class="search_pic"></a>
			</li>
			<li class="list">
				<a></a>
			</li>
		</ul>
		<!-- 搜索 -->
		<form action="">
			<div class="search_main">
				<button class="search_btn" type="submit"></button>
				<input class="search_text" type="text" placeholder="搜索">
				<span class="close_btn"></span>
			</div>
	</form>

 <header class="jd_topBar">
        <a href="#" class="icon_back"></a>
       <center> <font color="#fff" ><h1> 我的订单</h1></font></center>
        <a href="#"class="icon_menu"></a>
    </header>
    
<!--安全提示-->
<div class="safety-tip">
   <p class="fadeInDown animated">您正在查看订单，请放心购物</p>
</div>

<!--店铺-->
<div class="jd_shop">
     <div class="jd_shop_tit">
        <div class="check_box">
            <a href="#" class="jd_check_box"></a>
        </div>
        <div class="shop_info">
            <div class="jd_logo f_left">
                <img src="../img/logo.jpg" alt="">
                <span>${user.username}</span>
            </div>
            <div class="f_right tip m_r10">
               <font color="#e3007e"> 【 615+R 】</font>为您提供服务!&nbsp;&nbsp;客服热线：<font color="#e3007e">615-310-2015</font>
            </div>
        </div>
     </div>

<div class="jd_shop_con">
	<c:forEach items="${orders }" var="list1">
	<div class="product">
        <div class="check_box">
            <a href="#" class="jd_check_box" checked></a>
        </div>
        <div class="shop_info clearfix">
            <a href="#" class="img_box f_left"><img src="images6/detail01.jpg" alt=""></a>
            <div class="info_box">
            	<span onclick='showtd(${list1.oid })' style='text-align: center;'>+</span>
                                                订单号：&nbsp;&nbsp;${list1.oid}<%-- <label class="p_name">${list1.oid}</label> --%>
                &nbsp;&nbsp;&nbsp;提交时间：<span style="text-align: center;">${list1.commitTime }</span>
				&nbsp;&nbsp;&nbsp;总金额:&nbsp;<label class="p_price">&yen;${list1.amount }</label>
                <div class="p_opition">
                   <!-- <div class="change_num f_left">
                   	<br>
                       <span><a href="#" >详情</a></span>
                       <input type="tel">
                       
				    </div> -->
                   <div class="delete_box f_right">
                       <span class="delete_up"></span>
                       <span class="delete_down"></span>
                   </div>
                </div>
            </div>
        </div>
    </div>
    <!--  -->
    <div id="div${list1.oid}" style="margin-left: 5%;width: 90%;height: 100px;" 
    	onclick="hidediv(${list1.oid})"  class="orderDiv">
    	
	</div>
	</c:forEach>
</div>
<script src='js6/jquery.js'></script>
<script src="js6/cartjs.js"></script>

</body>
</html>
