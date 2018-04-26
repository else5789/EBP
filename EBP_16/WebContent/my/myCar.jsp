<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title>购物车</title>
<link rel="stylesheet" type="text/css" href="css1/head.css">
<link rel="stylesheet" href="css6/reset.css">
<link rel="stylesheet" href="css6/animate.css">
<link rel="stylesheet" href="css6/jd_cart.css">

<script type="text/javascript" src="js1/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js3/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js3/shopping.js"></script>

<link type="text/css" rel="stylesheet" href="css3/base.css" />
<link type="text/css" rel="stylesheet" href="css3/module.css"  />
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
<body><script src="/demos/googlegg.js"></script>
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
</script>
<div class="header">
	<div class="headerinner">
		<ul class="headernav">
			<li class="logo">
				<!---<img src="" alt="" />--->
			</li>
			<li><a href="../index.jsp">Home</a></li>
			<li><a href="../my/ShowOrders.action" >我的订单</a></li>
			<li><a href="#">购物车</a></li>
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

</div>
</div>
<!--头部开始-->
<div class="header1">
	<h1>${user.username }&nbsp;&nbsp;的购物车</h1>
<!-- 	<a href="#" class="back"><span></span></a> -->
	<a href="#" class=""></a>
</div>
<!--头部结束-->
<div class="shopping">
	
	<div class="shop-group-item">
		<div class="shop-name">
			<input type="checkbox" class="check goods-check shopCheck">
			<h4><a href="#">全选</a></h4>
			<!-- <div class="coupons"><span>领券</span><em>|</em><span>编辑</span></div> -->
		</div>
		<ul>
				<c:forEach items="${session_shoppingcartitems}" var="item">
					<li id="item${item.scid}">
						<div class="shop-info">
							<input type="checkbox" class="check goods-check goodsCheck"
								name="check" value="${item.scid}">
							<div class="shop-info-img">
								<a href="#"><img src="images3/computer.jpg" /></a>
							</div>
							<div class="shop-info-text">
								<h4>${item.descs }</h4>
								<div class="shop-brief">
									<span>重量:3.3kg</span><span>颜色:标配版</span><span>版本:13.3英寸</span>
								</div>
								<div class="shop-price">
									<div class="shop-pices">
										￥<b class="price" id="price${item.scid}">${item.price }</b>
									</div>
									<div class="shop-arithmetic">
										<a href="javascript:;" class="minus">-</a> <span id="num${item.scid}" class="num">${item.mount }</span>
										<a href="javascript:;" class="plus">+</a>
									</div>
								</div>
							</div>
							<input type="button" value="删除"
								onclick="delectbuychar(${item.scid })" />
						</div>
					</li>
				</c:forEach>
			</ul>
		<div class="shopPrice">总计：￥<span class="shop-total-amount ShopTotal">0.00</span></div>
	</div>
</div>
<table border="0" cellspacing="0"
	style="margin-left: 5%; width: 90%; margin-top: 2%;float:buttom">
	<tr>
		<td width="40%">收货地址：<input id="address" type="text" size="30"
			value="合肥工业大学翡翠湖校区" /></td>
		<td width="40%">收件人姓名：<input type="text" id="recvname"
			value="${user.name}" /></td>
		<td width="40%">电话号码：<input type="text" id="phone"
			value="${user.telno}" /></td>
	</tr>
</table>

<div class="payment-bar">
	<!-- <div class="all-checkbox"><input type="checkbox" class="check goods-check" id="AllCheck">全选</div> -->
	<div class="shop-total">
		<strong>总价：<i class="total" id="AllTotal">0.00</i></strong>
		<!-- <span>减免：00.00</span> -->
	</div>
	<a onclick="Checkout()" class="settlement">结算</a> 
	<!-- <input type="button" class="settlement" 
		value="继续购物" onclick="returnShop()" /> -->
</div>
<script type="text/javascript">
		function returnShop(scid) {
			window.location.href = "../user/ShowProducts.jsp";
		}

		function delectbuychar(scid) {
			//alert(scid);
			/* alert($("#mitem"+scid).html());
			alert($("#sitem"+scid).html()); */
			if(confirm("确认删除此购物车项吗？")){
				$("#item" + scid).remove();
				$.ajax({
					type : "post",
					url : "deleteById",
					data : {
						scid : scid
					},
					dataType : "text",
					success : function(row) {
						if (row == "1") {
							alert("删除成功");
						} else {
							alert("删除失败");
						}
					}
				});
			}
			else{
				alert("取消删除！");
			}
		}
		function Checkout() {
			obj = document.getElementsByName("check");
		    check_val = [];
		    num_val = [];
		    for(k in obj){
		        if(obj[k].checked){
		            check_val.push(obj[k].value);
		            obj_num = document.getElementById("num"+obj[k].value);
		            //alert("num"+obj[k].value);
					num_val.push(obj_num.innerHTML);
					//alert(obj_num.innerHTML);
		        }
		    }
		    //alert(check_val);
		    //alert(typeof(check_val));
		    //alert(num_val);
		    var sumPrice=document.getElementById("AllTotal").innerHTML;
			var address = document.getElementById("address").value;
			var phone = document.getElementById("phone").value;
			var recvname = document.getElementById("recvname").value;
			//alert(check_val+","+sumPrice+","+address + "," + recvname + "," + phone);
			$.ajax({
				url : "checkMoney",
				type : "post",
				data : {
					check_val:check_val,
					num_val:num_val,
					sumPrice :sumPrice,
					address : address,
					phone : phone,
					recvname : recvname,
				},
				dataType : "text",
				traditional:true,
				success : function(row) {
					if (row == "1") {
						alert("结算成功");
					} else {
						alert("金额失败，请充值！");
					}
				}
			});
		}
	</script>

</body>
</html>

