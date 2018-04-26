<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页面</title>
        <link href="./css/login.css" rel="stylesheet" type="text/css"></link>
        <link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" href="playcss/reset.css">
<link rel="stylesheet" href="playcss/style.css">
 <script src="js/login.js"></script>

<style type="text/css">
body{    
    width: 100%;    
    height: 100%;    
    margin: 0;    
    background-color: #fdfbfe; 
}  
.header{
height: 103;  
 float: top;
   background-color: #fdfbfe; 
	text-align: center;
	overflow: hidden;
} 
.logo{    
    height: 73;    
    margin: 0;    
    background-color: #fdfbfe; 
    margin-left: 21%;
    margin-top: 1%;
    float: left;
} 
.bannerHeader_sprite{    
    width: 400;
    height: 73;    
    margin: 0;    
    background-color: #fdfbfe; 
    margin-right: 22%;
    margin-top: 2%;
    float: right;
} 
.slide{
    background-color: #fdfbfe; 
    margin-left: 0%;;
      float: left;
}
#slider {
    width: 100%;
    height:10%
    height: 73; 
	margin: 0;
	background-color: #fdfbfe; 
	margin-top: 6%;
    margin-left: 0%;;
    float: left;
}
.body{
 float: top;
   background-color: #fdfbfe; 
	text-align: center;
	overflow: hidden;
}
.pic{
	margin: 0;
	margin-top: 6%;
    margin-left: 20%;
    float:left;
}
.regForm{
margin-top: 30%;
margin: 0;
float:right;
 width: 50%;
}
.regHeaderTip{
margin: 0;
	overflow: hidden;
	float:left;
 margin-top:16%;
 font-size: 18px;
 font-weight: bold;
  margin-left: 16%;
  color: #595757;
  font-family: 微软雅黑;
}
.regHeaderTip2{
margin: 0;
	text-align: center;
	overflow: hidden;
	float:left;
 margin-top: 2%;
 font-size: 14px;
 margin-left: 6%;
  color: #595757;
   font-family: 微软雅黑;
}
.text_input{
margin-top: 0%;
margin: 0;
float:right;
 width: 50%;
 text-align:left;
}
.ipt-username{
margin: 0;
overflow: hidden;
float:left;
margin-top: 0%;
font-size: 16px;
margin-left: 60%;
color: #595757;
font-family: 微软雅黑;
width: 100%;
height:44;
text-align:left;
    /* 
    border-radius:4px;
    border-top:#e3007e;
    border-left:#e3007e;
    border-right:#e3007e;
    border-bottom:#e3007e; */
 /*   border-bottom-width: 0.1px;
	border-style: solid; */
}
.ipt_pass{
	overflow: hidden;
 margin-top: 0%;
 font-size: 16px;
 margin-left: 60%;
  color: #595757;
   font-family: 微软雅黑;
   width: 100%;
   height:44;
    text-align:left;
}

.ipt{
	overflow: hidden;
 margin-top: 0%;
 font-size: 16px;
 margin-left: 60%;
  color: #595757;
   font-family: 微软雅黑;
   width: 100%;
   height:44;
    text-align:left;
}

.form{
  width: 100%;
   height:30;
}
.button{
 	margin-top: 10%;
 	margin-left: 60%;
	border-width: 0px;
	border-radius: 3px;
	height: 44px;
	width: 260px;
	background-color: #e3007e;
	color: #ffffff;
	font-size: 19px;
	outline: none;
	float:left;
	font-family: 微软雅黑;
}
.error{
float:left;
	
margin-right: 0%;
font-family: 微软雅黑;
}
.all_error{
float:left;
width: 100%;
	text-align: left;
margin-left: 0%;
font-family: 微软雅黑;
}
.m-third-login{
float:top;
}
.clearfix{
 	margin-top: 13%;
}
.m-more-third-way{
margin-top: 6%;
	text-align: center;
}
.m-other-function{
margin-top: 14%;
margin-left: 60%;
text-align: center;
float:left;
width: 100%;
}
.imgerror{
margin-top: 6%;
text-align: left;
margin-bottom: 20px;
}
</style>
    </head>

    <body>
