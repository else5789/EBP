<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/edslider.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/animate-custom.css">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css2/normalize.css" />
<link rel="stylesheet" type="text/css" href="css2/demo.css">
<link rel="stylesheet" href="css2/app.css">
<link rel="stylesheet" href="cssc/style.css">

<script src="jsc/jquery.min.js"></script>
<script src="jsc/script.js"></script>

<link rel="stylesheet" type="text/css" href="cssj/nstyle.css" />

<link rel="stylesheet" href="css4/style.css">

<LINK href="cssa/lanrenzhijia.css" type=text/css rel=stylesheet>

<SCRIPT src="jsa/lanrenzhijia.js" type=text/javascript></SCRIPT>

<link href="css9/style.css" rel="stylesheet" />
<script type="text/javascript" src="js9/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js9/jquery.SuperSlide.js"></script>

<link rel="stylesheet" href="css/style.css">

<script src="jsc/jquery.min.js"></script>
<script src="jsc/script.js"></script>


<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/index.css">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no" />
<meta charset="utf-8">
<title>首页</title>

<link rel="stylesheet" href="css/GalMenu.css" />
<link rel="stylesheet" type="text/css" href="css/head.css">
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<style type="text/css">
.ad-title{
margin-top:60px;

}
 .both{
  margin-left: 0%;
} 
.wall{
margin-right: 0%;float:left;
width:200px;

}
.gezi{
margin-right: 0%;float:left;
width:40px;
}
.container{
margin-top: 0.5%;margin-left: 22%;
   background:#ffeeff;  width:160px;
   border:6px solid #fdabde;
   border-radius:9px;
  /*  box-shadow:0px 4px 5px rgba(0, 0, 0, 0.75); */
}
.link{
   fossnt-size:19px;
   font-weight:300;
   text-align:center;
   position:relative;
   height:60px;
   line-height:40px;
   margin-top:6px;
   overflow:hidden;
   width:90%;
   margin-left:5%;
   cursor:pointer;
}
.link:after{
   content: '';
   position:absolute;
   width:80%;
   border-bottom:1px solid rgba(100, 100, 100 ,2);
   bottom:50%;
   left:-100%;
   transition-delay: all 0.5s;
   transition: all 0.5s;
}
.link:hover:after,
.link.hover:after{
   left:100%;
}
.link .text{
/*    text-shadow:0px -40px 0px rgba(255, 255, 255, 1); */
   transition:all 0.75s;
   transform:translateY(100%) translateZ(0);
   transition-delay:all 0.25s;
}
.link:hover .text,
.link.hover .text{
   text-shadow:0px -40px 0px rgba(255, 255, 255, 0);
   transform:translateY(0%) translateZ(0) scale(1.1);
   font-weight:600;
}
body{
	margin:0;
	font-family:Arial, sans-serif;
	font-size:14px;
	background-color:white;
	color:#fff;
	padding-top:0px;
	width: 100%;
	background-image:url(img/indexbg.png); 
	background-repeat:no-repeat;
    background-size:100% 1000px;
}
/* .img-3d{
margin-right:300px;
} */
.slider{
margin-top:36px;

}
.showmon{
	border-radius: 30px;
margin-top: 0%; text-align: center;margin-bottom: 20%;
}
.title{
text-align: center;width: 100%;margin-top:36px;
}
/*border-bottom: 1px solid #F0F0F0;*/
	.huadong {width: 60rem;height:4rem;padding: 0.5rem 0 0.3rem 0; border-bottom: 1px solid #F0F0F0; position:relative;font: 12px/1.5 "Hiragino Sans GB","Microsoft YaHei",simsun;margin:0 auto;}
	.huadong .huabox {  margin:0 auto; width: 80%; line-height: 4rem;}
	.huadong .hdimg {float:left;line-height:3.5rem;}
	.huadong .hdimg img { width: 100%; vertical-align:middle;}
	.huadong h5 {font-size:1rem;float:left; line-height: 2.2rem; margin: 0.8rem 0 0 0; }
	.huadong .gg_more { float: left;}
	.huadong .gg_more a { font-size: 0.8rem; text-decoration:none;}
	
	.huadong .notice_active {
			float: left;
			width: 55%;
			height: 4rem;
			padding: 0;
			overflow: hidden;
			position: relative;
	}
	.huadong .notice_active li{list-style-type:none;line-height: 2.4rem;overflow: hidden;}
	/*.huadong .notice_active li.notice_active_ch {}*/
	.huadong .notice_active li.notice_active_ch span {color:#656972;font-size:1rem;display: block;overflow: hidden; width:80%;float: left;
	overflow: hidden;margin:0 0 2rem 0;}
	.huadong .gg_more .news_ck {
			float: left;
			margin: 0 1rem 0 1rem;
			color: #888;
			width: 5rem;
			height: 2rem;
			line-height: 2rem;
			display: block;
			border: 1px solid #656972;
			text-align: center;
			border-radius: 0.7rem;
			font-size: 0.8rem;
			margin-top: 1rem;
		}
	.huadong .gg_more .news_more {
		
	}
	.huadong .notice_active li.notice_active_ch em {text-align:right;float:right;color:#888;font-size:0.8rem;font-style:normal;  }
	
	.wall{
			float: left;
				margin-top: 1rem;
					margin-left: 29%;
	}
	
	
	.hid {
		overflow: hidden;
	}
	.left {
		float: left;
	}
	#box {
		width: 978px;
		margin: 20px auto;
		margin-top: 1300px;
	}
	#box ul {
		margin-right: -14px;
		overflow: hidden;margin-top: 1300px;
	}
	#box li {
		width: 234px;
		float: left;
		margin-right: 14px;
		padding: 34px 0 20px;
		background: #FFF;
		text-align: center;
		position: relative;
		cursor: pointer;
		margin-bottom:14px;margin-top: 900px;
	}
	.pro_img {
		width: 150px;
		height: 150px;
		margin: 0 auto 18px;margin-top: 900px;
	}
	.pro_name {
		display: block;
		text-overflow: ellipsis;
		white-space: nowrap;
		overflow: hidden;
		font-weight: 400;
	}
	.pro_name a {
		color: #333;
	}
	.pro_price {
		color: #ff6700;
		margin: 0 10px 10px;
	}
	.pro_rank {
		color: #b0b0b0;
	}
	#box li:hover .add_btn {
		display: block;
	}
	.add_btn {
		background: #ff6700;
		height: 66px;
		position: absolute;
		width: 100%;
		bottom: 0;
		left: 0;
		line-height: 66px;
		display: none;
		color: #FFF;
		font-size: 20px;
	}
		* {
		margin: 0;
		padding: 0;
		font-family: "微软雅黑";
		list-style: none;
		color: #666;
		text-decoration: none;
		font-size: 14px;
	}
	
	.carwall{
	margin-top:900px;
	}
	.car {
		width: 978px;
		margin: 20px auto;
		background: #FFF;
	}
	.car .img {
		width: 190px;
	}
	.car .img img {
		display: block;
		width: 80px;
		height: 80px;
		margin: 3px auto;
	}
	.car .name {
		width: 350px;
	}
	.car .name span {
		line-height: 1;
		margin-top: 8px;
		margin-bottom: 8px;
		font-size: 18px;
		font-weight: normal;
		text-overflow: ellipsis;
		white-space: nowrap;
		overflow: hidden;
	}
	.car .price {
		width: 144px;
		text-align: right;
		padding-right: 84px;
	}
	.car .price span {
		color: #ff6700;
		font-size: 16px;
	}
	.car .ctrl {
		width: 175px;
		padding-right: 25px;
		text-align: center;
	}
	.car .ctrl a {
		font-size: 20px;
		cursor: pointer;
		display: block;
		width: 26px;
		height: 26px;
		margin: 30px auto;
		line-height: 26px;
	}
	.car .ctrl a:hover {
		color: #FFF;
		background: #ff6700;
	}
	.head_row {
		height: 70px;
		line-height: 70px;
	}
	.head_row, .row {
		border-bottom: solid 1px #e0e0e0;
	}
	.row {
		height: 86px;
		line-height: 86px;
		padding: 15px 0;
	}
