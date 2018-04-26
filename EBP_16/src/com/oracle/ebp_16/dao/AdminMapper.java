package com.oracle.ebp_16.dao;

import java.util.List;

import com.oracle.ebp_16.domain.Admin;
import com.oracle.ebp_16.domain.User;

public interface AdminMapper {
	//根据用户名获取adminuser  
	//用于管理员登录
	public Admin selectByName(String username);
	//根据uid得到用户
	public User getUserByUid(String uid);
	//改变用户状态
	public int changeStatus(String uid,String status);
	//根据关键字段查询用户
	public List<User> getUserByTime(String begin,String end);
	public List<User> getUserByKeys(User user);
	//查询所有用户
	public List<User> getAllUsers();
}
