package com.oracle.ebp_16.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.oracle.ebp_16.dao.AdminMapper;
import com.oracle.ebp_16.domain.Admin;
import com.oracle.ebp_16.domain.User;
import com.oracle.ebp_16.exception.AdminException;

@Service
@Scope
@Resource
public class AdminService{

	 @Resource
	 private AdminMapper adminMapper;
	 
	 //获取所有用户
	 public List<User> getAllUsers(){
		 return adminMapper.getAllUsers();
	 }
	 
	 //根据时间查询用户
	 public List<User> getUserByTime(String begin,String end){
		 return adminMapper.getUserByTime(begin, end);
	 }
	 //根据关键字获取用户
	 public List<User> getUserByKeys(User user){
		 return adminMapper.getUserByKeys(user);
	 }
	 
	 //根据uid获得user
	 public User getUserByUid(String uid){
		 System.out.println("根据uid："+uid+"查询user");
		 return adminMapper.getUserByUid(uid);
	 }
	 
	 //修改用户状态
	 public int changeUserStatus(String uid,String status){
		 System.out.println("This is adminService:  uid is"+uid+"   status is "+status);
		 return adminMapper.changeStatus(uid, status);
	 }
	 
	 //根据用户名获取adminuser
	 public Admin getByName (String username) throws AdminException{
		 return adminMapper.selectByName(username);
	 }
}
