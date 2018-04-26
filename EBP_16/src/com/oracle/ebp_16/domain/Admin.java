package com.oracle.ebp_16.domain;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.stereotype.Component;
@Component
public class Admin {
	private int aid;
	@NotNull(message="用户名不能为空！")
	@NotBlank(message="用户名不能为空！")
	private String username;
	@NotNull(message="密码不能为空！")
	@NotBlank(message="密码不能为空！")
	private String password;
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
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
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Admin(int aid, String username, String password) {
		super();
		this.aid = aid;
		this.username = username;
		this.password = password;
	}
	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", userName=" + username + ", password="
				+ password + "]";
	}
}