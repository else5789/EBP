package com.oracle.ebp_16.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oracle.ebp_16.domain.ShoppingCart;
import com.oracle.ebp_16.domain.ShoppingCartItem;
import com.oracle.ebp_16.domain.User;
import com.oracle.ebp_16.service.ProductService;
import com.oracle.ebp_16.service.ShoppingCartItemService;
import com.oracle.ebp_16.service.ShoppingCartService;
import com.oracle.ebp_16.util.Constant;

@Controller
public class ShoppingCartController {

	@Resource
	ShoppingCartService shoppingCartService;
	@Resource
	ProductService productService;
	@Resource
	ShoppingCartItemService shoppingCartItemService;

	@RequestMapping(value = "/addShoppingCart")
	@ResponseBody
	private boolean checkValue(String uid, String pid, String buynum) {
		if (uid != null || pid != null || buynum != null) {
			return false;
		}
		return true;
	}

	public String addShoppingCart(String uid, String pid, String buynum) {
		if (!checkValue(uid, pid, buynum)) {
			return 0 + "";
		}
		Integer uidiInteger = Integer.parseInt(uid);
		Integer pidiInteger = Integer.parseInt(pid);
		Integer mountInteger = Integer.parseInt(buynum);
		ShoppingCart shoppingCart = new ShoppingCart(-1, uidiInteger, pidiInteger, mountInteger, 1);
		ShoppingCart exist = shoppingCartService.queryShopCartByUPid(uidiInteger, pidiInteger);
		int row = 0;
		row = (exist == null) ? shoppingCartService.addShoppingCart(shoppingCart)
				: shoppingCartService.addShoppingIfExist(uidiInteger, pidiInteger, mountInteger);
		productService.updateProduct(pidiInteger, mountInteger);
		return row + "";
	}

	@RequestMapping(value = "/my/deleteById")
	@ResponseBody
	public String deleteById(String scid, HttpSession session) {
		int row = 0;
		if (scid != null) {
			System.out.println("deleteById:" + scid);
			row = shoppingCartService.deleteShoppingCart(Integer.parseInt(scid));
		}
		User user = (User) session.getAttribute(Constant.SESSION_USER);
		List<ShoppingCartItem> list = shoppingCartItemService.listAllItems(user.getUid());
		session.setAttribute(Constant.SESSION_SHOPPINGCART_ITEMS, list);
		System.out.println("row:" + row);
		return row + "";
	}

	@RequestMapping(value = "/my/myCar.action")
	public String listAllItems(HttpSession session) {
		System.out.println("my myCar.action");
		User user = (User) session.getAttribute("user");
		List<ShoppingCartItem> list = null;
		int uid;
		if (user != null) {
			uid = user.getUid();
			list = shoppingCartItemService.listAllItems(uid);
		}
		session.setAttribute(Constant.SESSION_SHOPPINGCART_ITEMS, list);
		return "/my/myCar";
	}
}
