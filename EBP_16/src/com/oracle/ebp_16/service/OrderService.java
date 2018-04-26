package com.oracle.ebp_16.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.oracle.ebp_16.dao.OrderMapper;
import com.oracle.ebp_16.domain.Order;
import com.oracle.ebp_16.domain.Orders;
import com.oracle.ebp_16.domain.PageBean;
import com.oracle.ebp_16.domain.SelectOrdersBean;
import com.oracle.ebp_16.exception.OrderException;

@Service
@Scope
public class OrderService {
	@Resource
	OrderMapper orderMapper;
	
	public List<Order> getOrders(String uid) throws OrderException{
		return orderMapper.getOrders(uid);
	}
	
	public int saveOrder(Order order){
		int row=0;
		row= orderMapper.saveOrder(order);
		return row;
	}
	public List<Order> listAllOrders(Integer uid){
		List<Order> list = orderMapper.listAllOrders(uid);
		return list;
	}
	
	public Integer queryMaxId(){
		return orderMapper.queryMaxId();
	}
	
	/*
	 * 管理员功能
	 */
	/**
	 *获得所有订单信息（连接查询） 
	 * @return
	 */
	public PageBean<Orders> getAllOrders(int currentPage,int pageSize,int recordCount){
		try {
			int start=currentPage==1?0:(currentPage-1)*pageSize;
			if(recordCount==0){
				recordCount=orderMapper.getAllOrdersCount();
			}
			List<Orders> list=orderMapper.getAllOrders(start, pageSize);
			PageBean<Orders> pageBean=new PageBean<Orders>(currentPage, pageSize, list, recordCount);
			return pageBean;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 *根据时间分页查询订单 
	 * @param begin 起始时间
	 * @param end  结束时间
	 * @param index  当前页
	 * @param pageSize 显示页数
	 * @return
	 */
	public PageBean<Orders> getOrdersPagingByTime(int currentPage,int pageSize,int recordCount,String begin,String end){
		try {
			int start=currentPage==1?0:(currentPage-1)*pageSize;
			if(recordCount==0){
				recordCount=orderMapper.getOrdersCountByTime(begin, end);
			}
			List<Orders> list=orderMapper.getOrdersByTime(begin,end, start, pageSize);
			PageBean<Orders> pageBean=new PageBean<Orders>(currentPage, pageSize, list, recordCount);
			return pageBean;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 根据关键字分页查询订单
	 * @param currentPage
	 * @param pageSize
	 * @param recordCount
	 * @param sob
	 * @return
	 */
	public PageBean<Orders> getOrdersPagingByKeys(int currentPage,int pageSize,int recordCount,SelectOrdersBean sob){
		try {
			int start=currentPage==1?0:(currentPage-1)*pageSize;
			if(recordCount==0){
				recordCount=orderMapper.getOrdersCountByKeys(sob);
			}
			sob.setIndex(start);
			sob.setPageSize(pageSize);
			List<Orders> list=orderMapper.getOrdersByKeys(sob);
			PageBean<Orders> pageBean=new PageBean<Orders>(currentPage, pageSize, list, recordCount);
			return pageBean;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
