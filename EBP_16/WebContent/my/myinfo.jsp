<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<c:set var="age">16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100</c:set>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/global.css">
<link rel="stylesheet" href="css/dialog.css">


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${user.username}的主页</title>
<link rel='stylesheet prefetch' href='../css/foundation-icons.css'>
<link rel='stylesheet prefetch' href='../img/fi-list.svg'>
<link rel="stylesheet" href="../css/style.css">
<link href="css/base.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/help.css">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no" />
<link rel="stylesheet" type="text/css" href="../css/head.css">
<script type="text/javascript" src="../js/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" href="../css/style.css">
<link rel='stylesheet prefetch' href='../css/foundation-icons.css'>
<link rel='stylesheet prefetch' href='../img/fi-list.svg'>
<link rel="stylesheet" href="../css/style.css">
<script src="../js/jquery.min.js"></script>
<script src="../js/script.js"></script>
<style type="text/css">
body{    
    width: 100%;    
    margin: 0;    
    background-color: #f5f6f8; 
    padding:0;
    background-image:url(../img/user_bg.png); 
    background-repeat:no-repeat;
    background-size:100% 50%;
    
}



.div-testDialog{
	width: 500px;
	height: auto;
	margin: 50px auto;
}

.div-testDialog button{
	margin:  10px;
}
  
.foot{
   width: 130px;    
    height: 100%;
}
.clearfix:after, .container:after, .tab-nav:after {
	  content: ".";
	  display: block;
	  height: 0;
	  clear: both;
	  visibility: hidden;
	}

	/* ==========
	   Setup Page */
	*, *:before, *:after {
	  box-sizing: border-box;
	}

	body {
	  font-family: 'Quicksand', sans-serif;
	}

	/* =================
	   Container Styling */
	.container {
	
	  position: relative;
	  background: white;
	  padding: 3em;
	}

	/* ===========
	   Tab Styling */
	.tab-group {
	  position: relative;
	  border: 1px solid #eee;
	  margin-top: 2.5em;
	  border-radius: 0 0 10px 10px;
	}
	.tab-group section {
	  opacity: 0;
	  height: 0;
	  padding: 0 1em;
	  overflow: hidden;
	  transition: opacity 0.4s ease, height 0.4s ease;
	}
	.tab-group section.active {
	  opacity: 1;
	  height: auto;
	  overflow: visible;
	}

	.tab-nav {
	  list-style: none;
	  margin: -2.5em -1px 0 0;
	  padding: 0;
	  height: 2.5em;
	  overflow: hidden;
	}
	.tab-nav li {
	  display: inline;
	}
	.tab-nav li a {
	  top: 1px;
	  position: relative;
	  display: block;
	  float: left;
	  border-radius: 10px 10px 0 0;
	  background: #eee;
	  line-height: 2em;
	  padding: 0 1em;
	  text-decoration: none;
	  color: grey;
	  margin-top: .5em;
	  margin-right: 1px;
	  transition: background .2s ease, line-height .2s ease, margin .2s ease;
	}
	.tab-nav li.active a {
	  background: #e3007e;
	  color: white;
	  line-height: 2.5em;
	  margin-top: 0;
	}
.htmleaf-container{
   width:45%;    
    height: 60%;
     margin-top: 3%;
}
.headernav{
  margin-left: 130px;
}
.my{
 float: left;
 margin-top: 6%; line-height: 2em;text-align: left;font-family: 微软雅黑;
 font-size: 30px; width:600px; 
}
.you{
 float: left;
}
.info{ width:200px;    
    height: 60%;
 float: left;margin-top: 2%;
 margin-left: 10%;
}
.show{
margin-top: 6%; text-align: center;margin-bottom: 6%;
}
.showmon{
	border-radius: 30px;
margin-top: 0%; text-align: center;margin-bottom: 6%;
}
/* hr{
  width:130%; 
} */
.money{
 float: left;
line-height: 2em;text-align: left;font-family: 微软雅黑;
    height: 50%;
}
.button{
 	margin-top: 4%;
	border-width: 0px;
	border-radius: 3px;
	height: 30px;
	width: 100px;
	background-color: #e3007e;
	color: #ffffff;
	font-size: 19px;
	outline: none;
	float:left;
	font-family: 微软雅黑;
}
.ipt_pass{
 font-size: 16px;
  color: #595757;
   font-family: 微软雅黑;
   width: 100%;
   height:30;
}
.ipt_age{
 font-size: 16px;
  color: #595757;
   font-family: 微软雅黑;
   width: 64%;
   height:30;
}
.ipt{
	overflow: hidden;
 font-size: 16px;
  color: #595757;
   font-family: 微软雅黑;
   width: 100%;
   height:30;
   margin-top: 0%;
}
.age{
	overflow: hidden;
 font-size: 16px;
  color: #595757;
   font-family: 微软雅黑;
   width: 100%;
   height:30;
}
.form{
  width: 100%;
   height:30;
}
.text_input{
margin-top: 0%;
margin-left: 50px;
margin: 0;
float:left;
 width: 50%;
 text-align:left;

}
</style>

