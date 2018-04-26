<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="../js/jquery-1.4.2.js"></script>
<script type="text/javascript" src="../js/jquery-ui-1.8.5.custom.min.js"></script>
<script type="text/javascript" src="../js/jquery.ui.datepicker-zh-CN.js"></script>
<script type="text/javascript">
function buying(pid) {
				var status=1;
				if($("#buying"+pid).val()=="停售"){
					status=0;
				}
				$.ajax({  
					  url: "admin/changeProductStatus.action",  
					  type:'post',
					  dataType:'text',  
					  data:{  
					  	pid:pid,
					  	status:status
						},  
					success:function(data){  
						$("#statustd"+pid).text(data);
						var d=data;
						if(d=="1"){
							$("#buyend"+pid).val("停售");
							$("#buying"+pid).val("停售");
							$("#sta"+pid).html("销售中");
						}else if(d=="0"){
							$("#buyend"+pid).val("售货");
							$("#buying"+pid).val("售货");
							$("#sta"+pid).html("<font color='red'>已停售</font>");
						}
					}
				}); 
	
	}

</script>
<body>
	<c:set var='pageBean' value='${pageBean }' scope='page'></c:set>
	<table border="1" cellspacing="0"
		style="margin-left: 5%; width: 90%; border-left: 0; border-top: 0; border-right: 0;">
		<tr>
			<form action='admin/selectByDescs.action'><td colspan="6"
				style="border-left: 0; border-top: 0; border-right: 0; padding-bottom: 2%;">商品描述：<input
				type="text" id="descs"  name="descs"/> <input type="submit" value="查询"
				/></form>
			</td>
			<td colspan="2"
				style="border-left: 0; border-top: 0; border-right: 0; padding-bottom: 2%;"><input
				type="button" value="添加商品" onclick="AddProduct()" /></td>
		</tr>
		<tr>
			<th>序号</th>
			<th>描述</th>
			<th>总量</th>
			<th>剩余数</th>
			<th>单价(元)</th>
			<th>状态</th>
			<th>是否销售中</th>
			<th>操作</th>
		</tr>
		<form action='admin/getById.action'>
		<c:forEach items="${pageBean.recordList }" var="list1">
			<tr>
				<td width="5%;" ><span type='text' size='5' name='pid'  readonly="readonly" >${list1.pid }</span></td>
				<td width="25%;" id='descs'>${list1.descs }</td>
				<td width="8%;"  id='amount'>${list1.amount }</td>
				<td width="8%;" id='balance'>${list1.balance }</td>
				<td width="8%;" id='price'>${list1.price }</td>
				<td id="statustd${list1.pid }">${list1.status }</td>
				
				<c:if test="${list1.status==0 }">
					<td width="10%;" id="sta${list1.pid }"
					><font color="red">已停售</font></td>
						
					<td><input type="button" value="售货" id="buyend${list1.pid }" onclick="buying(${list1.pid })" />
						
						 <input	type="button" onclick="updatePro(${list1.pid })" value="修改" /></td>
				</c:if>
				<c:if test="${list1.status==1 }">
					<td width="10%;" id="sta${list1.pid }" >销售中</td>
					<td><input type="button" value="停售"   id="buying${list1.pid }"	onclick="buying(${list1.pid })" /> 
					<input type="button" onclick="updatePro(${list1.pid })" value="修改"  />
					</td>
				</c:if>
				
			</tr>
		</c:forEach>
	</form>
	</table>
	<font size="5"><a href="admin/showProduct.action?currentPage=${pageBean.currentPage-1}&pageSize=${pageBean.pageSize}&recordCount=${pageBean.recordCount}">上一页</a></font>&nbsp;
		<font size="5"><a href="admin/showProduct.action?currentPage=1&pageSize=${pageBean.pageSize}&recordCount=${pageBean.recordCount}">首 页</a></font>&nbsp;
		<font size="3"><a href="admin/showProduct.action?currentPage=${pageBean.beginPageIndex}&pageSize=${pageBean.pageSize}&recordCount=${pageBean.recordCount}">${pageBean.beginPageIndex}</a></font>&nbsp;
		<font size="3"><a href="admin/showProduct.action?currentPage=${pageBean.beginPageIndex+1}&pageSize=${pageBean.pageSize}&recordCount=${pageBean.recordCount}">${pageBean.beginPageIndex+1}</a></font>&nbsp;
		<font size="3"><a href="admin/showProduct.action?currentPage=${pageBean.beginPageIndex+2}&pageSize=${pageBean.pageSize}&recordCount=${pageBean.recordCount}">${pageBean.beginPageIndex+2}</a></font>&nbsp;
		<font size="3"><a href="admin/showProduct.action?currentPage=${pageBean.beginPageIndex+3}&pageSize=${pageBean.pageSize}&recordCount=${pageBean.recordCount}">${pageBean.beginPageIndex+3}</a></font>&nbsp;
		<font size="3"><a href="admin/showProduct.action?currentPage=${pageBean.beginPageIndex+4}&pageSize=${pageBean.pageSize}&recordCount=${pageBean.recordCount}">${pageBean.beginPageIndex+4}</a></font>&nbsp;
		<font size="3"><a href="admin/showProduct.action?currentPage=${pageBean.beginPageIndex+5}&pageSize=${pageBean.pageSize}&recordCount=${pageBean.recordCount}">${pageBean.beginPageIndex+5}</a></font>&nbsp;
		<font size="3"><a href="admin/showProduct.action?currentPage=${pageBean.beginPageIndex+6}&pageSize=${pageBean.pageSize}&recordCount=${pageBean.recordCount}">${pageBean.beginPageIndex+6}</a></font>&nbsp;
		<font size="3"><a href="admin/showProduct.action?currentPage=${pageBean.beginPageIndex+7}&pageSize=${pageBean.pageSize}&recordCount=${pageBean.recordCount}">${pageBean.beginPageIndex+7}</a></font>&nbsp;
		<font size="3"><a href="admin/showProduct.action?currentPage=${pageBean.beginPageIndex+8}&pageSize=${pageBean.pageSize}&recordCount=${pageBean.recordCount}">${pageBean.beginPageIndex+8}</a></font>&nbsp;
		<font size="3"><a href="admin/showProduct.action?currentPage=${pageBean.beginPageIndex+9}&pageSize=${pageBean.pageSize}&recordCount=${pageBean.recordCount}">${pageBean.beginPageIndex+9}</a></font>&nbsp;&nbsp;&nbsp;
		<font size="3"><a href="admin/showProduct.action?currentPage=${pageBean.pageCount}&pageSize=${pageBean.pageSize}&recordCount=${pageBean.recordCount}">总计： ${pageBean.pageCount} 页</a></font>&nbsp;&nbsp;&nbsp;
		<font size="5"><a href="admin/showProduct.action?currentPage=${pageBean.currentPage+1}&pageSize=${pageBean.pageSize}&recordCount=${pageBean.recordCount}">下一页</a></font>
</body>
<script type="text/javascript">

	function AddProduct(){
		window.location="admin/AddProduct.jsp";
	}
	function updatePro(pid){
		window.location="admin/getById.action?pid="+pid;  
	}

	
</script>
</html>