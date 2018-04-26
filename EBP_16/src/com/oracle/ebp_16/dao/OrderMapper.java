package com.oracle.ebp_16.dao;

import java.util.List;

import com.oracle.ebp_16.domain.Order;
import com.oracle.ebp_16.domain.Orders;
import com.oracle.ebp_16.domain.SelectOrdersBean;


public interface OrderMapper {
	/*
	 * 用户
	 */
	//根据uid获取订单
	public List<Order> getOrders(String uid);
	
	public int saveOrder(Order order);
	
	public List<Order> listAllOrders(Integer uid);
	
	public Integer queryMaxId();
	
	
	/*
	 * 
	 * 管理员
	 */
	//查询所有订单（连接查询）
	public List<Orders> getAllOrders(int index,int pageSize);
	public int getAllOrdersCount();
	//根据时间分页查询订单
	public List<Orders> getOrdersByTime(String begin,String end,int index,int pageSize);
	//根据时间查询订单数量
	public int getOrdersCountByTime(String begin,String end);

	//根据关键字段 sname sidCard soid 分页查询订单
	public List<Orders> getOrdersByKeys(SelectOrdersBean sob);
	//根据关键字段 sname sidCard soid 查询订单数量
	public int getOrdersCountByKeys(SelectOrdersBean sob);
	
	
}