</head>
<body><script src="../demos/googlegg.js"></script>
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
<center>
<div class="header">
	<div class="headerinner">
		<ul class="headernav">
			
				<!---<img src="" alt="" />--->
			<li><a href="../index.jsp">首页</a></li>
			<li><a href="../my/ShowOrders.action" >我的订单</a></li>
			<li><a href="../my/myCar.action" >购物车</a></li>
			<li><a href="../srv.jsp">客户服务</a></li>
			<li><a href="../about.jsp" >about</a></li>
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

<script src="../js/jquery-1.11.0.min1.js" type="text/javascript"></script>
<script src="../js/jquery-ui.min1.js"></script>
<script src='../js/anime1.js'></script>
<script src="../js/index1.js"></script>

<div class="htmleaf-container">
	<div class="container">
	  <div class="tab-group">
		<section id="tab1" title="我的资料" class="my">
	 	<div class="you"><img class="imgerror" name="img_pass" src="<c:if test='${user.gender==0 }'>../img/girl.png</c:if><c:if test='${user.gender==1 }'>../img/boy.png</c:if>" width="200" height="200"/></div>
		<div class="info"><font size="4px" color="#55555">用户名 : <font color="#55555">${user.username}</font></font><br><br>
		  <font size="4px" color="#55555">	姓名 : <font color="#55555">${user.name}</font></font><br><br>
		  <font size="4px" color="#55555">	性别 : <font color="#55555">
		   		<c:if test="${user.gender==0 }">女 </c:if>
		   		<c:if test="${user.gender==1 }">男 </c:if></font></font><br><br>
		   <font size="4px" color="#55555">	年龄 : <font color="#55555">${user.age}岁 </font></font><br>
		</div>
		   <br><br>
		   <table class="show" bgcolor = '#ffccff' align = 'left' width="730px" border="0" height="30pt" cellspacing="0" >
				<tr>
					<th><font color="#555555">&nbsp;&nbsp;详细信息</font></th><th></th><th></th>
				</tr>
			</table>
		<br>
		      <li><font size="3px" color="#55555">	身份证 : <font color="#55555">${user.idCard}</font></font><li><br>
		      <li><font size="3px" color="#55555">	地址 : <font color="#55555">${user.address}</font></font> <li><br>
		      <li><font size="3px" color="#55555">	电话 : <font color="#55555">${user.telno}</font></font><li><br>
		      <li><font size="3px" color="#55555">  余额 : <font color="#e3007e" weight="bold">￥${user.balance}</font></font><li><br>
		      <li><font size="3px" color="#55555">	账号状态 : <font color="#55555">正常</font></font><li><br>
		      <li><font size="3px" color="#55555">	注册时间 : <font color="#55555">${user.regTime} </font></font><li><br>
		      
		      <%-- <c:if test=" ${user.status}==1 ">
		      </c:if> --%>
		      
		</section>
		<section id="tab2" title="充值金额" class="money">
		 <!-- <font color="#ccbbcc" size="6px">&nbsp;&nbsp;&nbsp;充值金额</font> -->
		<table class="showmon" bgcolor = '#ffccff' align = 'left' width="730px" border="0" height="40pt"  cellspacing="0" >
		<tr>
		<th><font color="#999"  size="5px">&nbsp;&nbsp;&nbsp;充值金额</font></th><th></th><th></th>
		</tr></table>
		  <div class="info">
			  <font size="4px" color="#55555">用户名 : <font color="#55555">${user.username}</font></font><br><br>
			  <font size="4px" color="#55555">	姓名 : <font color="#55555">${user.name}</font></font><br><br>
			  <font size="4px" color="#55555">	余额 : <font color="#e3007e" weight="bold">￥<span id="balance" >${user.balance}</span></font></font><br>
		  </div>
		  <script type="text/javascript" src="js/jquery-1.8.1.min.js"></script>
		  <script type="text/javascript" src="js/jquery.min.js"></script>
		  <script type="text/javascript" src="js/dialog.js"></script>
		  
<script type="text/javascript">
$(document).ready(function(e) {
    $(".fwmc_xxk li").click(function(){
		//var fw_price = $(this).children("i").text();
		//var fw_numb = $(".srkk").val();
		//var fw_tal = fw_price*fw_numb;
		//$(".zwfb_zje span").text(fw_tal);
		$(this).addClass("on").siblings().removeClass("on");
		tola();
		});
	//加
	$(".jia").click(function(){
		var fw_numb = $(".srkk").val();	
		fw_numb++;
		$(".srkk").val(fw_numb);		
		/*$(".fwmc_xxk li").each(function() {
            if($(this).hasClass("on")){
				var dqzt_price = $(this).children("i").text();
				//alert(dqzt_price);
				var zgsj_jia = dqzt_price*fw_numb;
				$(".zwfb_zje span").text(zgsj_jia);
				}
        }); */
		tola();
		})
		
	//减
	$(".jian").click(function(){
		var fw_numb = $(".srkk").val();	
		if(fw_numb <= 1){
			alert("最低金额为100元！")
			}else{
		fw_numb--;
		$(".srkk").val(fw_numb);		
			}
		/*$(".fwmc_xxk li").each(function() {
            if($(this).hasClass("on")){
				var dqzt_price = $(this).children("i").text();
				//alert(dqzt_price);
				var zgsj_jia = dqzt_price*fw_numb;
				$(".zwfb_zje span").text(zgsj_jia);
				}
        }); */
		tola();
		})	
});

