<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
	$(function(){
		$("#div1").hide();
		
	})
	function showtd(oid){
		/* alert(oid); */
			$.ajax({  
			  url: "queryAllOrderList?oid="+oid,  
			  type:'post',
			  dataType:"html",  
			  data:"",
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

<table border="1" cellspacing="0" style="margin-left: 5%;width: 90%;">
	<tr align="center" style="color:black">
		<th>序  号</th>
		<th>定单号</th>
		<th>生成时间</th>
		<th>金额(元)</th>
	</tr>

	<c:forEach items="${orderList }" var="list1">
	<tr align="center" style="color:black">
	<td onclick="showtd(${list1.oid })" style="text-align: center;">+</td>
		<td  style="text-align: center;">${list1.oid }</td>
		<td  style="text-align: center;">${list1.commitTime }</td>
		<td  style="text-align: center;">${list1.amount }</td>
	</tr>
	</c:forEach>
</table>
<div id="div1" style="margin-left: 5%;width: 90%;height: 100px;"  onclick="hidediv()">
</div>
