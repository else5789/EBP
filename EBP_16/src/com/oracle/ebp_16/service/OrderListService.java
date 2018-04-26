package com.oracle.ebp_16.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.oracle.ebp_16.dao.OrderListMapper;
import com.oracle.ebp_16.domain.OrderList;
@Service
public class OrderListService {
	@Resource
	OrderListMapper orderListMapper;
	
	public List<OrderList> getOrdersList(String oid){
		return orderListMapper.getOrderList(oid);
	}
	
	public int saveOrderListItem(OrderList orderList){
		int row =orderListMapper.saveOrderListItem(orderList);
		return row;
	}
	
	public List<OrderList> listAllOrderlistItems(Integer oid){
		List<OrderList> list = orderListMapper.listAllOrderlistItems(oid);
		return list;
	}
	
	public Integer queryMaxId(){
		return orderListMapper.queryMaxId();
	}
	
	/**
	 * 用户查询订单细节
	 */
	public List<OrderList> userGetOrdersList(String oid){
		return orderListMapper.userGetOrdersList(oid);
	}
}