function tola(){
		var $li = $(".fwmc_xxk").children("li.on");
		var money = $li.children("i").text();
		var count = $(".srkk").val();
		$(".zwfb_zje span").text(money*count);
}

</script>

		  <body><script src="/demos/googlegg.js"></script>
		  <div class="w_1200 fw_box ">
  <div  class="fw_conent"> 
    <!--内容开始------------------------------>
    <!-- <div class="bzzx_bt"> <strong>职位发布</strong>企业购买职位发布服务后可以发布招聘职位，并对已发布的职位进行<span>编辑、刷新、置顶</span>等管理</div> -->
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="zwfb_shop_table">
      <tr valign="top">
        <td align="right" width="70">支付方式：</td>
        <td><ul class="fwmc_xxk">
            <li class="on">
              <p>支付宝</p>
              <i>100</i>元</li>
            <li >
              <p>微信</p>
              <i>100</i>元</li>
            <li >
              <p>充值卡</p>
              <i>100</i>元</li>
          </ul></td>
      </tr>
      <tr>
        <td height="20"></td>
        <td></td>
      </tr>
      <tr>
        <td align="right">充值金额：</td>
        <td><ul class="nmb_jj">
            <li class="jian">-</li>
            <li>
              <input name="" type="text" value="1" class="srkk" />
            </li>
            <li class="jia">+</li>  
          </ul></td>
      </tr>
      <tr>
        <td height="20"></td>
        <td></td>
      </tr>
      <tr>
        <td align="right">价格：</td>
        <td><div class="zwfb_zje"><span id="topAccount">100</span> <i>元</i></div></td>
      </tr>
      <tr>
        <td height="20"></td>
        <td></td>
      </tr>
      <tr>
        <td></td>
        <td><a class="ty_but ml20" onclick="upTopAccount()">充 值</a></td>
      </tr>
    </table>
<script>
   function upTopAccount(){
   	var topAccount = $(".zwfb_zje span").text();
   	var str = "确定充值"+ topAccount + "元？";
   	if(confirm(str))
	{
		$.ajax({
			type:"post",
			async:true,
			url:"../my/topUpAccount?topAccount="+topAccount,
			data:topAccount,
			dataType:"text",
			success:function(data){
				if(data!='0'){
					alert("充值成功!");
					$("#balance").text(data);
				}else{
					alert("操作错误，未能成功充值！");
				}
			}
		});
	}else{
		alert("放弃充值!");
	}
}
</script>
    <div class="gmxz_tip"> 购买须知：
      <p>1.购买后永久有效。</p>
      <p> 2.本次服务购买后即生效，不支持退费服务。</p>
    </div>
 
<div class="div-testDialog">
 	<font size="5px">合作方：	</font><button class="dw-btn btn-success has-hover" onClick="javascript:$('body').dailog({type:'success'})">微 信</button>
	<button class="dw-btn btn-primary has-hover" onClick="javascript:$('body').dailog({type:'primary'})">支付宝</button>
	<button class="dw-btn btn-danger has-hover" onClick="javascript:$('body').dailog({type:'danger'})">中国银行</button>
	 </div>

    
    <!--内容结束------------------------------> 
  </div>
</div>
		  
		</section>
		
		
		<section id="tab3" title="修改资料">
 	  <h3>
			<font color="#e3007e" size="4">点击修改资料</font>
		  </h3> 
<script type="text/javascript" src="../js/myJs.js"></script>
<script type="text/javascript">
	function firm1(){
		var flag = checkForm();
		if(flag){//checkForm无错误，则询问是否提交修改表单
			if (confirm("确认修改信息？")) {//如果是true ，那么就把页面转向thcjp.cnblogs.com
				updateForm.submit();
				alert("修改信息成功");
			} else {//否则说明下了，赫赫
				alert("取消修改信息");
			}
		}
	}
