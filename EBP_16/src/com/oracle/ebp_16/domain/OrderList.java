package com.oracle.ebp_16.domain;


public class OrderList {
	private int lid;
	private String descs;
	private double price;//double(10,2)
	private int quantity;
	private double amount;//double(10,2)
	private int oid;
	private int status;
	public OrderList() {
		super();
	}
	public OrderList(Integer lid, String descs, Double price, Integer quantity,
			Double amount, Integer oid, Integer status) {
		super();
		this.lid = lid;
		this.descs = descs;
		this.price = price;
		this.quantity = quantity;
		this.amount = amount;
		this.oid = oid;
		this.status = status;
	}
	
	public OrderList(int lid, String descs, double price, int quantity, double amount, int oid, int status) {
		super();
		this.lid = lid;
		this.descs = descs;
		this.price = price;
		this.quantity = quantity;
		this.amount = amount;
		this.oid = oid;
		this.status = status;
	}
	public int getLid() {
		return lid;
	}
	public void setLid(int lid) {
		this.lid = lid;
	}
	public String getDescs() {
		return descs;
	}
	public void setDescs(String descs) {
		this.descs = descs;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "OrderList [lid=" + lid + ", descs=" + descs + ", price=" + price + ", quantity=" + quantity
				+ ", amount=" + amount + ", oid=" + oid + ", status=" + status + "]";
	}
}
