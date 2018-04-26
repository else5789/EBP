package com.oracle.ebp_16.domain;

import java.util.Date;

public class OrderBean {
	private int uid;
	private Date regTime;
	public OrderBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderBean(int uid, Date regTime) {
		super();
		this.uid = uid;
		this.regTime = regTime;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public Date getRegTime() {
		return regTime;
	}
	public void setRegTime(Date regTime) {
		this.regTime = regTime;
	}
	@Override
	public String toString() {
		return "OrderBean [uid=" + uid + ", regTime=" + regTime + "]";
	}
	
}
