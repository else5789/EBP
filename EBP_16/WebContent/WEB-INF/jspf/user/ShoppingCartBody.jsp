<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="js/jquery.ui.datepicker-zh-CN.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.5.custom.min.js"></script>
<link type="text/css" href="css/ui-lightness/jquery-ui-1.8.5.custom.css" rel="stylesheet" />
<style type="text/css">
	td{
		text-align: center;
	}
</style>

<table border="1" cellspacing="0" style="margin-left: 5%;width: 90%;">
	<tr style="color:black">
		<th>序号</th>
		<th>描述</th>
		<th>单价(元)</th>
		<th>数量</th>
		<th>总金额(元)</th>
		<th></th>
	</tr>
	<c:forEach items="${session_shoppingcartitems}" var="item">
	<tr id="item${item.scid}" style="color:black">
		<td width="10%;">${item.scid }</td>
		<td width="40%;">${item.descs }</td>
		<td width="10%;">${item.price }</td>
		<td width="10%;" id="mitem${item.scid}">${item.mount }</td>
		<td width="10%;" id="sitem${item.scid}">${item.sumprice }</td>
		<td><input type="button"  value="删除" onclick="delectbuychar(${item.scid })" /></td>
	</tr>
	</c:forEach>
	<tr style="color:black">
		<td>总计</td>
		<td ><font color="red" id="errors"></font></td>
		<td></td>
		<td id ="summount">${sessionScope.summount}</td>
		<td id ="sumMoney">${sessionScope.sumMoney}</td>
		<td></td>
	</tr>
	
</table>
<table border="0" cellspacing="0" style="margin-left: 5%;width: 90%;margin-top: 2%;">
	<tr style="color:black">
		<td width="40%" >收货地址：<input id="address" type="text" size="30" value="合肥工业大学翡翠湖校区"/></td>
		<td width="20%" >收件人姓名：<input type="text" id="recvname" value="${user.name}"/></td>
		<td width="40%">电话号码：<input type="text" id="phone" value="${user.telno}"/></td>
	</tr>
	<tr style="color:black">
		<td width="80%" style="text-align: right;"><input type="button" style="width: 80px;" value="继续购物" onclick="returnShop()" /></td>
		<td width="20%"><input type="button" style="width: 80px;" value="结 账"  onclick="Checkout(${user.uid},${sessionScope.sumMoney})" /></td>
	</tr>
</table>

<script type="text/javascript">
	function returnShop(){
		window.location.href="user/ShowProducts.jsp";
	}
	
	function delectbuychar(scid){
		alert(scid);
		/* alert($("#mitem"+scid).html());
		alert($("#sitem"+scid).html()); */
		$("#item"+scid).remove();
		$.ajax({
			type:"post",
			url:"user/deleteById",
			data:{ scid:scid },
			dataType:"text",
			success:function(row){
				if(row =="1"){
					alert("删除成功");
				}else{
					alert("删除失败");
				}
			}
		});
		
		
	}
	
	
	
	function Checkout(uid,amount){
		var address=document.getElementById("address").value;
		var phone = document.getElementById("phone").value;
		var recvname=document.getElementById("recvname").value;
		alert(uid+","+amount+","+address+","+recvname+","+phone);
 		$.ajax({
 			url:"user/checkMoney",
 			type:"post",
 			data:{
 				uid:uid,
 				amount:amount,
 				address:address,
 				phone:phone,
 				recvname:recvname,
 			},
 			dataType:"text",
 			success:function (row){
 				if(row == "1"){
 					alert("结算成功");
 					window.location.href="user/ShoppingSuccess.jsp";
 				}else{
 					alert("结算失败,您的账户余额不足");
 				}
 			}
 		
 		});
	}
</script>
