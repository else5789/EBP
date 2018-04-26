package com.oracle.ebp_16.domain;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.stereotype.Component;
@Component
public class Product {

	private Integer pid;
	
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}

	@NotBlank(message="描述不能为空")
	@NotNull(message="描述不能为空")
	private String descs;
	@NotBlank(message="商品总量不能为空")
	@NotNull(message="总量不能为空")
	private String amount;
	@NotBlank(message="该栏不能为空")
	@NotNull(message="该栏不能为空")
	private String balance;
	@NotBlank(message="价格不能为空")
	@NotNull(message="价格不能为空")
	private String price;
	@NotBlank(message="状态不能为空")
	@NotNull(message="状态不能为空")
	private String status;
	private String src;
	
	public Product(Integer pid, String descs, String amount, String balance, String price, String status, String src) {
		super();
		this.pid = pid;
		this.descs = descs;
		this.amount = amount;
		this.balance = balance;
		this.price = price;
		this.status = status;
		this.src = src;
	}
	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
	public String getDescs() {
		return descs;
	}
	public void setDescs(String descs) {
		this.descs = descs;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Product(String descs, String amount, String balance, String price,
			String status) {
		super();
		this.descs = descs;
		this.amount = amount;
		this.balance = balance;
		this.price = price;
		this.status = status;
	}
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Product [descs=" + descs + ", amount=" + amount + ", balance="
				+ balance + ", price=" + price + ", status=" + status + "]";
	}
	
	
}

