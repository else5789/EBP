<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="js/jquery.ui.datepicker-zh-CN.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.5.custom.min.js"></script>
<link type="text/css" href="css/ui-lightness/jquery-ui-1.8.5.custom.css"
	rel="stylesheet" />

<form name="form1" action="user/queryProducts" method="post"
	onSubmit="checkForm()">
	关键词查询：<input type="text" name="descs" value="" /> 按价格查询：<input
		type="text" name="min" value="" size=6 />&nbsp;&nbsp;~&nbsp;&nbsp; <input
		type="text" name="max" value="" size=6 /> &nbsp;&nbsp;<input
		type="submit" value="查询" />
</form>
<table border="1" cellspacing="0" style="margin-left: 5%;width: 90%;">
	<tr style="color:black">
		<th>序号</th>
		<th>描述</th>
		<th>剩余库存</th>
		<th>单价(元)</th>
		<th>状态</th>
		<th>购买数量</th>
		<th></th>
	</tr>
	<c:forEach items="${list}" var="list1">
		<tr align="center" style="color:black">
			<td width="5%;">${list1.pid }</td>
			<td width="40%;">${list1.descs }</td>
			<td width="10%;">${list1.balance }</td>
			<td width="8%;">${list1.price }</td>
			<td width="8%;" style="color: red;border-color: red;">热卖中</td>
			<td width="14%;"><input type="text" name="buynum"
				id="buynum${list1.pid}" style="width: 50px; " /></td>
			<td width="15%"><input type="button" value="加入购物车"
				onClick="buyproduct(${list1.balance},${list1.pid},${user.uid})" /></td>
		</tr>
	</c:forEach>
	<tr style="color:black">
		<td colspan="4" style=" text-align: left ;border-right: 0;"
			id="errotd"></td>
		<td colspan="5" style="text-align: right;border-left: 0;"><input
			type="button" onClick="Location(${user.uid})" value="查看购物车/结账" /></td>
	</tr>
</table>
<script type="text/javascript" language="javascript">
	jQuery(ready);
	/* function ready(){
		alert("ready");
	} */

	function Location(uid) {
		//alert("showAllCartItems");
		window.location = "user/showAllCartItems?uid="+uid;
	}
	function query() {

	}
	function buyproduct(balance, pid, uid) {
		//alert("buyproduct");
		var buynum = document.getElementById("buynum" + pid).value;
		var errotd = document.getElementById("errotd");
		if (buynum == null || buynum == "" || buynum == "0") {
			errotd.innerHTML = "<font color='red'>请输入正确的数量</font>";
		}
		if (buynum > balance) {
			errotd.innerHTML = "<font color='red'>库存不足</font>";
		} else {
			errotd.innerHTML = "";
			//alert(uid + ";" + pid + ";" + buynum);
			$.ajax({
				type : "post",
				url : "user/addShoppingCart",
				data : {
					uid : uid,
					pid : pid,
					buynum : buynum
				},
				dataType : "text",
				success : function(row) {
					if (row != "0") {
						alert("购物车添加成功！");
					} else {
						alert("购物车添加失败！");
					}
				}
			});

		}
		return;
	}
</script>