</script>
		
        <div class="text_input">
		<form id="updateForm" action="../my/updateUser.action?uid=${user.uid}" method="post" >
		  <table>
			<tr>
				<td><font  family="微软雅黑"  size="4px"  color= "#666">密码：</font>
				<input type="password" name="password" class="ipt_pass"  placeholder="请输入密码" id="pass" value="${user.password }" onmouseout="warnning_pass()" onmousedown="ChangeImage_pass()"/><br><br></td>
				<td><img class="imgerror" name="img_pass" src="../img/t.png" width="110" height="26"/></td>
				<td><font color="#fdfbfe" size="1">.</font><br><br></td> 
				<td><font id="passwordF" color="#e3007e" size="4"></font><br/><br/></td>
			</tr>
			<tr>
				<td><font  family="微软雅黑"  size="4px"  color= "#666">确认密码：</font>
				<input type="password" class="ipt" placeholder="请确认密码" id="conp" value="${user.password }" onmouseout="warnning_conp()" onmousedown="ChangeImage_conp()" /><br><br></td>
				<td><img class="imgerror" name="img_conp" src="../img/t.png" width="110" height="26"/></td>
				<td><font color="#fdfbfe" size="1">.</font><br><br></td> 
				<td><font id="passwordFF" color="#e3007e" size="4"></font><br/><br/></td>
			</tr>
			<tr>
				<td><font  family="微软雅黑"  size="4px"  color= "#666">真实姓名：</font>
				<input type="text" name="name" class="ipt" placeholder="请输入姓名" id="nm" value="${user.name }" onmouseout="warnning_nm()" onmousedown="ChangeImage_nm()"/><br><br></td>
				<td><img class="imgerror" name="img_nm" src="../img/t.png" width="110" height="26"/></td>
				<td><font color="#fdfbfe" size="1">.</font><br><br></td> 
				<td><font id="nameF" color="#e3007e" size="4"></font><br/><br/></td>
			</tr>
			<tr>
				<td>
				<!-- <font  family="微软雅黑"  size="4px"  color= "#666"> -->
				<font  family="微软雅黑"  size="4px"  color= "#666">性别：</font>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" name="gender" value="1" <c:if test="${user.gender==1 }">checked="checked" </c:if>/><img src="../images/nan.gif">
				<input type="radio" name="gender" value="0" <c:if test="${user.gender==0 }">checked="checked" </c:if>/><img src="../images/nv.gif">
				<br><br></td>
			</tr>
			
			<tr>
				<td>
					<div class="age"><font  family="微软雅黑"  size="4px"  color= "#666">年龄 ：</font>
						<input type="number" name="age" id="age" value="${user.age }"/>
						<br/><br/>
					</div>
				</td>
				<td><font id="ageF" color="#e3007e" size="4"></font><br><br></td>
			</tr>
			
				<tr>
				<td><font  family="微软雅黑"  size="4px"  color= "#666">身份证号：</font>
				<input type="text" name="idCard" class="ipt" placeholder="请输入身份证" id="id" value="${user.idCard }" onmouseout="warnning_id()" onmousedown="ChangeImage_id()" /><br><br></td>
				<td><img class="imgerror" name="img_id" src="../img/t.png" width="130" height="26"/></td>
				<td><font color="#fdfbfe" size="1">.</font><br><br></td> 
				<td><font id="idCardF" color="#e3007e" size="4"></font><br/><br/></td>					
			</tr>
				<tr>
				<td><font  family="微软雅黑"  size="4px"  color= "#666">地址：</font>
				<input type="text" name="address" class="ipt" placeholder="请输入地址" value="${user.address}" id="add" onfocus="add()" onmouseout="warnning_add()" onmousedown="ChangeImage_add()" /><br><br></td>
				<td><img class="imgerror" name="img_add" src="../img/t.png" width="110" height="26"/></td>
				<td><font color="#fdfbfe" size="1">.</font><br><br></td> 
				<td><font id="addressF" color="#e3007e" size="4"></font><br/><br/></td>					
			</tr>
			
			<tr>
			
				<td><font  family="微软雅黑"  size="4px"  color= "#666">电话：</font>
				<input type="text" name="telno" class="ipt" placeholder="请输入电话" value="${user.telno}" onmouseout="warnning_telno()" onmousedown="ChangeImage_telno()" id="telno"/><br><br></td>
				<td><img class="imgerror" name="img_telno" src="../img/t.png" width="166" height="26"/></td>
				<td><font color="#fdfbfe" size="1">.</font><br><br></td> 
				<td><font id="telnoF" color="#e3007e" size="4"></font><br/><br/></td>
			</tr>
			<tr><td><span><br></span></td></tr>
			<tr><td><input type="button" value="修改信息 " class="button" id="ok" onclick="firm1()"></td></tr>
			<tr><td><span><br></span></td></tr>
			<tr><td><span><br></span></td></tr>
			<tr><td><span><br></span></td></tr>
		</table>
	</form>
	</div>
		</section>
		<!-- <section id="tab4" title="Another Tab">
		  <h3>
			Content 4
		  </h3>
		  <p>
			Donec congue ligula non risus dictum, eget vehicula diam mattis. Pellentesque at ante ipsum. Suspendisse rutrum elementum dolor, non congue risus sagittis id.
		  </p>
		</section>
		<section id="tab5" title="Another Tab">
		  <h3>
			Content 5
		  </h3>
		  <p>
			Donec congue ligula non risus dictum, eget vehicula diam mattis. Pellentesque at ante ipsum. Suspendisse rutrum elementum dolor, non congue risus sagittis id.
		  </p>
		</section> -->
	  </div>
	</div>
