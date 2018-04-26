package com.oracle.ebp_16.dao;


import com.oracle.ebp_16.domain.ShoppingCart;

public interface ShoppingCartMapper {
	//直接插入
		public int addShoppingCart(ShoppingCart shoppingCart);
		//删除：更新状态
		public int deleteShoppingCart(Integer scid);
		//根据 id 来查
		public ShoppingCart queryShopCartByUPid(Integer uid,Integer pid);
		//已存在，更新数量和状态
		public int addShoppingIfExist(Integer uid,Integer pid,Integer mount);
}