<jsp:useBean id="loginBean" scope="request" class="com.oracle.ebp_16.domain.LoginBean"></jsp:useBean>
<!-- 登录的url请求 -->
<c:url var="url" scope="request" value="/vpilogin.action" />
	<center>
		<div class="layout" id="layout">
			<div class="header" id="header" >
			<div class="logo"><a href="index.jsp" class="logo sprite" id="top-logo-link"><img name="img" src="img/logo.jpg" width="390" height="100"></a></div>
        	<div class="bannerHeader_sprite"><img name="img" src="img/4.png" width="512" height="70"></div>
        	</div>
        	<div id="body" class="body">
        	<div class="cursor_example">
    	<div class="pic" id="pic"><img name="img" src="img/5.png"  width="520" height="520" ></div>
	</div>
        	
        	<div class="regForm">
			<input type="hidden" name="vipc" value="6ff05aec452e4806ae590689bf2d16db">
			<div class="regHeaderTip">
				如有账号请登录</div>
			
        	</div>
        	<div class="text_input">
        	<form:form modelAttribute="loginBean" action="${url}" method="post" class="form"  name="form1">
			<%-- <p><font color="#e3007e" size="4"><form:errors /></font></p> --%>
			<table>
				<tr>
					<td><form:input path="username"  class="ipt-username"  placeholder="请输入用户名" id="un" value="" onmouseout="warnning_un()" onmousedown="ChangeImage_un()"/>
        	<br><br></td>
        	<td><img class="imgerror" name="img_un" src="img/t.png" width="160" height="33"/></td>
        	<td><font color="#fdfbfe" size="1">--</font><br><br></td> 
				 	<td><font color="#e3007e" size="4"><form:errors path="username" class="error"/></font><br><br></td> 
				</tr>
				<tr>
					<td><form:password class="ipt_pass" path="password" placeholder="请输入密码" id="pass" value="" onmouseout="warnning_pass()" onmousedown="ChangeImage_pass()"/><br><br></td>
					<td><img class="imgerror" name="img_pass" src="img/t.png" width="139" height="33"/></td>
					<td><font color="#fdfbfe" size="1">.</font><br><br></td> 
					<td><font color="#e3007e" size="4"><form:errors path="password" class="error"/></font><br><br></td> 
				</tr>
				
				<tr>
				<td><span></span></td>
					<td><font color="#e3007e" size="4" class="all_error"><form:errors /></font></td></tr>
				<tr><td><input type="submit" value="登 录" class="button" id="ok" onsubmit="return check()" onclick="all_check()"></td></tr>
			<tr><td><div class="m-other-function">
                        
				          <a href="https://safe.vip.com/login/findPW/page" class="forget" target="_blank" >忘记密码?</a>
                            |
                            <a href="vpiregister.jsp" class="reg"><font color="#e3007e">免费注册</font></a>
                        
                    </div></td></tr>
			</table>
		</form:form>
		
        	</div>
        	<div class="m-third-login" passport_mars_sead_hover>
                  
                    <p class="clearfix">
                    
                        	<a href="//passport.vip.com/login/weibo" target="_blank" title="新浪微博" class="u" mars_sead="passport_bottom_weibo_button"></a> 
                        	<a href="//passport.vip.com/login/qq" target="_blank" title="QQ" class="u" mars_sead="passport_bottom_qq_button"></a> 
                        	<a href="//passport.vip.com/login/alipay" target="_blank" title="支付宝" class="u" mars_sead="passport_bottom_alipay_button"></a> 
                        	<a href="//passport.vip.com/login/weixin" target="_blank" title="微信" class="u" mars_sead="passport_bottom_weixin_button"></a> 
                       </p>
                    <div class="m-more-third-way" id="J_more_third_wrap">
                    <a href="vpiregister.jsp" target="_blank" title="615+R" mars_sead="passport_bottom_netease_button">615+R</a>|
                        	<a href="www.hfut.com" target="_blank" title="合肥工业大学" mars_sead="passport_bottom_netease_button">合肥工业大学</a>|
                        	<a href="//passport.vip.com/login/renren" target="_blank" title=" 软件学院 " mars_sead="passport_bottom_renren_button"> 软件学院 </a>|
                        	<a href="//passport.vip.com/login/ccb" target="_blank" title="盈佳科技" mars_sead="passport_bottom_ccb_button">盈佳科技</a>|
                        	<a href="http://passport.vip.com/login/netease" target="_blank" title="唯品会" mars_sead="passport_bottom_tenpay_button">唯品会</a>

                    </div>
                </div>
                </div>
                
                <div class="lanrenzhijia"><img src="img/t.png" class="pic" /></div>
                
    </div>
    
    </center>
    
    <script src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">

