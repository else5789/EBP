<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<c:set var="age">16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100</c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./register.css">
<title>615+R网站注册</title>
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
height: 73;  
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
    margin-left: 0%;
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
    margin-left: 21%;
    float:left;
}
.regForm{
margin-top: 10%;
margin: 0;
float:right;
 width: 50%;
}
.regHeaderTip{
margin: 0;
	overflow: hidden;
	float:left;
 margin-top: 5%;
 font-size: 18px;
   margin-left: 15%;
  color: #595757;
  font-family: 微软雅黑;
}
.regHeaderTip2{
 font-size: 18px;
margin: 0;
	text-align: center;
	overflow: hidden;
	float:left;
 margin-top: 5%;
 margin-left: 3%;
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
margin-left: 90%;
color: #595757;
font-family: 微软雅黑;
width: 100%;
height:30;
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
 margin-top: 20%;
 font-size: 16px;
 margin-left: 90%;
  color: #595757;
   font-family: 微软雅黑;
   width: 100%;
   height:30;
    text-align:left;
}
.ipt_age{
	overflow: hidden;
 margin-top: 0%;
 font-size: 16px;
 margin-right: 0%;
  color: #595757;
   font-family: 微软雅黑;
   width: 64%;
   height:30;
    text-align:right;
}
.ipt{
	overflow: hidden;
 margin-top: 0%;
 font-size: 16px;
 margin-left: 90%;
  color: #595757;
   font-family: 微软雅黑;
   width: 100%;
   height:30;
    text-align:left;
}
.age{
	overflow: hidden;
 margin-top: 0%;
 font-size: 16px;
 margin-left: 90%;
  color: #595757;
   font-family: 微软雅黑;
   width: 100%;
   height:30;
    text-align:left;
}
.form{
  width: 100%;
   height:30;
}
.button{
 	margin-top: 10%;
 	margin-left: 90%;
	border-width: 0px;
	border-radius: 3px;
	height: 30px;
	width: 190px;
	background-color: #e3007e;
	color: #ffffff;
	font-size: 19px;
	outline: none;
	float:left;
	font-family: 微软雅黑;
}
.error{
float:right;
margin-right: 0%;
font-family: 微软雅黑;

}
.m-third-login{
float:top;
}
.clearfix{
 	margin-top:  0%;
}
.m-more-third-way{
margin-top:3%;
	text-align: center;
}
.m-other-function{
margin-top: 4%;
margin-left: 60%;
text-align: center;
float:left;
width: 100%;
}
.imgerror{
text-align: left;
margin-bottom: 16px;
}
</style>
  </head>
