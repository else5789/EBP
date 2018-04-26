package com.oracle.ebp_16.domain;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

public class RegisterBean {
	//@NotBlank(message="请输入用户名")
	@Length(min=6,max=20,message="应为6-20位")
	private String username;
	//@NotBlank(message="请输入密码")
	@Length(min=6,max=20,message="应为6-20位")
	private String password;
	@NotBlank(message="请确认密码")
	private String conpassword;
	@NotBlank(message="请输入姓名")
	private String name;
	@NotEmpty(message="请选择性别")
	private String gender;//0-女，1-男
	//@NotEmpty(message="请输入年龄")
//	@Range(min=18,max=200,message="请输入正确的年龄范围")
	private int age;
	//@NotBlank(message="请输入身份证")
	@Length(min=18,max=18,message="ID为18位")
	private String idCard;
	@NotBlank(message="请输入住址")
	private String address;
	@Length(min=11,max=11,message="号码为11位")
	//@NotBlank(message="请输入号码")
	private String telno;

	//@NotEmpty(message="请输入状态")
	//private String status;//0-user,1-admin
	public RegisterBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getConpassword() {
		return conpassword;
	}


	public void setConpassword(String conpassword) {
		this.conpassword = conpassword;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public String getIdCard() {
		return idCard;
	}


	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getTelno() {
		return telno;
	}


	public void setTelno(String telno) {
		this.telno = telno;
	}


	public RegisterBean(String username, String password, String conpassword, String name, String gender, int age,
			String idCard, String address, String telno) {
		super();
		this.username = username;
		this.password = password;
		this.conpassword = conpassword;
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.idCard = idCard;
		this.address = address;
		this.telno = telno;
	}
}
