package com.oracle.ebp_16.domain;


public class Orders {
	private Order order;
	private OrderList orderList;
	private User user;
	public Orders() {
		super();
	}
	public Orders(Order order, OrderList orderList, User user) {
		super();
		this.order = order;
		this.orderList = orderList;
		this.user = user;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public OrderList getOrderList() {
		return orderList;
	}
	public void setOrderList(OrderList orderList) {
		this.orderList = orderList;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Orders [order=" + order + ", orderList=" + orderList + ", user=" + user + "]";
	}
	
}