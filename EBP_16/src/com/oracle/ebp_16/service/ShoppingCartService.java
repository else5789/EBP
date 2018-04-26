package com.oracle.ebp_16.service;


import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.oracle.ebp_16.dao.ShoppingCartMapper;
import com.oracle.ebp_16.domain.ShoppingCart;

@Service
@Scope
public class ShoppingCartService {
	@Resource
	ShoppingCartMapper shoppingCartMapper;

	public int addShoppingCart(ShoppingCart shoppingCart) {
		int row = shoppingCartMapper.addShoppingCart(shoppingCart);
		return row;
	}
	
	public int deleteShoppingCart(Integer scid){
		int row = shoppingCartMapper.deleteShoppingCart(scid);
		return row;
	}
	
//	public List<ShoppingCart> listShoppingCartsByUid(Integer uid){
//		List<ShoppingCart> list = shoppingCartMapper.listShoppingCartsByUid(uid);
//		if (list.size() != 0) {
//			for (ShoppingCart shoppingCart : list) {
//				System.out.println(shoppingCart);
//			}
//		}
//		return list;
//	}
	
	public ShoppingCart queryShopCartByUPid(Integer uid,Integer pid){
		ShoppingCart shoppingCart = shoppingCartMapper.queryShopCartByUPid(uid, pid);
		return shoppingCart;
	}
	
	public int addShoppingIfExist(Integer uid,Integer pid,Integer mount){
		int row = shoppingCartMapper.addShoppingIfExist(uid,pid,mount);
		return row;
	}
}
