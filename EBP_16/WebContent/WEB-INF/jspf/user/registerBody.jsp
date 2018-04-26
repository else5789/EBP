<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="myDiv">    
	<form action="user/registerUser" method="post" onsubmit="return checkForm()">
		用&nbsp;&nbsp;户：<input type="text" name="username" id="username"/>
		*<font id="usernameF" color="red"></font>
		<br/><br/>
		
		密&nbsp;&nbsp;码：<input type="password" id="password"/>
		*<font id="passwordF" color="red"></font>
		<br/><br/>
		
		确认密码：<input type="password" name="password" id="passwordC"/>
		*<font id="passwordFF" color="red"></font>
		<br/><br/>
		
		真实姓名：<input type="text" name="name" id="name"/>
		*<font id="nameF" color="red"></font>
		<br/><br/>
		
		性&nbsp;&nbsp;别:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="gender" value="1" checked="checked"/><img src="images/nan.gif">
		<input type="radio" name="gender" value="0"/><img src="images/nv.gif">
		<br/><br/>
		
		身份证号：<input type="text" name="idCard" id="idCard" maxlength="18"/>
		*<font id="idCardF" color="red"></font>
		<br/><br/>
		
		年&nbsp;&nbsp;龄：<input type="number" name="age" id="age"/>
		*<font id="ageF" color="red"></font>
		<br/><br/>
		
		地&nbsp;&nbsp;址：<input type="text" name="address" id="address"/>
		*<font id="addressF" color="red"></font>
		<br/><br/>
		
		联系电话：<input type="text" name="telno" id="telno"/>
		*<font id="telnoF" color="red"></font>
		<br/><br/>
		
		<input type="submit" value="注册" />
		<input type="reset" value="重置"/>
	</form>
</div>
