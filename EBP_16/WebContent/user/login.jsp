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
    
    <title>登录示例页面</title>
        <link href="./css/login.css" rel="stylesheet" type="text/css"></link>
    </head>

    <body>
        <div id="login">
            <div class="wrap">
                <!-- <div class="left"></div> -->
                <div class="right">
                    <jsp:useBean id="loginBean" scope="request" class="com.oracle.ebp_16.domain.LoginBean"></jsp:useBean>
					<c:url var="url" scope="request" value="/user/login" />
					<br><br><br>
					<form:form modelAttribute="loginBean" action="${url}" method="post">
						<p><font color="red" size="4"><form:errors /></font></p>
						<table>
							<tr>
								<td>用户名：<form:input path="username"/><br><br></td>
								<td><font color="red" size="2"><form:errors path="username" /></font><br><br></td>
							</tr>
							<tr>
								<td>密&nbsp;码：<form:password path="password"/><br><br></td>
								<td><font color="red" size="2"><form:errors path="password" /></font><br><br></td>
							</tr>
						</table>
						<input type="submit" value="登录">
					</form:form>
                </div>
            </div>
        </div>
    </body>
</html>
