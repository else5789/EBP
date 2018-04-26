<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<table border="0" cellspacing="0" style="margin-left: 5%;width: 90%;">
	<tr align="center" style="color:black;">
		<th>序  号</th>
		<th>描  述</th>
		<th>单价</th>
		<th>购票张数</th>
		<th>金额</th>
	</tr>

	<c:forEach items="${orderList }" var="list1">
	<tr align="center" style="color:black;">
		<td  style="text-align: center;">${list1.lid }</td>
		<td  style="text-align: center;">${list1.descs }</td>
		<td  style="text-align: center;">${list1.price }</td>
		<td  style="text-align: center;">${list1.quantity }</td>
		<td  style="text-align: center;">${list1.amount }</td>
	</tr>
	</c:forEach>
</table>
