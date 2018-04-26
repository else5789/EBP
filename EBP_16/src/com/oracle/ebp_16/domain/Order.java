package com.oracle.ebp_16.domain;

import java.util.List;

import javax.validation.constraints.NotNull;

public class Order {
	private int oid;
	@NotNull(message="请填写提交时间")
	private String commitTime;
	private double amount;
	@NotNull(message="请填写地址")
	private String address;
	@NotNull(message="请填写联系方式")
	private String phone;
	@NotNull(message="请填写收件人姓名")
	private String recvname;
	private int uid;
	private User user;//用户
	private OrderList orderList;//订单详情
	private List<OrderList> list;//所有订单详情
	public Order() {
		super();
	}
	public Order(int oid, String commitTime, double amount, String address, String phone, String recvname, int uid) {
		super();
		this.oid = oid;
		this.commitTime = commitTime;
		this.amount = amount;
		this.address = address;
		this.phone = phone;
		this.recvname = recvname;
		this.uid = uid;
	}
	public Order(Integer oid, Integer uid, String commitTime, double amount,
			String address, String phone, String recvname) {
		super();
		this.oid = oid;
		this.uid = uid;
		this.commitTime = commitTime;
		this.amount = amount;
		this.address = address;
		this.phone = phone;
		this.recvname = recvname;
	}

	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getCommitTime() {
		return commitTime;
	}
	public void setCommitTime(String commitTime) {
		this.commitTime = commitTime;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getRecvname() {
		return recvname;
	}
	public void setRecvname(String recvname) {
		this.recvname = recvname;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public OrderList getOrderList() {
		return orderList;
	}
	public void setOrderList(OrderList orderList) {
		this.orderList = orderList;
	}
	public List<OrderList> getList() {
		return list;
	}
	public void setList(List<OrderList> list) {
		this.list = list;
	}
	@Override
	public String toString() {
		return "Order [oid=" + oid + ", commitTime=" + commitTime + ", amount=" + amount + ", address=" + address
				+ ", phone=" + phone + ", recvname=" + recvname + ", uid=" + uid + ", user=" + user + ", orderList="
				+ orderList + ", list=" + list + "]";
	}
}