<body>
<jsp:useBean id="registerBean" scope="request" class="com.oracle.ebp_16.domain.RegisterBean"></jsp:useBean>
<c:url var="url" scope="request" value="/vpiregister.action" />

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
				欢迎注册</div>
			<div class="regHeaderTip2">已注册可<a href="vpilogin.jsp"><font color="#e3007e">直接登录</font></a></div>
        	</div>
        	<div class="text_input">
        	<form:form modelAttribute="registerBean" action="${url}" method="post" class="form"  name="form1">
			<%-- <p><font color="#e3007e" size="4"><form:errors /></font></p> --%>
			<table>
				<tr>
					<td><form:input path="username"  class="ipt-username"  placeholder="请输入用户名" id="un" value="" onmouseout="warnning_un()" onmousedown="ChangeImage_un()"/>
        	<br><br></td>
        	<td><img class="imgerror" name="img_un" src="img/t.png" width="130" height="26"/></td>
        	<td><font color="#fdfbfe" size="1">------</font><br><br></td> 
				 	<td><font color="#e3007e" size="4"><form:errors path="username" class="error"/></font><br><br></td> 
				</tr>
				<tr>
					<td><form:password class="ipt_pass" path="password" placeholder="请输入密码" id="pass" value="" onmouseout="warnning_pass()" onmousedown="ChangeImage_pass()"/><br><br></td>
					<td><img class="imgerror" name="img_pass" src="img/t.png" width="110" height="26"/></td>
					<td><font color="#fdfbfe" size="1">.</font><br><br></td> 
					<td><font color="#e3007e" size="4"><form:errors path="password" class="error"/></font><br><br></td> 
				</tr>
				<tr>
					<td><form:password path="conpassword" class="ipt" placeholder="请确认密码" id="conp" value="" onmouseout="warnning_conp()" onmousedown="ChangeImage_conp()" /><br><br></td>
					<td><img class="imgerror" name="img_conp" src="img/t.png" width="110" height="26"/></td>
					<td><font color="#fdfbfe" size="1">.</font><br><br></td> 
					<td><font color="#e3007e" size="4"><form:errors path="conpassword" class="error"/></font><br><br></td>
				</tr>
				<tr>
					<td><form:input path="name" class="ipt" placeholder="请输入姓名" id="nm" value="" onmouseout="warnning_nm()" onmousedown="ChangeImage_nm()"/><br><br></td>
					<td><img class="imgerror" name="img_nm" src="img/t.png" width="110" height="26"/></td>
					<td><font color="#fdfbfe" size="1">.</font><br><br></td> 
					<td><font color="#e3007e" size="4"><form:errors path="name" class="error"/></font><br><br></td>
				</tr>
				<tr>
					<td>&nbsp;<div class="ipt"><form:radiobutton path="gender" value="男"/>男&nbsp;&nbsp;&nbsp;
							   <form:radiobutton path="gender" value="女"/>女</div>
							   <br><br></td>
					 <td><font color="#e3007e" size="4"><form:errors path="gender" /></font><br><br></td> 
				</tr>
				<tr>
				<td>	<div class="age"><font color="">年&nbsp;&nbsp;龄 ： </font><select name="age" class="ipt_age" >
				 	<c:forEach items="${age}" var="age">
								<option value="${age}" 
									<c:if test="${age eq param.age}">
										selected
									</c:if>
								>${age}</option>
							</c:forEach>
				 	</select><br><br> </div></td>
				 	<td><font color="#e3007e" size="4"><form:errors path="age" class="error"/></font><br><br></td>
				 </tr>
				
				<%-- <tr>
					<td>年 龄<form:input path="age"/><br><br></td>
					<td><font color="red" size="4"><form:errors path="age" /></font><br><br></td>
				</tr> --%>
					<tr>
					<td><form:input path="idCard" class="ipt" placeholder="请输入身份证" id="id" onmouseout="warnning_id()" onmousedown="ChangeImage_id()" /><br><br></td>
					<td><img class="imgerror" name="img_id" src="img/t.png" width="130" height="26"/></td>
					<td><font color="#fdfbfe" size="1">.</font><br><br></td> 
					 <td><font color="#e3007e" size="4"><form:errors path="idCard" class="error"/></font><br><br></td>
				</tr>
					<tr>
					<td><form:input path="address" class="ipt" placeholder="请输入地址" id="add" onfocus="add()" onmouseout="warnning_add()" onmousedown="ChangeImage_add()" /><br><br></td>
					<td><img class="imgerror" name="img_add" src="img/t.png" width="110" height="26"/></td>
					<td><font color="#fdfbfe" size="1">.</font><br><br></td> 
					 <td><font color="#e3007e" size="4"><form:errors path="address" class="error"/></font><br><br></td> 
				</tr>
				
				<tr>
				
					<td><form:input path="telno" class="ipt" placeholder="请输入电话"  onmouseout="warnning_telno()" onmousedown="ChangeImage_telno()" value="" id="telno"/><br><br></td>
					<td><img class="imgerror" name="img_telno" src="img/t.png" width="166" height="26"/></td>
					<td><font color="#fdfbfe" size="1">.</font><br><br></td> 
					<td><font color="#e3007e" size="4"><form:errors path="telno" class="error"/></font><br><br></td> 
				</tr>
				<tr><td><input type="submit" value="注 册" class="button" id="ok" onsubmit="return check()" onclick="all_check()"></td></tr>
			</table>
		</form:form>
        	</div>
        	<!-- <div class = "loginform_row">

                    <label>验证码:</label>

                    <input type = "text" class="loginform_input_validationCode" name = "validationCode"/>

                    <img class = "validationCode_img" src="/UserLogin/Sample1/validationCode">

                </div> -->
                </div>
                <div class="m-third-login" passport_mars_sead_hover>
                  
                    <p class="clearfix">
                    
                        	<a href="//passport.vip.com/login/weibo" target="_blank" title="新浪微博" class="u" mars_sead="passport_bottom_weibo_button"></a> 
                        	<a href="//passport.vip.com/login/qq" target="_blank" title="QQ" class="u" mars_sead="passport_bottom_qq_button"></a> 
                        	<a href="//passport.vip.com/login/alipay" target="_blank" title="支付宝" class="u" mars_sead="passport_bottom_alipay_button"></a> 
                        	<a href="//passport.vip.com/login/weixin" target="_blank" title="微信" class="u" mars_sead="passport_bottom_weixin_button"></a> 
                       </p>
                    <div class="m-more-third-way" id="J_more_third_wrap">
                    <a href="vpiregister.jsp" target="_blank" title="615+R" mars_sead="passport_bottom_netease_button"><font color="#595757">615+R</font></a>|
                        	<a href="www.hfut.com" target="_blank" title="合肥工业大学" mars_sead="passport_bottom_netease_button"><font color="#595757">合肥工业大学</font></a>|
                        	<a href="//passport.vip.com/login/renren" target="_blank" title=" 软件学院 " mars_sead="passport_bottom_renren_button"><font color="#595757"> 软件学院 </font></a>|
                        	<a href="//passport.vip.com/login/ccb" target="_blank" title="盈佳科技" mars_sead="passport_bottom_ccb_button"><font color="#595757">盈佳科技</font></a>|
                        	<a href="http://passport.vip.com/login/netease" target="_blank" title="唯品会" mars_sead="passport_bottom_tenpay_button"><font color="#595757">唯品会</font></a>
                    </div>
                </div>
                </div>
                
                <div class="lanrenzhijia"><img src="img/t.png" class="pic" /></div>
    </center>
    
    <script src="js/jquery-1.11.0.min.js"></script>
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
	document.form1.img_un.src="img/u6.png";
}
if(arr[1]==1&&document.getElementById("pass").value!=""&&(document.getElementById("pass").value.length>20||document.getElementById("pass").value.length<6)){
	document.form1.pass.style.backgroundColor="#ffe6e7"; 
	document.form1.pass.style.border="2px solid #fca1a5";
	document.form1.img_pass.src="img/p6.png";
}
if(arr[4]==1&&document.getElementById("id").value!=""&&document.getElementById("id").value.length!=18){
	document.form1.id.style.backgroundColor="#ffe6e7"; 
	document.form1.id.style.border="2px solid #fca1a5";
	document.form1.img_id.src="img/ID6.png";
}
if((arr[6]==1&&document.getElementById("telno").value!=""&&document.getElementById("telno").value.length!=11)||(document.getElementById("telno").value.length==11&&!(document.getElementById("telno").value>=0&&document.getElementById("telno").value<=99999999999))){
	document.form1.telno.style.backgroundColor="#ffe6e7"; 
	document.form1.telno.style.border="2px solid #fca1a5";
	document.form1.img_telno.src="img/t6.png";
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
		document.form1.img_un.src="img/u6.png";
	}
	if(arr[1]==1&&document.getElementById("pass").value!=""&&(document.getElementById("pass").value.length>20||document.getElementById("pass").value.length<6)){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
		document.form1.img_pass.src="img/p6.png";
	}
	if(arr[4]==1&&document.getElementById("id").value!=""&&document.getElementById("id").value.length!=18){
		document.form1.id.style.backgroundColor="#ffe6e7"; 
		document.form1.id.style.border="2px solid #fca1a5";
		document.form1.img_id.src="img/ID6.png";
	}
	if((arr[6]==1&&document.getElementById("telno").value!=""&&document.getElementById("telno").value.length!=11)||(document.getElementById("telno").value.length==11&&!(document.getElementById("telno").value>=0&&document.getElementById("telno").value<=99999999999))){
		document.form1.telno.style.backgroundColor="#ffe6e7"; 
		document.form1.telno.style.border="2px solid #fca1a5";
		document.form1.img_telno.src="img/t6.png";
	}
	document.form1.pass.style.border="1px solid #7ecef4";
	document.form1.pass.style.backgroundColor="#ffffff"; 
}

