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
    
    <title>电子商务平台</title>
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
        <script type="text/javascript" src="js/myJs.js" ></script>
    </head>

    <body>
        <div id="main_page">
            <div id="header">
                <img src="images/bg-logo.jpg"/>
            </div>
            <div id="body">
                <div id="navigation">
                    <div id="inner">
                        <p>当前用户： ${user.name }</p>
                        <ul>
                            <li><a href="user/index.jsp" class="index">首&nbsp;&nbsp;&nbsp;页</a><li>
                            <li><a href="user/listALLProduct" class="personal">在线订票</a><li>
                            <li><a href="user/ShowOrders.action" class="exam">我的订单</a>
                            <li><a href="user/updateUser.jsp" class="examlog">个人信息</a><li>
                            <li><a href="user/TopUpAccount.jsp" class="examlog">账户冲值</a><li>
                            <li><a href="user/logout.action" class="logout">注&nbsp;销</a><li>
                        </ul>
                    </div>
                </div>
                <div id="content">
                    <div class="title">
                        <p><img src="images/icon-title.jpg" /> ${param.title}</p>
                    </div>
                    <div class="main">
							<jsp:include page="${param.mainbody}"/>                        
                    </div>
                </div>  <!--content-->
            </div>  <!--body-->
        </div>
    </body>
</html>