/* 	.pro{
	width: 100%;
	margin-top: 50px;
	text-align: center;
	}
	.fleft{
		width: 91%;
	margin-top: 5px;
	text-align: center;
	} */
	.fleft{
	width:1500px;
	margin-top: 500px;
	text-align: center;
	margin-left: 6%;
	}
	table{
		width:1300px;
	margin-top: 500px;
	text-align: center;
	}
	.ad1{
	width:1300px;
	margin-top: 10px;
	text-align: center;
	}
	.ad{
	margin-top: 10px;
	}
		.ad-2{
	margin-top: 10px;
	}
		.ad-3{
	margin-top: 20px;
	width:1900px;;
	}
	.imglist{
		margin-top: 30px;
	}
	
		._imglist{
		margin-top: 30px;
			margin-left:30px;
	}
</style>

</head> 

<body ><!-- style="width: 2000px"> -->
<div class="all">
<div class="header">
<script type="text/javascript">
function logout(){
	//var flag2=confirm("确认退出登录？");
	//if(flag2){
		window.location="my/logout.action";
		//alert("成功退出登录!");
	//}else{
		//alert("取消退出登录!");
	//}
}
</script>
	<div class="headerinner">
		<ul class="headernav">
			
				<!---<img src="" alt="" />--->
			<li><a href="my/myinfo.jsp">Home</a></li>
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
					<!-- <a href="vpilogin.jsp">登录</a> -->
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