function warnning_pass(){
	document.form1.img_pass.src="img/t.png";
}
function ChangeImage_conp(){
	if(document.getElementById("conp").value=="" )
		document.form1.img_conp.src="img/conp.png";
	else 
		document.form1.img_conp.src="img/t.png";
	arr[2]=1;
	if(arr[0]==1&&document.getElementById("un").value==""){
		document.form1.un.style.backgroundColor="#ffe6e7"; 
		document.form1.un.style.border="2px solid #fca1a5";
	}
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
		document.form1.img_un.src="img/u6.png";
	}
	if(arr[1]==1&&document.getElementById("pass").value!=""&&(document.getElementById("pass").value.length>20||document.getElementById("pass").value.length<6)){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
		document.form1.img_pass.src="img/p6.png";
	}
	if(arr[4]==1&&document.getElementById("id").value!=""&&document.getElementById("id").value.length!=18){
		document.form1.id.style.backgroundColor="#ffe6e7"; 
		document.form1.id.style.border="2px solid #fca1a5";
		document.form1.img_id.src="img/ID6.png";
	}
	if((arr[6]==1&&document.getElementById("telno").value!=""&&document.getElementById("telno").value.length!=11)||(document.getElementById("telno").value.length==11&&!(document.getElementById("telno").value>=0&&document.getElementById("telno").value<=99999999999))){
		document.form1.telno.style.backgroundColor="#ffe6e7"; 
		document.form1.telno.style.border="2px solid #fca1a5";
		document.form1.img_telno.src="img/t6.png";
	}
	document.form1.conp.style.border="1px solid #7ecef4";
	document.form1.conp.style.backgroundColor="#ffffff"; 
}