</div>

<script src="../js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script type="text/javascript" src="../js/jquery-tab.js"></script>
<script type="text/javascript">
	$(function(){
		// Calling the plugin
		$('.tab-group').tabify();
	})
</script>




<div class="foot" style="margin-bottom: 100px"></div>

<!-- footer -->
<div class="wave-box">

	<div class="marquee-box marquee-up" id="marquee-box">
		<div class="marquee">
			<div class="wave-list-box" id="wave-list-box1">
				<ul>
					<li><img height="60" alt="波浪" src="../images/wave_02.png"></li>
				</ul>
			</div>
			<div class="wave-list-box" id="wave-list-box2">
				<ul>
					<li><img height="60" alt="波浪" src="../images/wave_02.png"></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="marquee-box" id="marquee-box3">
		<div class="marquee">
			<div class="wave-list-box" id="wave-list-box4">
				<ul>
					<li><img height="60" alt="波浪" src="../images/wave_01.png"></li>
				</ul>
			</div>
			<div class="wave-list-box" id="wave-list-box5">
				<ul>
					<li><img height="60" alt="波浪" src="../images/wave_01.png"></li>
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
</center>
<!-- footer end -->
<script type="text/javascript">

var arr=[0,0,0,0,0,0,0];
$(function(){
	$w = $('.pic').width();
	$h = $('.pic').height();
	$w2 = $w + 30;
	$h2 = $h + 30;

	$('.pic').hover(function(){
		 $(this).stop().animate({height:$h2,width:$w2,left:"-10px",top:"-10px"},500);
	},function(){
		 $(this).stop().animate({height:$h,width:$w,left:"0px",top:"0px"},500);
	});
});
function ChangeImage_pass(){
	if(document.getElementById("pass").value=="" )
		document.form1.img_pass.src="../img/pass.png";
	else 
		document.form1.img_pass.src="../img/t.png";
	arr[1]=1;
	if(arr[1]==1&&document.getElementById("pass").value==""){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
	}
	if(arr[2]==1&&document.getElementById("conp").value==""){
		document.form1.conp.style.backgroundColor="#ffe6e7"; 
		document.form1.conp.style.border="2px solid #fca1a5";
	}
	if(arr[3]==1&&document.getElementById("nm").value==""){
		document.form1.nm.style.backgroundColor="#ffe6e7"; 
		document.form1.nm.style.border="2px solid #fca1a5";
	}
	if(arr[4]==1&&document.getElementById("id").value==""){
		document.form1.id.style.backgroundColor="#ffe6e7"; 
		document.form1.id.style.border="2px solid #fca1a5";
	}
	if(arr[5]==1&&document.getElementById("add").value==""){
		document.form1.add.style.backgroundColor="#ffe6e7"; 
		document.form1.add.style.border="2px solid #fca1a5";
	}
	if(arr[6]==1&&document.getElementById("telno").value==""){
		document.form1.telno.style.backgroundColor="#ffe6e7"; 
		document.form1.telno.style.border="2px solid #fca1a5";
	}

	if(arr[1]==1&&document.getElementById("pass").value!=""&&(document.getElementById("pass").value.length>20||document.getElementById("pass").value.length<6)){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
		document.form1.img_pass.src="../img/p6.png";
	}
	if(arr[4]==1&&document.getElementById("id").value!=""&&document.getElementById("id").value.length!=18){
		document.form1.id.style.backgroundColor="#ffe6e7"; 
		document.form1.id.style.border="2px solid #fca1a5";
		document.form1.img_id.src="../img/ID6.png";
	}
	if((arr[6]==1&&document.getElementById("telno").value!=""&&document.getElementById("telno").value.length!=11)||(document.getElementById("telno").value.length==11&&!(document.getElementById("telno").value>=0&&document.getElementById("telno").value<=99999999999))){
		document.form1.telno.style.backgroundColor="#ffe6e7"; 
		document.form1.telno.style.border="2px solid #fca1a5";
		document.form1.img_telno.src="../img/t6.png";
	}
	document.form1.pass.style.border="1px solid #7ecef4";
	document.form1.pass.style.backgroundColor="#ffffff"; 
}

