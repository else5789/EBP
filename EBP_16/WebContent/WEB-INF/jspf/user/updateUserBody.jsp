<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
	function firm(){
		var flag = checkForm();
		if(flag){//checkForm无错误，则询问是否提交修改表单
			if (confirm("确认修改信息？")) {//如果是true ，那么就把页面转向thcjp.cnblogs.com
				updateForm.submit();
				alert("修改信息成功");
			} else {//否则说明下了，赫赫
				alert("取消修改信息");
			}
		}
	}
</script>
<div id="myDiv">    
	<form id="updateForm" action="user/updateUser.action?uid=${user.uid}" method="post" >
		<%-- 用户名&nbsp;：
		<input type="text" name="username" id="username" value="${user.username }"/>
		&nbsp;<font id="usernameF" color="red"></font>
		<br/><br/> --%>
		
		密&nbsp;&nbsp;码：
		<input type="password" id="password" value="${user.password }"/>
		&nbsp;<font id="passwordF" color="red"></font>
		<br/><br/>
		
		确认密码：
		<input type="password" name="password" id="passwordC" value="${user.password }"/>
		&nbsp;<font id="passwordFF" color="red"></font>
		<br/><br/>
		
		真实姓名：
		<input type="text" name="name" id="name" value="${user.name }"/>
		&nbsp;<font id="nameF" color="red"></font>
		<br/><br/>
		
		性&nbsp;&nbsp;别:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="gender" value="1" <c:if test="${user.gender==1 }">checked="checked" </c:if>/><img src="images/nan.gif">
		<input type="radio" name="gender" value="0" <c:if test="${user.gender==0 }">checked="checked" </c:if>/><img src="images/nv.gif">
		<br/><br/>
		
		身份证号：<input type="text" name="idCard" id="idCard" maxlength="18" value="${user.idCard }"/>
		&nbsp;<font id="idCardF" color="red"></font>
		<br/><br/>
		
		年&nbsp;&nbsp;龄：
		<input type="number" name="age" id="age" value="${user.age }"/>
		&nbsp;<font id="ageF" color="red"></font>
		<br/><br/>
		
		地&nbsp;&nbsp;址：
		<input type="text" name="address" id="address" value="${user.address }"/>
		&nbsp;<font id="addressF" color="red"></font>
		<br/><br/>
		
		联系电话：
		<input type="text" name="telno" id="telno" value="${user.telno }"/>
		&nbsp;<font id="telnoF" color="red"></font>
		<br/><br/>
		
		<input type="button" value="修改信息" onclick="firm()"/>
		<input type="reset" value="重置"/>
	</form>
</div>