function warnning_conp(){
	document.form1.img_conp.src="img/t.png";
}
function ChangeImage_nm(){
	if(document.getElementById("nm").value=="" )
		document.form1.img_nm.src="img/nm.png";
	else 
		document.form1.img_nm.src="img/t.png";
	arr[3]=1;
	if(arr[0]==1&&document.getElementById("un").value==""){
		document.form1.un.style.backgroundColor="#ffe6e7"; 
		document.form1.un.style.border="2px solid #fca1a5";
	}
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
		document.form1.img_un.src="img/u6.png";
	}
	if(arr[1]==1&&document.getElementById("pass").value!=""&&(document.getElementById("pass").value.length>20||document.getElementById("pass").value.length<6)){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
		document.form1.img_pass.src="img/p6.png";
	}
	if(arr[4]==1&&document.getElementById("id").value!=""&&document.getElementById("id").value.length!=18){
		document.form1.id.style.backgroundColor="#ffe6e7"; 
		document.form1.id.style.border="2px solid #fca1a5";
		document.form1.img_id.src="img/ID6.png";
	}
	if((arr[6]==1&&document.getElementById("telno").value!=""&&document.getElementById("telno").value.length!=11)||(document.getElementById("telno").value.length==11&&!(document.getElementById("telno").value>=0&&document.getElementById("telno").value<=99999999999))){
		document.form1.telno.style.backgroundColor="#ffe6e7"; 
		document.form1.telno.style.border="2px solid #fca1a5";
		document.form1.img_telno.src="img/t6.png";
	}
	document.form1.nm.style.border="1px solid #7ecef4";
	document.form1.nm.style.backgroundColor="#ffffff"; 
}

function warnning_nm(){
	document.form1.img_nm.src="img/t.png";
}
function ChangeImage_telno(){
	if(document.getElementById("telno").value=="" )
		document.form1.img_telno.src="img/phone.png";
	else 
		document.form1.img_telno.src="img/t.png";
	arr[6]=1;
	if(arr[0]==1&&document.getElementById("un").value==""){
		document.form1.un.style.backgroundColor="#ffe6e7"; 
		document.form1.un.style.border="2px solid #fca1a5";
	}
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
		document.form1.img_un.src="img/u6.png";
	}
	if(arr[1]==1&&document.getElementById("pass").value!=""&&(document.getElementById("pass").value.length>20||document.getElementById("pass").value.length<6)){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
		document.form1.img_pass.src="img/p6.png";
	}
	if(arr[4]==1&&document.getElementById("id").value!=""&&document.getElementById("id").value.length!=18){
		document.form1.id.style.backgroundColor="#ffe6e7"; 
		document.form1.id.style.border="2px solid #fca1a5";
		document.form1.img_id.src="img/ID6.png";
	}
	if((arr[6]==1&&document.getElementById("telno").value!=""&&document.getElementById("telno").value.length!=11)||(document.getElementById("telno").value.length==11&&!(document.getElementById("telno").value>=0&&document.getElementById("telno").value<=99999999999))){
		document.form1.telno.style.backgroundColor="#ffe6e7"; 
		document.form1.telno.style.border="2px solid #fca1a5";
		document.form1.img_telno.src="img/t6.png";
	}
	document.form1.telno.style.border="1px solid #7ecef4";
	document.form1.telno.style.backgroundColor="#ffffff"; 
}