var arr=[0,0];
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
function ChangeImage_un(){
	if(document.getElementById("un").value=="" )
		document.form1.img_un.src="img/un.png";
	else 
		document.form1.img_un.src="img/t.png";
arr[0]=1;
if(arr[0]==1&&document.getElementById("un").value==""){
	document.form1.un.style.backgroundColor="#ffe6e7"; 
	document.form1.un.style.border="2px solid #fca1a5";
}
if(arr[1]==1&&document.getElementById("pass").value==""){
	document.form1.pass.style.backgroundColor="#ffe6e7"; 
	document.form1.pass.style.border="2px solid #fca1a5";
}
if(arr[1]==1&&document.getElementById("pass").value!=""&&(document.getElementById("pass").value.length>20||document.getElementById("pass").value.length<6)){
	document.form1.pass.style.backgroundColor="#ffe6e7"; 
	document.form1.pass.style.border="2px solid #fca1a5";
	document.form1.img_pass.src="img/p6.png";
}
document.form1.un.style.border="1px solid #7ecef4";
	document.form1.un.style.backgroundColor="#ffffff"; 
}

function warnning_un(){
	document.form1.img_un.src="img/t.png";
}
function ChangeImage_pass(){
	if(document.getElementById("pass").value=="" )
		document.form1.img_pass.src="img/pass.png";
	else 
		document.form1.img_pass.src="img/t.png";
	arr[1]=1;
	if(arr[0]==1&&document.getElementById("un").value==""){
		document.form1.un.style.backgroundColor="#ffe6e7"; 
		document.form1.un.style.border="2px solid #fca1a5";
	}
	if(arr[1]==1&&document.getElementById("pass").value==""){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
	}
	if(arr[0]==1&&document.getElementById("un").value!=""&&(document.getElementById("un").value.length>20||document.getElementById("un").value.length<6)){
		document.form1.un.style.backgroundColor="#ffe6e7"; 
		document.form1.un.style.border="2px solid #fca1a5";
		document.form1.img_un.src="img/u6.png";
	}

	document.form1.pass.style.border="1px solid #7ecef4";
	document.form1.pass.style.backgroundColor="#ffffff"; 
}

function warnning_pass(){
	document.form1.img_pass.src="img/t.png";
}

function warnning_add(){
	document.form1.img_add.src="img/t.png";
}
function check(){
	flag=true;
	if(document.getElementById("un").value==""){
		document.form1.un.style.backgroundColor="#ffe6e7"; 
		document.form1.un.style.border="2px solid #fca1a5";
		flag=false;
	}
	if(document.getElementById("pass").value==""){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
		flag=false;
	}
	return flag;
}
function all_check(){
	if(errors.get("username")!=""){
		document.form1.un.style.backgroundColor="#ffe6e7"; 
		document.form1.un.style.border="2px solid #fca1a5";
		flag=false;
	} 
	if(document.getElementById("pass").value==""){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
		flag=false;
	}
}
</script>
</body>
</html>