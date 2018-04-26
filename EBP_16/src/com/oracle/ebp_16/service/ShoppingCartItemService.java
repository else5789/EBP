package com.oracle.ebp_16.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.oracle.ebp_16.dao.ShoppingCartItemMapper;
import com.oracle.ebp_16.domain.ShoppingCartItem;

@Service
@Scope
public class ShoppingCartItemService {
	@Resource
	ShoppingCartItemMapper shoppingCartItemMapper;
	
	public List<ShoppingCartItem> listAllItems(Integer uid){
		List<ShoppingCartItem> list = shoppingCartItemMapper.listAllItems(uid);
		if(list.size() != 0){
			for (ShoppingCartItem shoppingCartItem : list) {
				System.out.println(shoppingCartItem);
			}
		}
		return list;
	}
}