function warnning_pass(){
	document.form1.img_pass.src="../img/t.png";
}
function ChangeImage_conp(){
	if(document.getElementById("conp").value=="" )
		document.form1.img_conp.src="../img/conp.png";
	else 
		document.form1.img_conp.src="../img/t.png";
	arr[2]=1;

	if(arr[1]==1&&document.getElementById("pass").value==""){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
	}
	if(arr[2]==1&&document.getElementById("conp").value==""){
		document.form1.conp.style.backgroundColor="#ffe6e7"; 
		document.form1.conp.style.border="2px solid #fca1a5";
	}
	if(arr[3]==1&&document.getElementById("nm").value==""){
		document.form1.nm.style.backgroundColor="#ffe6e7"; 
		document.form1.nm.style.border="2px solid #fca1a5";
	}
	if(arr[4]==1&&document.getElementById("id").value==""){
		document.form1.id.style.backgroundColor="#ffe6e7"; 
		document.form1.id.style.border="2px solid #fca1a5";
	}
	if(arr[5]==1&&document.getElementById("add").value==""){
		document.form1.add.style.backgroundColor="#ffe6e7"; 
		document.form1.add.style.border="2px solid #fca1a5";
	}
	if(arr[6]==1&&document.getElementById("telno").value==""){
		document.form1.telno.style.backgroundColor="#ffe6e7"; 
		document.form1.telno.style.border="2px solid #fca1a5";
	}

	if(arr[1]==1&&document.getElementById("pass").value!=""&&(document.getElementById("pass").value.length>20||document.getElementById("pass").value.length<6)){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
		document.form1.img_pass.src="../img/p6.png";
	}
	if(arr[4]==1&&document.getElementById("id").value!=""&&document.getElementById("id").value.length!=18){
		document.form1.id.style.backgroundColor="#ffe6e7"; 
		document.form1.id.style.border="2px solid #fca1a5";
		document.form1.img_id.src="../img/ID6.png";
	}
	if((arr[6]==1&&document.getElementById("telno").value!=""&&document.getElementById("telno").value.length!=11)||(document.getElementById("telno").value.length==11&&!(document.getElementById("telno").value>=0&&document.getElementById("telno").value<=99999999999))){
		document.form1.telno.style.backgroundColor="#ffe6e7"; 
		document.form1.telno.style.border="2px solid #fca1a5";
		document.form1.img_telno.src="../img/t6.png";
	}
	document.form1.conp.style.border="1px solid #7ecef4";
	document.form1.conp.style.backgroundColor="#ffffff"; 
}

function warnning_conp(){
	document.form1.img_conp.src="../img/t.png";
}
function ChangeImage_nm(){
	if(document.getElementById("nm").value=="" )
		document.form1.img_nm.src="../img/nm.png";
	else 
		document.form1.img_nm.src="../img/t.png";
	arr[3]=1;
	if(arr[1]==1&&document.getElementById("pass").value==""){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
	}
	if(arr[2]==1&&document.getElementById("conp").value==""){
		document.form1.conp.style.backgroundColor="#ffe6e7"; 
		document.form1.conp.style.border="2px solid #fca1a5";
	}
	if(arr[3]==1&&document.getElementById("nm").value==""){
		document.form1.nm.style.backgroundColor="#ffe6e7"; 
		document.form1.nm.style.border="2px solid #fca1a5";
	}
	if(arr[4]==1&&document.getElementById("id").value==""){
		document.form1.id.style.backgroundColor="#ffe6e7"; 
		document.form1.id.style.border="2px solid #fca1a5";
	}
	if(arr[5]==1&&document.getElementById("add").value==""){
		document.form1.add.style.backgroundColor="#ffe6e7"; 
		document.form1.add.style.border="2px solid #fca1a5";
	}
	if(arr[6]==1&&document.getElementById("telno").value==""){
		document.form1.telno.style.backgroundColor="#ffe6e7"; 
		document.form1.telno.style.border="2px solid #fca1a5";
	}
	if(arr[1]==1&&document.getElementById("pass").value!=""&&(document.getElementById("pass").value.length>20||document.getElementById("pass").value.length<6)){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
		document.form1.img_pass.src="../img/p6.png";
	}
	if(arr[4]==1&&document.getElementById("id").value!=""&&document.getElementById("id").value.length!=18){
		document.form1.id.style.backgroundColor="#ffe6e7"; 
		document.form1.id.style.border="2px solid #fca1a5";
		document.form1.img_id.src="../img/ID6.png";
	}
	if((arr[6]==1&&document.getElementById("telno").value!=""&&document.getElementById("telno").value.length!=11)||(document.getElementById("telno").value.length==11&&!(document.getElementById("telno").value>=0&&document.getElementById("telno").value<=99999999999))){
		document.form1.telno.style.backgroundColor="#ffe6e7"; 
		document.form1.telno.style.border="2px solid #fca1a5";
		document.form1.img_telno.src="../img/t6.png";
	}
	document.form1.nm.style.border="1px solid #7ecef4";
	document.form1.nm.style.backgroundColor="#ffffff"; 
}

