package com.oracle.ebp_16.dao;

import java.util.List;

import com.oracle.ebp_16.domain.ShoppingCartItem;

public interface ShoppingCartItemMapper {

	public List<ShoppingCartItem> listAllItems(Integer uid);

	public int deleteItemById(Integer scid);
}
