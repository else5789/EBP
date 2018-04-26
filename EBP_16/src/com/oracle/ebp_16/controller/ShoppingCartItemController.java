package com.oracle.ebp_16.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.ebp_16.domain.ShoppingCartItem;
import com.oracle.ebp_16.service.ShoppingCartItemService;

@Controller
public class ShoppingCartItemController {
	@Resource
	ShoppingCartItemService shoppingCartItemService;
	@RequestMapping(value="/user/showAllCartItems")
	public String listAllItems(HttpSession session,String uid){
		List<ShoppingCartItem> list = null;
		if (uid != null || "".equals(uid.trim())) {
			list = shoppingCartItemService.listAllItems(Integer.parseInt(uid));
		}
		if (list.size() != 0) {
			session.setAttribute("shoppingCartItem", list);
			for (ShoppingCartItem shoppingCartItem : list) {
				System.out.println(shoppingCartItem);
			}
		}
		return "user/ShoppingCart";
	}
}