function warnning_nm(){
	document.form1.img_nm.src="../img/t.png";
}
function ChangeImage_telno(){
	if(document.getElementById("telno").value=="" )
		document.form1.img_telno.src="../img/phone.png";
	else 
		document.form1.img_telno.src="../img/t.png";
	arr[6]=1;

	if(arr[1]==1&&document.getElementById("pass").value==""){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
	}
	if(arr[2]==1&&document.getElementById("conp").value==""){
		document.form1.conp.style.backgroundColor="#ffe6e7"; 
		document.form1.conp.style.border="2px solid #fca1a5";
	}
	if(arr[3]==1&&document.getElementById("nm").value==""){
		document.form1.nm.style.backgroundColor="#ffe6e7"; 
		document.form1.nm.style.border="2px solid #fca1a5";
	}
	if(arr[4]==1&&document.getElementById("id").value==""){
		document.form1.id.style.backgroundColor="#ffe6e7"; 
		document.form1.id.style.border="2px solid #fca1a5";
	}
	if(arr[5]==1&&document.getElementById("add").value==""){
		document.form1.add.style.backgroundColor="#ffe6e7"; 
		document.form1.add.style.border="2px solid #fca1a5";
	}
	if(arr[6]==1&&document.getElementById("telno").value==""){
		document.form1.telno.style.backgroundColor="#ffe6e7"; 
		document.form1.telno.style.border="2px solid #fca1a5";
	}
	if(arr[0]==1&&document.getElementById("un").value!=""&&(document.getElementById("un").value.length>20||document.getElementById("un").value.length<6)){
		document.form1.un.style.backgroundColor="#ffe6e7"; 
		document.form1.un.style.border="2px solid #fca1a5";
		document.form1.img_un.src="../img/u6.png";
	}
	if(arr[1]==1&&document.getElementById("pass").value!=""&&(document.getElementById("pass").value.length>20||document.getElementById("pass").value.length<6)){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
		document.form1.img_pass.src="../img/p6.png";
	}
	if(arr[4]==1&&document.getElementById("id").value!=""&&document.getElementById("id").value.length!=18){
		document.form1.id.style.backgroundColor="#ffe6e7"; 
		document.form1.id.style.border="2px solid #fca1a5";
		document.form1.img_id.src="../img/ID6.png";
	}
	if((arr[6]==1&&document.getElementById("telno").value!=""&&document.getElementById("telno").value.length!=11)||(document.getElementById("telno").value.length==11&&!(document.getElementById("telno").value>=0&&document.getElementById("telno").value<=99999999999))){
		document.form1.telno.style.backgroundColor="#ffe6e7"; 
		document.form1.telno.style.border="2px solid #fca1a5";
		document.form1.img_telno.src="../img/t6.png";
	}
	document.form1.telno.style.border="1px solid #7ecef4";
	document.form1.telno.style.backgroundColor="#ffffff"; 
}

function warnning_telno(){
	document.form1.img_telno.src="../img/t.png";
}
function ChangeImage_id(){
	if(document.getElementById("id").value=="" )
		document.form1.img_id.src="../img/id.png";
	else 
		document.form1.img_id.src="../img/t.png";
	arr[4]=1;

	if(arr[1]==1&&document.getElementById("pass").value==""){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
	}
	if(arr[2]==1&&document.getElementById("conp").value==""){
		document.form1.conp.style.backgroundColor="#ffe6e7"; 
		document.form1.conp.style.border="2px solid #fca1a5";
	}
	if(arr[3]==1&&document.getElementById("nm").value==""){
		document.form1.nm.style.backgroundColor="#ffe6e7"; 
		document.form1.nm.style.border="2px solid #fca1a5";
	}
	if(arr[4]==1&&document.getElementById("id").value==""){
		document.form1.id.style.backgroundColor="#ffe6e7"; 
		document.form1.id.style.border="2px solid #fca1a5";
	}
	if(arr[5]==1&&document.getElementById("add").value==""){
		document.form1.add.style.backgroundColor="#ffe6e7"; 
		document.form1.add.style.border="2px solid #fca1a5";
	}
	if(arr[6]==1&&document.getElementById("telno").value==""){
		document.form1.telno.style.backgroundColor="#ffe6e7"; 
		document.form1.telno.style.border="2px solid #fca1a5";
	}

	if(arr[1]==1&&document.getElementById("pass").value!=""&&(document.getElementById("pass").value.length>20||document.getElementById("pass").value.length<6)){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
		document.form1.img_pass.src="../img/p6.png";
	}
	if(arr[4]==1&&document.getElementById("id").value!=""&&document.getElementById("id").value.length!=18){
		document.form1.id.style.backgroundColor="#ffe6e7"; 
		document.form1.id.style.border="2px solid #fca1a5";
		document.form1.img_id.src="../img/ID6.png";
	}
	if((arr[6]==1&&document.getElementById("telno").value!=""&&document.getElementById("telno").value.length!=11)||(document.getElementById("telno").value.length==11&&!(document.getElementById("telno").value>=0&&document.getElementById("telno").value<=99999999999))){
		document.form1.telno.style.backgroundColor="#ffe6e7"; 
		document.form1.telno.style.border="2px solid #fca1a5";
		document.form1.img_telno.src="../img/t6.png";
	}
	document.form1.id.style.backgroundColor="#ffffff"; 
	document.form1.id.style.border="1px solid #7ecef4";///
}