function warnning_telno(){
	document.form1.img_telno.src="img/t.png";
}
function ChangeImage_id(){
	if(document.getElementById("id").value=="" )
		document.form1.img_id.src="img/id.png";
	else 
		document.form1.img_id.src="img/t.png";
	arr[4]=1;
	if(arr[0]==1&&document.getElementById("un").value==""){
		document.form1.un.style.backgroundColor="#ffe6e7"; 
		document.form1.un.style.border="2px solid #fca1a5";
	}
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
		document.form1.img_un.src="img/u6.png";
	}
	if(arr[1]==1&&document.getElementById("pass").value!=""&&(document.getElementById("pass").value.length>20||document.getElementById("pass").value.length<6)){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
		document.form1.img_pass.src="img/p6.png";
	}
	if(arr[4]==1&&document.getElementById("id").value!=""&&document.getElementById("id").value.length!=18){
		document.form1.id.style.backgroundColor="#ffe6e7"; 
		document.form1.id.style.border="2px solid #fca1a5";
		document.form1.img_id.src="img/ID6.png";
	}
	if((arr[6]==1&&document.getElementById("telno").value!=""&&document.getElementById("telno").value.length!=11)||(document.getElementById("telno").value.length==11&&!(document.getElementById("telno").value>=0&&document.getElementById("telno").value<=99999999999))){
		document.form1.telno.style.backgroundColor="#ffe6e7"; 
		document.form1.telno.style.border="2px solid #fca1a5";
		document.form1.img_telno.src="img/t6.png";
	}
	document.form1.id.style.backgroundColor="#ffffff"; 
	document.form1.id.style.border="1px solid #7ecef4";///
}

function warnning_id(){
	document.form1.img_id.src="img/t.png";
}
function ChangeImage_add(){
	if(document.getElementById("add").value=="" )
		document.form1.img_add.src="img/add.png";
	else 
		document.form1.img_add.src="img/t.png";
	arr[5]=1;
	if(arr[0]==1&&document.getElementById("un").value==""){
		document.form1.un.style.backgroundColor="#ffe6e7"; 
		document.form1.un.style.border="2px solid #fca1a5";
	}
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
		document.form1.img_un.src="img/u6.png";
	}
	if(arr[1]==1&&document.getElementById("pass").value!=""&&(document.getElementById("pass").value.length>20||document.getElementById("pass").value.length<6)){
		document.form1.pass.style.backgroundColor="#ffe6e7"; 
		document.form1.pass.style.border="2px solid #fca1a5";
		document.form1.img_pass.src="img/p6.png";
	}
	if(arr[4]==1&&document.getElementById("id").value!=""&&document.getElementById("id").value.length!=18){
		document.form1.id.style.backgroundColor="#ffe6e7"; 
		document.form1.id.style.border="2px solid #fca1a5";
		document.form1.img_id.src="img/ID6.png";
	}
	if((arr[6]==1&&document.getElementById("telno").value!=""&&document.getElementById("telno").value.length!=11)||(document.getElementById("telno").value.length==11&&!(document.getElementById("telno").value>=0&&document.getElementById("telno").value<=99999999999))){
		document.form1.telno.style.backgroundColor="#ffe6e7"; 
		document.form1.telno.style.border="2px solid #fca1a5";
		document.form1.img_telno.src="img/t6.png";
	}
	document.form1.add.style.backgroundColor="#ffffff"; 
	document.form1.add.style.border="1px solid #7ecef4";
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
    
</body>
</html>