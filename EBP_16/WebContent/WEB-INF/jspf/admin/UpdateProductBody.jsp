<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<% String pid=session.getAttribute("pid").toString();%>
<% String descs=session.getAttribute("descs").toString();%>
<body>
<form action="admin/updateProduct.action" method="post"  id="form1">
<table>
	<tr>
		<td>
			商品编号:
		</td>
		<td>
			<input type="text" name="pid" value="${pid}" readonly="readonly"/>
		</td>
	</tr>
	<tr>
		<td>
			描述：
		</td>
		<td>
			<input type="text" name="descs" value="${descs }"/>
		</td>
	</tr>
	<tr>
		<td>
			商品总数：
		</td>
		<td>
			<input type="text" name="amount" value="${amount }"/>
		</td>
	</tr>
	<tr>
		<td>
			剩余商品数：
		</td>
		<td>
			<input type="text" name="balance" value="${balance }"/>
		</td>
	</tr>
	<tr>
		<td>
			单价(元)：
		</td>
		<td>
			<input type="text" name="price" value="${price }"/>
		</td>
	</tr>
</table>
<input type="button" value="修改"  onclick="firm()" style="width: 120px; "/>
<input type="reset" style="width: 120px; "/>
<input type="button" value="返回" id='but' onclick="back()" style="width: 120px; "/>
</form>
<script type="text/javascript">
	function firm(){
		if(confirm("确定修改商品信息？"))
		{
			form1.submit();
			alert("修改信息成功!");
		}else{
			alert("商品信息未修改");
		}
	}
	function back(){
		window.location="admin/showProduct.action";
	}
</script>
</body>

</html>