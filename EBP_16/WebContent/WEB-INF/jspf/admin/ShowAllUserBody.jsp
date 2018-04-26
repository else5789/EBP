<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<table border="1" cellspacing="0"
		style=" width: 100%; border-left: 0; border-top: 0; border-right: 0;">
		<tr>
			<td colspan="12"
				style="border:0; color:black; padding-bottom: 2%; text-align: left;">
				起始日期：<input type="text" id="starttime"  name="begin" value="${param.begin }"/> 
				终止日期：<input type="text" id="endtime"  name="end" value="${param.end }"/>
				<input type="button" value="查询" onclick="GetUserBySday_Eday(1)"/>
			</td>
		</tr>
		<tr>
			<td   colspan="12" style="border-left: 0; color:black; border-top: 0; border-right: 0; padding-bottom: 2%;text-align: left;">
				姓名/用户名：<input type="text" id="sname"  name="name" value="${param.name }"/>
				身份证号：<input type="text"	id="sidCard"  name="idCard" value="${param.idCard }"/>
				联系电话：<input type="text"	id="stelno"  name="telno" value="${param.telno }"/>
				<input type="button" value="查询" onclick="GetUserBynuit(1)"/>
			</td>
		</tr>
		<tr align="center" style="color:black;">
			<th>编号</th>
			<th>姓名</th>
			<th>用户名</th>
			<th>性别</th>
			<th>身份证号</th>
			<th>年龄</th>
			<th>通讯地址</th>
			<th>联系电话</th>
			<th>注册时间</th>
			<th>账户余额</th>
			<th>状态</th>
			<th></th>
		</tr>
		<c:forEach items="${list }" var="list">
		<tr align="center" style="color:black;">
		<td>${list.uid }</td>
		<td>${list.name }</td>
		<td>${list.username}</td>
		<td>${list.gender }</td>
		<td>${list.idCard }</td>
		<td>${list.age }</td>
		<td>${list.address }</td>
		<td>${list.telno }</td>
		<td>${list.regTime }</td>
		<td ><font color="red"> ${list.balance }</font></td>
		<td id="statustd${list.uid }">${list.status }</td>
			<c:if test="${list.status==1 }">
				<td><input type="button" value="禁用" id="buying${list.uid }"
						onclick="buying(${list.uid })"/></td>
			</c:if>
			<c:if test="${list.status==0 }">
				<td><input type="button" value="启用" id="buyend${list.uid }"
					onclick="buying(${list.uid })" /> </td>
			</c:if>
		</tr>
		</c:forEach>
	</table>
	<table border="0" cellspacing="0"
		style=" width: 100%; border-left: 0; border-top: 0; border-right: 0;">
		<tr align="center">
			<td>	
			<c:if test="${isDate ==1 }">
				<input type="button" value="首页" onclick="GetUserBySday_Eday(1)"/>
				<input type="button" value="上一页" onclick="GetUserBySday_Eday(${currentPage-1})"/>
				${currentPage}/${pageCount}	
				<input type="button" value="下一页" onclick="GetUserBySday_Eday(${currentPage+1})"/>
				<input type="button" value="尾页" onclick="GetUserBySday_Eday(${pageCount})"/>
				
			<a onclick="GetUserBySday_Eday(1)">首页</a>		
				<a onclick="GetUserBySday_Eday(${currentPage-1})">上一页</a>
				${currentPage}/${pageCount}	
				<a onclick="GetUserBySday_Eday(${currentPage+1})">下一页</a>	
				<a onclick="GetUserBySday_Eday(${pageCount})">尾页</a>
			</c:if>	
			<c:if test="${isCondition == 1 }">
				<input type="button" value="首页" onclick="GetUserBynuit(1)"/>
				<input type="button" value="上一页" onclick="GetUserBynuit(${currentPage-1})"/>
				${currentPage}/${pageCount}	
				<input type="button" value="下一页" onclick="GetUserBynuit(${currentPage+1})"/>
				<input type="button" value="尾页" onclick="GetUserBynuit(${pageCount})"/>
			</c:if>	
			</td>
		</tr>
	</table>
	
	<script type="text/javascript">
$(function(){
	$("#starttime").datepicker();
	$("#endtime").datepicker();
});
function GetUserBySday_Eday(currentPage){
	data="currentPage="+currentPage;
	var i = 0;
	if($("#starttime").val()!=''){
		data+="&begin="+$("#starttime").val();
	}
	else{
		i+=1;
	}
	if($("#endtime").val()!=''){
		data+="&end="+$("#endtime").val();
	}
	else{
		i+=1;
	}
	if(i!=2){
		window.location="admin/queryUsersByDatePage?"+data;
	}else{
		alert("请输入查询条件");
	}
}
function GetUserBynuit(currentPage){
	var i = 0;
	if($("#sname").val()==""){
		i+=1;
	}
	if($("#sidCard").val()==""){
		i+=1;
	}
	if($("#stelno").val()==""){
		i+=1;
	}
	if(i!=3){
		window.location="admin/queryUsersByCondition?currentPage="+currentPage+"&name="+$("#sname").val()+"&idCard="+$("#sidCard").val()+"&telno="+$("#stelno").val();
	}else{
		alert("请输入查询条件");
	}
}
function buying(uid) {
	var statu=1;
	if($("#buying"+uid).val()=="禁用"){
		statu=0;
	}
	/* alert($("#buying"+uid).val()+"======"+$("#buyend"+uid).val()); */
	
	$.ajax({  
		  url: "admin/updateUserStatusById",  
		  type:'post',
		  dataType:'text',  
		  data:{  
			  uid:uid,
			  statu:statu
		},  
		success:function(data){  
			$("#statustd"+uid).text(data);
			var d=data;
			if (d=="1") {
				$("#buyend"+uid).val("禁用");
				$("#buying"+uid).val("禁用");
			}
			if (d=="0") {
				$("#buying"+uid).val("启用");
				$("#buyend"+uid).val("启用");
			}
		}
	}); 
}
</script>