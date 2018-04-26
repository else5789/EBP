package com.oracle.ebp_16.service;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.oracle.ebp_16.dao.UserMapper;
import com.oracle.ebp_16.domain.RegisterBean;
import com.oracle.ebp_16.domain.User;
import com.oracle.ebp_16.util.Md5;


@Service
@Scope
public class UserService {
	@Resource
	UserMapper userMapper;
	
	public void register(RegisterBean rb) throws Exception{
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Timestamp ts = new Timestamp(System.currentTimeMillis());         
		String tsStr = ""; 
		tsStr = sdf.format(ts); 
		User user =new User(-1, 
				rb.getUsername(),
				Md5.GetMD5Code(rb.getPassword()),
				rb.getName(), 
				rb.getGender().equals("女")?0:1,
				rb.getAge(),
				rb.getIdCard(),
				rb.getAddress(),
				rb.getTelno(),
				tsStr,0.00,1
				);
		System.out.println("产生注册用户信息  "+user);
		try {
			userMapper.saveUser(user);
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception("注册异常:"+e.getMessage(), e);
		}
	}
	
	public User login(String username) throws Exception{
		User user=null;
		try {
			user=userMapper.getUserByUsername(username);
			System.out.println("user is    "+ user);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("123123123-e.getMessage(),--\n\n-----");
			throw new Exception("登录异常:"+e.getMessage(), e);
		}
		return user;
	}
	
	public int topUpAcount(String username,Double topAccount){
		System.out.println("UserService:topUpAcount");
		return userMapper.topUpAccount(username,topAccount);
	}
	
	//修改用户信息
	public int updateUser(User user){
		return userMapper.updateUser(user);
	}
	
	public int subAccount(String username,Double subAccount){
		System.out.println("UserService:subAcount");
		return userMapper.subAccount(username,subAccount);
	}
}

