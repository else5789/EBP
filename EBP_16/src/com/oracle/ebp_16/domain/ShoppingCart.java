package com.oracle.ebp_16.domain;

public class ShoppingCart {
	private Integer scid;
	private Integer uid;
	private Integer pid;
	private Integer mount;
	private Integer isdeleted;
	public ShoppingCart() {
		super();
	}
	public ShoppingCart(Integer scid, Integer uid, Integer pid, Integer mount,
			Integer isdeleted) {
		super();
		this.scid = scid;
		this.uid = uid;
		this.pid = pid;
		this.mount = mount;
		this.isdeleted = isdeleted;
	}
	public Integer getScid() {
		return scid;
	}
	public void setScid(Integer scid) {
		this.scid = scid;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public Integer getMount() {
		return mount;
	}
	public void setMount(Integer mount) {
		this.mount = mount;
	}
	public Integer getIsdeleted() {
		return isdeleted;
	}
	public void setIsdeleted(Integer isdeleted) {
		this.isdeleted = isdeleted;
	}
	@Override
	public String toString() {
		return "ShoppingCart [scid=" + scid + ", uid=" + uid + ", pid=" + pid
				+ ", mount=" + mount + ", isdeleted=" + isdeleted + "]";
	}
}