<script src="/demos/googlegg.js"></script>

<div class="slider">

	<div class="slider-img">
		<ul class="slider-img-ul">
			<li><img src="images2/004.jpg"></li>
				<li><img src="images2/001.jpg"></li>
		<li><img src="images2/002.jpg"></li>
		<li><img src="images2/003.jpg"></li>
		<li><img src="images2/004.jpg"></li>
		<li><img src="images2/001.jpg"></li>
		</ul>
	</div>

</div>
</div>

<script src="js2/jquery-1.11.0.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js2/xSlider.js"></script>

<!-- 代码end -->


<script type="text/javascript" src="js3/jquery.min.js"></script>
<script type="text/javascript">
	function timer(opj){
		$(opj).find('ul').animate({
			marginTop : "-3.5rem"  
			},500,function(){  
			$(this).css({marginTop : "0.7rem"}).find("li:first").appendTo(this);  
		})  
	}
	$(function(){ 
		var num = $('.notice_active').find('li').length;
		if(num > 1){
		   var time=setInterval('timer(".notice_active")',3500);
			$('.gg_more a').mousemove(function(){
				clearInterval(time);
			}).mouseout(function(){
				time = setInterval('timer(".notice_active")',3500);
			}); 
		}
		
		$(".news_ck").click(function(){
			location.href = $(".notice_active .notice_active_ch").children(":input").val();
		})
	});
</script>


<!-- js调用部分begin -->
<script src="http://www.lanrenzhijia.com/ajaxjs/jquery.min.js"></script>
<script src="js/jquery.flexslider-min.js"></script>
<script>

</script>


<div class="nav-main">
<div class="nav-box">
<div class="nav">
  <ul class="nav-ul">
  	<li><a href="#" class="home"><span><font color="white">商城首页</font></span></a></li>
  	<li><a href="#" class="develop"><span>商品分类</span></a></li> 
  	  	<li><a href="my/myinfo.jsp" class="news"><span>我的主页</span></a></li>
  	  	<li><a href="#top" class="case"><span><font color="red">返回顶部</font></span></a></li>
  </ul>
</div>
<div class="nav-slide">
    <div class="nav-slide-o"></div>
    <div class="nav-slide-o">
    	<ul>
    		<li><a href="#"><span>休闲</span></a></li>
    		<li><a href="#"><span>中国风</span></a></li>
    		<li><a href="#"><span>正装</span></a></li>
 
    	</ul>
    </div>

</div>
</div>
</div>

