<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<base href="<%=basePath%>">
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>615+R'Admin Home</title>
	<link rel="stylesheet" href="admincss/admincss/960.css" type="text/css" media="screen" charset="utf-8" />
	<link rel="stylesheet" href="admincss/admincss/fluid.css" type="text/css" media="screen" charset="utf-8" />
	<link rel="stylesheet" href="admincss/admincss/template.css" type="text/css" media="screen" charset="utf-8" />
	<link rel="stylesheet" href="admincss/admincss/colour.css" type="text/css" media="screen" charset="utf-8" />
	<script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.8.5.custom.min.js"></script>
	<script type="text/javascript" src="js/jquery.ui.datepicker-zh-CN.js"></script>
</head>
<body>
	<h1 id="head">615+R'Admin Home</h1>
		
	<ul id="navigation">
		<li><a href="admin/index.jsp" class="active">首&nbsp;&nbsp;&nbsp;页</a></li>
        <li><a href="admin/showProduct.action" class="active">商品管理</a></li>
        <li><a href="admin/queryUsersByDatePage.action" class="active">用户管理</a></li>
        <li><a href="admin/queryOrderByDate.action" class="active">订单管理</a></li>
        <li><a href="admin/adminlogout.action" class="active">退&nbsp;&nbsp;&nbsp;出</a></li>
			
		</ul>
		<div id="content"  class="container_16 clearfix">
				<jsp:include page="${param.mainbody}"/>                        
        </div>
		
		<div id="foot">
			<a href="#">Contact Me</a>
		</div>
	</body>
</html>