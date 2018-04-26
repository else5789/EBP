package com.oracle.ebp_16.domain;

public class ShoppingCartItem {
	private Integer scid;
	private Integer pid;
	private String descs;
	private Double price;
	private Integer mount;
	private Double sumprice;
	public ShoppingCartItem() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public ShoppingCartItem(Integer scid, String descs, Double price,
			Integer mount, Double sumprice) {
		super();
		this.scid = scid;
		this.descs = descs;
		this.price = price;
		this.mount = mount;
		this.sumprice = sumprice;
	}
	public Integer getScid() {
		return scid;
	}
	public void setScid(Integer scid) {
		this.scid = scid;
	}
	public String getDescs() {
		return descs;
	}
	public void setDescs(String descs) {
		this.descs = descs;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Integer getMount() {
		return mount;
	}
	public void setMount(Integer mount) {
		this.mount = mount;
	}
	public Double getSumprice() {
		return sumprice;
	}
	public void setSumprice(Double sumprice) {
		this.sumprice = sumprice;
	}
	@Override
	public String toString() {
		return "ShoppingCartItem [scid=" + scid + ", pid=" + pid + ", descs="
				+ descs + ", price=" + price + ", mount=" + mount
				+ ", sumprice=" + sumprice + "]";
	}

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}
}