<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	$(function(){
	var thisTime;
	$('.nav-ul li').mouseleave(function(even){
			thisTime	=	setTimeout(thisMouseOut,1000);
	})

	$('.nav-ul li').mouseenter(function(){
		clearTimeout(thisTime);
		var thisUB	=	$('.nav-ul li').index($(this));
		if($.trim($('.nav-slide-o').eq(thisUB).html()) != "")
		{
			$('.nav-slide').addClass('hover');
			$('.nav-slide-o').hide();
			$('.nav-slide-o').eq(thisUB).show();
		}
		else{
			$('.nav-slide').removeClass('hover');
		}
		
	})
	
	function thisMouseOut(){
		$('.nav-slide').removeClass('hover');
	}
	 
	$('.nav-slide').mouseenter(function(){
		clearTimeout(thisTime);
		$('.nav-slide').addClass('hover');
	})
	$('.nav-slide').mouseleave(function(){
		$('.nav-slide').removeClass('hover');
	})

})
</script>
<div class="huadong">
	<div class="huabox">
	<div class="hdimg"><img src="image3/lingdang.png"></div>
	<h5><font color=#e3007e>【公告】</font></h5>
		<div class="notice_active" >
			<ul>
				<li class="notice_active_ch" >
					<span><font color="#e3007e">没有共产党，就没有新中国！</font>   </span>            
					
					<font color="#e3007e"><em>2017-07-01</em></font>
				</li>
				<li class="notice_active_ch">
					<span><font color="#e3007e">今日有特价商品，欢迎购买！</font></span> 
					<em>2017-07-01</em>
				</li>
				<li class="notice_active_ch">
					<span><font color="#e3007e">“615”小店今日特卖...</font></span>                 
					
					<font color=#e3007e><em>2017-07-01</em></font>
				</li>
				
			</ul>   
	
		</div>

		<div class="gg_more">
			 <a class="news_ck" href="javascript:void(0)"><h6>查看详情</h6></a>
			 <!-- <a title="news_more" href="#">更多+</a> -->
		</div>
	</div>
</div>
<center><div class="ad1"><a href="index.jsp" id="top-logo-link">
<img name="img" src="img/ad1.png" width="1260" height="180"></a></div></center>
	
<center><div class="ad-title"><a href="#" id="top-logo-link">
<img name="img" src="img/add-title.png" width="1400" height="44"></a></div></center>
         <center><table class="ad">
		  <tr>
		  
			<td>
			<a target="_blank" href="prolist1.jsp" id="top-logo-link">
<img  name="img" src="img/ad2.jpg" width="160" height="160"></a>
<a target="_blank" href="prolist1.jsp" id="top-logo-link">
<img name="img" src="img/ad3.jpg" width="160" height="160"></a>
<a target="_blank" href="prolist1.jsp" id="top-logo-link">
<img name="img" src="img/ad4.jpg" width="160" height="160"></a>
<a target="_blank" href="prolist1.jsp" id="top-logo-link">
<img name="img" src="img/ad5.jpg" width="160" height="160"></a>
<a target="_blank" href="prolist1.jsp" id="top-logo-link">
<img name="img" src="img/ad6.jpg" width="160" height="160"></a>
<a target="_blank" href="prolist1.jsp" id="top-logo-link">
<img name="img" src="img/ad7.jpg" width="160" height="160"></a>
<a target="_blank" href="prolist1.jsp" id="top-logo-link">
<img name="img" src="img/ad8.jpg" width="160" height="160"></a>
			</td> 	
			</tr>
  <center><table class="ad-2">
		  <tr>
		  
			<td>
			<a href="listALLProduct.action" id="top-logo-link">
<img name="img" src="img/ladd.jpg" width="600" height="360"></a>
<a href="#top" id="top-logo-link">
<img name="img" src="img/radd.jpg" width="600" height="360"></a>
</td></tr></table>

<center><div class="ad-title"><a href="#" id="top-logo-link">
<img name="img" src="img/temai.png" width="1200" height="75"></a></div></center>

<div class="strength grWidth hidden">
    <ul class="strengthMain">
        <li><a href=""><img src="imagesj/a1.jpg" alt="专业团队"><div class="font"><h3>精品男装<br></h3></div></a></li>
        <li><a href=""><img src="imagesj/a2.jpg" alt="项目管理"><div class="font"><h3>夏日小件</h3></div></a></li>
        <li><a href=""><img src="imagesj/a3.jpg" alt="丰富经验"><div class="font"><h3>私人定制</h3></div></a></li>
        <li><a href=""><img src="imagesj/a4.jpg" alt="技术支持"><div class="font"><h3>美妆包包</h3></div></a></li>
    </ul>
</div>



<script src="js/jquery-1.11.0.min1.js" type="text/javascript"></script>
<script src="js/jquery-ui.min1.js"></script>
<script src='js/anime1.js'></script>
<script src="js/index1.js"></script>

<div class="foot" style="margin-bottom: 100px"></div>

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
