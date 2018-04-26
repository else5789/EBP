<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商品详情</title>
<link rel="stylesheet" type="text/css" href="css/head.css">
<script type="text/javascript" src="js1/jquery-1.12.4.min.js"></script>

<link rel="stylesheet" href="cssf/shouye.css">

<script src="jsc/jquery.min.js"></script>
<script src="jsc/script.js"></script>
<link rel="stylesheet" href="cssc/style.css">
<script src="jsc/jquery.min.js"></script>
<script src="jsc/script.js"></script>

<link rel="stylesheet" href="css4/style.css">

<link rel="stylesheet" href="css/style.css">

<script src="jsc/jquery.min.js"></script>
<script src="jsc/script.js"></script>


<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/index.css">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<style type="text/css">
body{
	margin:0;
	font-family:Arial, sans-serif;
	font-size:14px;
	background-color:white;
	color:#fff;
	padding-top:0px;
	width: 100%;
	background-image:url(img/lh.jpg); 
	background-repeat:no-repeat;
    background-size:100% 1600px;
}
</style>
<script src="jsf/jquery-1.8.3.min.js"></script>
<script   src="jsf/modernizr-custom-v2.7.1.min.js"></script>
<script>
	$(document).ready(function(){
var $miaobian=$('.Xcontent08>div');
var $huantu=$('.Xcontent06>img');
var $miaobian1=$('.Xcontent26>div');
$miaobian.mousemove(function(){miaobian(this);});
$miaobian1.click(function(){miaobian1(this);});
function miaobian(thisMb){
	for(var i=0; i<$miaobian.length; i++){
		$miaobian[i].style.borderColor = '#dedede';
	}
	thisMb.style.borderColor = '#cd2426';

	$huantu[0].src = thisMb.children[0].src;
}
function miaobian1(thisMb1){
	for(var i=0; i<$miaobian1.length; i++){
		$miaobian1[i].style.borderColor = '#dedede';
	}
//		thisMb.style.borderColor = '#cd2426';
	$miaobian.css('border-color','#dedede');
	thisMb1.style.borderColor = '#cd2426';
	$huantu[0].src = thisMb1.children[0].src;
}
		$(".Xcontent33").click(function(){
		var value=parseInt($('.input').val())+1;
		$('.input').val(value);
	})

	$(".Xcontent32").click(function(){	
		var num = $(".input").val()
		if(num>0){
			$(".input").val(num-1);
		}			
		
	})

	})
</script>

</head>
<!-- <script src="/demos/googlegg.js"></script> -->
<body>
<div class="header">
	<div class="headerinner">
		<ul class="headernav">
			
				<!---<img src="" alt="" />--->
			<li><a href="index.jsp">主页</a></li>
			<li><a href="my/ShowOrders.action" >我的订单</a></li>
			<li><a href="my/myCar.action" >购物车</a></li>
			<li><a href="srv.jsp">客户服务</a></li>
			<li><a href="about.jsp" >about</a></li>
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
		<!-- 会员登录 -->
		<div class="member">
			<p>会员中心</p>
			<ul>
				<li>
					<img src="img/huiyuan1.png" alt="">
					<c:if test="${not empty user.uid }"><a onclick="logout()">退出</a></c:if>
					<c:if test="${empty user.uid }"><a href="vpilogin.jsp">登录</a></c:if>
				</li>
				<li>
					<img src="img/huiyuan1.png" alt="">
					<a href="vpiregister.jsp">新会员注册</a>
				</li>
			</ul>
		</div>
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
/* $(function(){
	$('.flexslider').flexslider({
		directionNav: true,
		pauseOnAction: false
	});
}); */
</script>

<script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="js/jquery.edslider.js"></script>
<script>
	$(document).ready(function(){
		//Call plugin
		$('.mySlideshow').edslider({
			width : '100%',
			height: 500
		});
	});
</script>
<script type="text/javascript" lang="javascript">
function logout(){
	var flag2=confirm("确认退出登录？");
	if(flag2){
		window.location="my/logout.action";
		alert("成功退出登录!");
	}else{
		alert("取消退出登录!");
	}
}
</script>