function warnning_id(){
	document.form1.img_id.src="../img/t.png";
}
function ChangeImage_add(){
	if(document.getElementById("add").value=="" )
		document.form1.img_add.src="../img/add.png";
	else 
		document.form1.img_add.src="../img/t.png";
	arr[5]=1;

	if(arr[1]==1&&document.getElementById("pass").value==""){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
	}
	if(arr[2]==1&&document.getElementById("conp").value==""){
		document.form1.conp.style.backgroundColor="#ffe6e7"; 
		document.form1.conp.style.border="2px solid #fca1a5";
	}
	if(arr[3]==1&&document.getElementById("nm").value==""){
		document.form1.nm.style.backgroundColor="#ffe6e7"; 
		document.form1.nm.style.border="2px solid #fca1a5";
	}
	if(arr[4]==1&&document.getElementById("id").value==""){
		document.form1.id.style.backgroundColor="#ffe6e7"; 
		document.form1.id.style.border="2px solid #fca1a5";
	}
	if(arr[5]==1&&document.getElementById("add").value==""){
		document.form1.add.style.backgroundColor="#ffe6e7"; 
		document.form1.add.style.border="2px solid #fca1a5";
	}
	if(arr[6]==1&&document.getElementById("telno").value==""){
		document.form1.telno.style.backgroundColor="#ffe6e7"; 
		document.form1.telno.style.border="2px solid #fca1a5";
	}

	if(arr[1]==1&&document.getElementById("pass").value!=""&&(document.getElementById("pass").value.length>20||document.getElementById("pass").value.length<6)){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
		document.form1.img_pass.src="../img/p6.png";
	}
	if(arr[4]==1&&document.getElementById("id").value!=""&&document.getElementById("id").value.length!=18){
		document.form1.id.style.backgroundColor="#ffe6e7"; 
		document.form1.id.style.border="2px solid #fca1a5";
		document.form1.img_id.src="../img/ID6.png";
	}
	if((arr[6]==1&&document.getElementById("telno").value!=""&&document.getElementById("telno").value.length!=11)||(document.getElementById("telno").value.length==11&&!(document.getElementById("telno").value>=0&&document.getElementById("telno").value<=99999999999))){
		document.form1.telno.style.backgroundColor="#ffe6e7"; 
		document.form1.telno.style.border="2px solid #fca1a5";
		document.form1.img_telno.src="../img/t6.png";
	}
	document.form1.add.style.backgroundColor="#ffffff"; 
	document.form1.add.style.border="1px solid #7ecef4";
}
function warnning_add(){
	document.form1.img_add.src="../img/t.png";
}
function check(){
	flag=true;

	if(document.getElementById("pass").value==""){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
		flag=false;
	}
	if(document.getElementById("conp").value==""){
		document.form1.conp.style.backgroundColor="#ffe6e7"; 
		document.form1.conp.style.border="2px solid #fca1a5";
		flag=false;
	}
	if(document.getElementById("nm").value==""){
		document.form1.nm.style.backgroundColor="#ffe6e7"; 
		document.form1.nm.style.border="2px solid #fca1a5";
		flag=false;
	}
	if(document.getElementById("id").value==""){
		document.form1.id.style.backgroundColor="#ffe6e7"; 
		document.form1.id.style.border="2px solid #fca1a5";
		flag=false;
	}
	if(document.getElementById("add").value==""){
		document.form1.add.style.backgroundColor="#ffe6e7"; 
		document.form1.add.style.border="2px solid #fca1a5";
		flag=false;
	}
	if(document.getElementById("telno").value==""){
		document.form1.telno.style.backgroundColor="#ffe6e7"; 
		document.form1.telno.style.border="2px solid #fca1a5";
		flag=false;
	}
	return flag;
}
function all_check(){
	if(document.getElementById("pass").value==""){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
		flag=false;
	}
	if(document.getElementById("conp").value==""){
		document.form1.conp.style.backgroundColor="#ffe6e7"; 
		document.form1.conp.style.border="2px solid #fca1a5";
		flag=false;
	}
	if(document.getElementById("nm").value==""){
		document.form1.nm.style.backgroundColor="#ffe6e7"; 
		document.form1.nm.style.border="2px solid #fca1a5";
		flag=false;
	}
	if(document.getElementById("id").value==""){
		document.form1.id.style.backgroundColor="#ffe6e7"; 
		document.form1.id.style.border="2px solid #fca1a5";
		flag=false;
	}
	if(document.getElementById("add").value==""){
		document.form1.add.style.backgroundColor="#ffe6e7"; 
		document.form1.add.style.border="2px solid #fca1a5";
		flag=false;
	}
	if(document.getElementById("telno").value==""){
		document.form1.telno.style.backgroundColor="#ffe6e7"; 
		document.form1.telno.style.border="2px solid #fca1a5";
		flag=false;
	}
}

</script>
    
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">

</body>
</html>