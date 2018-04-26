<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>登录</title>
		<link href="login.css" rel="stylesheet" type="text/css"></link>
	</head>
	<body>
	<br>
		<center>
		<table border = "2" width = "600pt" height = "100pt"  bgcolor="#ccccff">
	    	<tr>
	    		<td><center><b><font size = "6"> Web留言薄：登录</font></b></center></td>
	    	</tr>
   		 </table>
   		 </center>
		<div id="login">
			<div class="wrap">
				<!-- <div class="left"></div> -->
				<div class="right">
					<jsp:useBean id="admin" scope="request"
						class="com.oracle.ebp_16.domain.Admin"></jsp:useBean>
					<c:url var="url" scope="request" value="/login.action" />
					<form:form modelAttribute="admin" action="${url }" method="post">
						<p>
							<font color='#ffaa03'><form:errors /></font>
						</p>
						<table align='center'>
							<tr>
								<td><font color='#ffaa03'><form:errors path="username" /></font></td>
							</tr>
							<tr>
								<td><form:input class="textfield" path="username" placeholder="用户名" colspan='2'/></br></td>
							</tr>
							</br>
							<tr>
								<td><font color='#ffaa03'><form:errors path="password" /></font></td>
							</tr>
							<tr>
								<td><form:password class="textfield" path="password" placeholder="密码"  colspan='2'/></td>
							</tr>
							<tr>
								<td><input class="textfield" placeholder="验证码" colspan='2'/></br></td>
							</tr>
							<tr>
								<td><c:if test="${not empty errors}"><font color="#ffaa03">${errors}</font></c:if></td>
							</tr>
							<tr>
								<td>
									<img name="randImage" id="randImage" src="Random.jsp" border="2"  />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="javascript:loadimage();"><font color='blue'>换一张</font></a>
								</td>
								<td>

				            	</td>
				            	<%-- 调用js，中的loadimage（）方法，实现验证码，随即换。 --%>
							</tr>
							<tr>
								<td>
									<h5>忘记密码？<a href="FindPassword.jsp"><font color='blue'>点击这里</font></a></h5>
								</td>
							</tr>
						</table>
						<table align='center'>
							<tr>
								<td>
									<input type="submit" class="button" value="登&nbsp;&nbsp;录" >
								</td>
								<td>
									<input type="reset" class="button" value="取&nbsp;&nbsp;消" />
								</td>
							</tr>
						</table>

					</form:form>
				</div>
			</div>
		</div>
	</body>
</html>

