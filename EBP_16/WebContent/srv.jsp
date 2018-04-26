<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>客服服务</title>

<link rel="stylesheet" href="css/GalMenu.css" />
<style type="text/css">
body{    
    width: 100%;    
    height: 100%;    
    margin: 0;    
    background-color: #ddd; 
    	background-image:url(image/648204.jpg); 
    		background-repeat:no-repeat;
    background-size:100% 960px;
}  
</style>
</head>
<body>
<div class="GalMenu GalDropDown">
	  <div class="circle" id="gal">
		<div class="ring">
		  <a href="index.jsp" title="" class="menuItem">❤首页</a>
		  <a target="_blank" href="http://shang.qq.com/email/stop/email_stop.html?qq=1473370028&sig=100bf66601c789f88c2a86bbd34d4a727f6beeb2fbc392a7&tttt=1" title="呼叫客服" class="menuItem">👦峰峰</a>
		  <a target="_blank" href="http://shang.qq.com/email/stop/email_stop.html?qq=929914571&sig=100bf66601c789f88c2a86bbd34d4a727f6beeb2fbc392a7&tttt=1" title="呼叫客服" class="menuItem">👦建建</a>
		  <a target="_blank" href="http://shang.qq.com/email/stop/email_stop.html?qq=1395370278&sig=100bf66601c789f88c2a86bbd34d4a727f6beeb2fbc392a7&tttt=1" title="呼叫客服" class="menuItem">👱旭旭</a>
		  <a target="_blank" href="http://shang.qq.com/email/stop/email_stop.html?qq=929817104&sig=100bf66601c789f88c2a86bbd34d4a727f6beeb2fbc392a7&tttt=1" title="呼叫客服" class="menuItem">👦博博</a>
		  <a target="_blank" href="http://shang.qq.com/email/stop/email_stop.html?qq=19871416663&sig=100bf66601c789f88c2a86bbd34d4a727f6beeb2fbc392a7&tttt=1" title="呼叫客服" class="menuItem">👩然然</a></div>
		<audio id="audio" src="audio/niconiconi.mp3"></audio>
	  </div>
</div>
<div id="overlay" style="opacity: 1; cursor: pointer;"></div>
<script type="text/javascript">var items = document.querySelectorAll('.menuItem');
  for (var i = 0,
  l = items.length; i < l; i++) {
	items[i].style.left = (50 - 35 * Math.cos( - 0.5 * Math.PI - 2 * (1 / l) * i * Math.PI)).toFixed(4) + "%";
	items[i].style.top = (50 + 35 * Math.sin( - 0.5 * Math.PI - 2 * (1 / l) * i * Math.PI)).toFixed(4) + "%"
  }</script>
<div class="htmleaf-container">
	<h2 style="text-align: center"><br><br><br><br><br><br><br><br><br><br>鼠标右键 [ 召唤/关闭 ] 客服<br></h2>
	<h2 style="text-align: center">客服：1、峰峰&nbsp;&nbsp;2、建建&nbsp;&nbsp;3、旭旭&nbsp;&nbsp;4、博博&nbsp;&nbsp;5、然然</h2>
</div>

<script src="jsb/jquery-2.1.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="jsb/GalMenu.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
	$('body').GalMenu({
	  'menu': 'GalDropDown'
	})
  });
</script>

</body>
</html>