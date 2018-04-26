<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <table border="1" cellspacing="0" style="width: 100%; border-left: 0; border-top: 0; border-right: 0;">
    	 <tr align="center" style="color:black;">
			<th>编号</th>
			<th>订单号</th>
			<th>订单内容</th>
			<th>单价(元)</th>
			<th>收件人姓名</th>
		</tr>
		<c:forEach items="${orderList }" var="orders" varStatus="sta">
			<tr align="center" style="color:black;">
				<td>${sta.count }</td>
				<td>${orders.orderList.lid }</td>
				<td>${orders.orderList.descs }</td>
				<td>${orders.orderList.price}</td>
				<td>${orders.order.recvname }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>