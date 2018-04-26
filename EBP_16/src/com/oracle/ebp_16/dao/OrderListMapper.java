package com.oracle.ebp_16.dao;

import java.util.List;

import com.oracle.ebp_16.domain.OrderList;

public interface OrderListMapper {
	//获取订单详情
	public List<OrderList> getOrderList(String oid);

	/**
	 * 小订单的数据来源：小订单号（自增），商品描述，商品单价，商品数量，大订单号，状态
	 */
	public int saveOrderListItem(OrderList orderList);

	public List<OrderList> listAllOrderlistItems(Integer oid);

	public Integer queryMaxId();

	/**
	 * 用户查询订单细节
	 * @param oid
	 * @return
	 */
	public List<OrderList> userGetOrdersList(String oid);
}