<div class="Xcontent">
	<ul class="Xcontent01">
		<c:forEach items="${product.src }" var="src" begin="0" end="0">
			<div class="Xcontent06">
				<img src="imagesf/shangpinxiangqing/${src }">
			</div>
		</c:forEach>
		<ol class="Xcontent08">
			<c:forEach items="${product.src }" var="src" > 
				<div class="Xcontent07"><img src="imagesf/shangpinxiangqing/${src }"></div>
			</c:forEach>
		</ol>
		<ol class="Xcontent13">
			<div class="Xcontent14"><p>新物品</p></div>
			<div class="Xcontent15">
			<img src="imagesf/shangpinxiangqing/X11.png"></div>
			<div class="Xcontent16"><p>清凉一夏，就在615+R</p></div>
			<div class="Xcontent17">
				<p class="Xcontent18">售价</p>
				<p class="Xcontent19">￥<span>${product.price }</span></p>
				<div class="Xcontent20">
					<p class="Xcontent21">促销</p>
					<p class="Xcontent22">&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  热卖中&nbsp;&nbsp;&nbsp;&nbsp;  领610元夏日礼券，满再赠好礼</p>
				</div>
				<div class="Xcontent23">
					<p class="Xcontent27">描述</p>
					<p class="Xcontent25">30天无忧退货&nbsp;&nbsp;&nbsp;&nbsp;       48小时快速退款 &nbsp;&nbsp;&nbsp;&nbsp;        满88元免邮</p>
				</div>
				
			</div>
			<div class="Xcontent26">
				<p class="Xcontent27">商品介绍</p>
				<p class="Xcontent27"><span>${product.descs }</span></p>
			</div>
			<div class="Xcontent30">
				<p class="Xcontent18">库存：</p>
				<p class="Xcontent19">${product.balance }</p>
				<p class="Xcontent31">数量</p>
				<div class="Xcontent32"><img src="imagesf/shangpinxiangqing/X15.png"></div>
				<input id="buynum" class="input" value="1">
				<div class="Xcontent33"><img src="imagesf/shangpinxiangqing/16.png"></div>
			</div>
			<div class="Xcontent35">
				<c:if test='${empty user.uid}'>
					<a onclick="tip()">
						<img src="imagesf/shangpinxiangqing/X18.png">
					</a>
					<input type="button" value="立即购买" onclick="tip()"/>
				</c:if>
				<c:if test="${not empty user.uid }">
					<a onClick="buyproduct(${product.balance},${product.pid},${user.uid })">
						<img src="imagesf/shangpinxiangqing/X18.png">
					</a>
					<input type="button" value="立即购买" onclick="buynow(${product.balance},${product.pid},${user.uid })"/>
				</c:if>
			</div>
		</ol>
	</ul>
</div>

<script type="text/javascript">
	function tip(){
		alert("请您先登录，再购买此商品！");
	}
	
	function buynow(balance, pid, uid){
		buyproduct(balance, pid, uid);
		alert(balance+","+ pid+","+uid)
		window.location.href="my/myCar.action";
	}
	
	function buyproduct(balance, pid, uid) {
		//alert("buyproduct");
		var buynum = document.getElementById("buynum").value;
		if (buynum == "0") {
			alert("购买数量不能为0");
		}
		if (buynum > balance) {
			alert("库存不足");
		} else {
			//alert(uid + ";" + pid + ";" + buynum);
			$.ajax({
				type : "post",
				url : "addShoppingCart",
				data : {
					uid : uid,
					pid : pid,
					buynum : buynum
				},
				dataType : "text",
				success : function(row) {
					if (row != "0") {
						alert("购物车添加成功！");
					} else {
						alert("购物车添加失败！");
					}
				}
			});

		}
		return;
	}
</script>
<script src="js/jquery-1.11.0.min1.js" type="text/javascript"></script>
<script src="js/jquery-ui.min1.js"></script>
<script src='js/anime1.js'></script>
<script src="js/index1.js"></script>
<div class="foot" style="margin-bottom: 0px"></div>

<!-- footer -->
<div class="wave-box">

	<div class="marquee-box marquee-up" id="marquee-box">
		<div class="marquee">
			<div class="wave-list-box" id="wave-list-box1">
				<ul>
					<li><img height="60" alt="波浪" src="images/wave_02.png"></li>
				</ul>
			</div>
			<div class="wave-list-box" id="wave-list-box2">
				<ul>
					<li><img height="60" alt="波浪" src="images/wave_02.png"></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="marquee-box" id="marquee-box3">
		<div class="marquee">
			<div class="wave-list-box" id="wave-list-box4">
				<ul>
					<li><img height="60" alt="波浪" src="images/wave_01.png"></li>
				</ul>
			</div>
			<div class="wave-list-box" id="wave-list-box5">
				<ul>
					<li><img height="60" alt="波浪" src="images/wave_01.png"></li>
				</ul>
			</div>
		</div>
	</div>

</div>
<div class="footer">
	<div class="auto clearfix">

		<!-- footer主要-->
		<div class="five-superiority">
			<ul class="five-superiority-list clearfix">
				<li class="compensate_ico">
					<a href="#compensate">
						<span class="superiority-icon"></span>
						<span>100倍故障赔偿</span>
					</a>
				</li>
				<li class="retreat_ico">
					<a href="#refund">
						<span class="superiority-icon"></span>
						<span>5天无理由退款</span>
					</a>
				</li>
				<li class="technology_ico">
					<a class="superiority-text" href="#afterService">
						<span class="superiority-icon"></span>
						<span>7x24小时技术支持</span>
					</a>
				</li>
				<li class="prepare_ico">
					<a href="#ico">
						<span class="superiority-icon"></span>
						<span>0元快速备案</span>
					</a>
				</li>
				<li class="service_ico">
					<a href="#secret">
						<span class="superiority-icon"></span>
						<span>1V1专席秘书</span>
					</a>
				</li>
			</ul>
		</div>

		<div class="footer-floor1">
			<div class="footer-list">
				<ul>
					<li class="flist-title">产品与服务</li>
				</ul>
				<ul>
					<li class="flist-title">云解决方案</li>
					
				</ul>
				<ul>
					<li class="flist-title">技术与支持</li>
					
				</ul>
				<ul class="flist-4">
					<li class="flist-title">关于公司</li>
					
				</ul>
				<div class="clear-float"></div>
			</div>
			<div class="footer-right">
				<div class="telephone" title="服务热线">
					<span></span>
					<div class="tel-number" ><font color="white">615-310-2015</font></div>
				</div>
				
			</div>
			<div class="clear-float"></div>
		</div>
	</div>
	</div>
</body>
</html>

