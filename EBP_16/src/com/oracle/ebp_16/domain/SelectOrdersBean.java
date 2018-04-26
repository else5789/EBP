package com.oracle.ebp_16.domain;

public class SelectOrdersBean {
	private String sname;
	private String sidCard;
	private String soid;
	private int index;
	private int pageSize;
	public SelectOrdersBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SelectOrdersBean( String sname, String sidCard,String soid) {
		super();
		this.soid = soid;
		this.sname = sname;
		this.sidCard = sidCard;
	}
	public SelectOrdersBean(String sname, String sidCard, String soid, int index, int pageSize) {
		super();
		this.sname = sname;
		this.sidCard = sidCard;
		this.soid = soid;
		this.index = index;
		this.pageSize = pageSize;
	}
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public String getSoid() {
		return soid;
	}
	public void setSoid(String soid) {
		this.soid = soid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSidCard() {
		return sidCard;
	}
	public void setSidCard(String sidCard) {
		this.sidCard = sidCard;
	}
	@Override
	public String toString() {
		return "SelectOrdersBean [soid=" + soid + ", sname=" + sname + ", sidCard=" + sidCard + "]";
	}
	
}
