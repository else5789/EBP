<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<style type="text/css">
	#but{
		font-family: Arial;
		text-align: center;
		margin:3px;
		
	}
	#but:link,a:visited{
		color:#002020;
		padding:4px 10px 4px 10px;
		background-color:#00d8db;
		text-decoration: none;
		border-top: 1px solid #EE00EE;
		border-left: 1px solid #EE00EE;
		border-bottom: 1px solid #710071;
		border-right: 1px solid #710071;
	}
	#but:hover{
		
		padding:5px 8px 3px 12px;
		background-color:# 00c4c9;
		border-top: 1px solid #710071;
		border-left: 1px solid #710071;		
		border-bottom: 1px solid #EE00EE;
		border-right: 1px solid #EE00EE;
	}
</style>
</head>
<script type="text/javascript" src="../js/jquery-1.4.2.js"></script>
<script type="text/javascript" src="../js/jquery-ui-1.8.5.custom.min.js"></script>
<script type="text/javascript" src="../js/jquery.ui.datepicker-zh-CN.js"></script>
<script type="text/javascript" src="../js/ajaxfileupload.js"></script>
<script type="text/javascript">
	$(function() {
		$("#date").datepicker();
	});
</script>
<body>
	<jsp:useBean id="product" scope="request"
		class="com.oracle.ebp_16.domain.Product"></jsp:useBean>
	<c:url var="url" scope="request" value="/addProduct.action" />
	<form:form modelAttribute="product" action="${url }" method="post" id='form1' >
		<table align='center'>
			<tr>
				<td>描述：</td>
				<td><form:input path="descs" name="descs"/></td>
				<td><font color='red' size='2'>
					<form:errors path="descs" /></font>
				</td>
			</tr> 
			<tr>
				<td>商品总数：</td>
				<td><form:input path="amount" name="amount"/></td>
				<td><font color='red' size='2'>
					<form:errors path="amount" /></font>
				</td>
			</tr> 
			<tr>
				<td>剩余商品数：</td>
				<td><form:input path="balance" name="balance" /></td>
				<td><font color='red' size='2'>
					<form:errors path="balance" /></font>
				</td>
			</tr>
			<tr>
				<td>单价(元)：</td>
				<td><form:input path="price" name="price" /></td>
				<td><font color='red' size='2'>
					<form:errors path="price" /></font>
				</td>
			</tr>
			<tr>
				<td>状态：</td>
				<td><input type="radio" name="status" value="1" checked="checked" />销售中
						<input type="radio" name="status" value="0" />已停售</td>
				<td><font color='red' size='2'>
					<form:errors path="status" /></font>
				</td>
			</tr>

			<tr>
				<td>图片：</td>
				<td><input name="file" type="file" id="upload" class="upload" />
					<input type="button" value="上传" onclick="ajaxFileUpload()" />
				</td>	
			</tr>
			
		</table>
		<input type="button" value="添加" onclick="firm()" id='but' style="width: 120px; "/> 
		<input type="reset" value="清空" id='but' style="width: 120px; "/>
		
		<input type="button" value="返回" id='but' onclick="back()" style="width: 120px; "/>
	</form:form>

<script type="text/javascript">
   
	function firm() {//利用对话框返回的值 （true 或者 false）
		if (confirm("确认添加该商品？")) {//如果是true ，那么就把页面转向thcjp.cnblogs.com
			form1.submit();
			alert("添加商品成功");
		}
		else{
			alert("商品添加已取消");
		}
	}
	
	function ajaxFileUpload(){
		var s=$("#upload").val();
		if(s==null || s==""){
			alert("请选择一张图片");
			$("#upload").focus();
			return;
		}
		
		$.ajaxFileUpload({
			url : 'uploadPic', //服务器端请求地址  
			secureuri : false, //是否需要安全协议，一般设置为false  
			fileElementId : 'upload', //文件上传域的ID  
			dataType : 'content', //返回值类型 一般设置为json  
			enctype : 'multipart/form-data',//注意一定要有该参数  
			success : function(data) //服务器成功响应处理函数  
			{
				//alert(data); //data是从服务器返回来的值 
				var str = "<img alt='图片预览' class='right_preview_image' src='"+data+"'><br>";
				$(str).appendTo("#preview");
				$("#upload").val("");
				alert("上传成功！")
			},
			error : function(data)//服务器响应失败处理函数  
			{
				alert(data);
			}
		})
	}
	
	function back(){
		window.location="admin/showProduct.action";
	}
</script>
</body>
</html>