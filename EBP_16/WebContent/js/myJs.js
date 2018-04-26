
//用户注册验证
function checRegisterForm(){
	$("#passwordF").html("");
	$("#passwordFF").html("");
	$("#nameF").html("");
	$("#idCardF").html("");
	$("#ageF").html("");
	$("#addressF").html("");
		
	var password=$("#password").val();
	var passwordC=$("#passwordC").val();
	if(password==''){
		$("#passwordF").html("请输入密码！");
		return false;
	}else{$("#passwordF").html("");}
	if(passwordC==''){
		$("#passwordFF").html("请输入确认密码！");
		return false;
	}else{$("#passwordFF").html("");}
	
	if(password!=passwordC){
		$("#passwordF").html("两次密码不一致！");
		return false;
	}else{$("#passwordF").html("");}
	
	var name=$("#name").val();
	if(name==''){
		$("#nameF").html("请输入姓名！");
		return false;
	}else{$("#nameF").html("");}
	
	var idCard=$("#idCard").val();
	if(idCard==''){
		$("#idCardF").html("请输入身份号！");
		return false;
	}else{$("#idCardF").html("");}
	
	var age=$("#age").val();
	if(age==''){
		$("#ageF").html("请输入年龄！");
		return false;
	}else{$("#ageF").html("");}
	
	var address=$("#address").val();
	if(address==''){
		$("#addressF").html("请输入地址！");
		return false;
	}else{$("#addressF").html("");}
	
	return true;
}
//修改信息验证
function checkForm(){
	$("#passwordF").html("");
	$("#passwordFF").html("");
	$("#nameF").html("");
	$("#idCardF").html("");
	$("#ageF").html("");
	$("#addressF").html("");
	alert("进入checkForm");
	
	var password=$("#pass").val();
	var passwordC=$("#conp").val();
	if(password==''){
		$("#passwordF").html("请输入密码！");
		return false;
	}else{$("#passwordF").html("");}
	if(passwordC==''){
		$("#passwordFF").html("请输入确认密码！");
		return false;
	}else{$("#passwordFF").html("");}
	
	if(password!=passwordC){
		$("#passwordF").html("两次密码不一致！");
		return false;
	}else{$("#passwordF").html("");}
	
	var name=$("#nm").val();
	if(name==''){
		$("#nameF").html("请输入姓名！");
		return false;
	}else{$("#nameF").html("");}
	
	var idCard=$("#id").val();
	if(idCard==''){
		$("#idCardF").html("请输入身份号！");
		return false;
	}else{$("#idCardF").html("");}
	
	var age=$("#age").val();
	if(age==''){
		$("#ageF").html("请输入年龄！");
		return false;
	}else{$("#ageF").html("");}
	
	var address=$("#add").val();
	if(address==''){
		$("#addressF").html("请输入地址！");
		return false;
	}else{$("#addressF").html("");}
	
	return true;
}