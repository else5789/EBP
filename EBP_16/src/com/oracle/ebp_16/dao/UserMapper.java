package com.oracle.ebp_16.dao;

import com.oracle.ebp_16.domain.User;

public interface UserMapper {

	public int saveUser(User user);
	
	public User getUserByUsername(String username);
	
	public User getUserById(String uid);
	
	public int topUpAccount(String username, Double topAccount);
	
	public int subAccount(String username, Double subAccount);

	//更新用户信息
	public int updateUser(User user);
}

//public interface UserMapper {
//	public User getUserByUsername(String username);
//}
