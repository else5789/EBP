<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<!-- <script type="text/javascript" src="../js/jquery-1.4.2.js"></script> -->
<script type="text/javascript" src="../js/jquery-ui-1.8.5.custom.min.js"></script>
<script type="text/javascript" src="../js/jquery.ui.datepicker-zh-CN.js"></script>


<body>
	<c:set var="pageBean" value="${pageBean}" scope="page" />
	<table border="1" cellspacing="0"
		style="width: 100%; border-left: 0; border-top: 0; border-right: 0;">
		
		<tr align="center" style="color:black;">
			<th>编号</th>
			<th>订单号</th>
			<th>订单内容</th>
			<th>成交时间</th>
			<th>金额(元)</th>
			<th>收件人姓名</th>
			<th>用户名</th>
			<th>身份证号</th>
		</tr>
		<c:forEach items="${pageBean.recordList  }" var="orders" varStatus="sta">
			<tr align="center" style="color:black;">
				<td>${sta.count }</td>
				<td>${orders.order.oid }</td>
				<td>${orders.orderList.descs }</td>
				<td>${orders.order.commitTime }</td>
				<td>${orders.orderList.price}</td>
				<td>${orders.order.recvname }</td>
				<td>${orders.user.username }</td>
				<td>${orders.user.idCard }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>