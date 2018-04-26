<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="../js/jquery-1.4.2.js"></script>
<script type="text/javascript">
	$(function(){
		$("#div1").hide();
		
	})
	function showtd(oid){
// 		window.location="GetOrderListByoid?oid="+oid;
			$.ajax({  
			  url: "GetOrderListByoid?oid="+oid,  
			  type:'post',
			  dataType:'text',  
			  data:{  
// 				  oid:oid
// 			  	uid:$("#uid").val()
			},//这里就需要传{a:aValue}  
			success:function(data){  
				$("#div1").html(data);
			}
	}); 
		$("#div1").hide();
		$("#div1").show();
	}
	function hidediv() {
		$("#div1").hide();
	}
</script>
<body>
<table border="1" cellspacing="0" style="margin-left: 5%;width: 90%;">
	<tr>
		<th>序  号</th>
		<th>定单号</th>
		<th>生成时间</th>
		<th>金额(元)</th>
	</tr>
	<c:set var="a" value="0"></c:set>
	<c:forEach items="${list }" var="list1">
	<c:set var="a" value="${a+1 }"></c:set>
	<tr>
	<td onclick="showtd(${list1.oid })" style="text-align: center;">${a }</td>
		<td  style="text-align: center;">${list1.oid }</td>
		<td  style="text-align: center;">${list1.commitTimeString }</td>
		<td  style="text-align: center;">${list1.amount }</td>
	</tr>
	</c:forEach>
</table>
<div id="div1" style="border: 1px solid; margin-left: 5%;width: 90%;height: 100px;"  onclick="hidediv()">


</div>
</body>
</html>