package com.oracle.ebp_16.controller;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.LinkedList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.oracle.ebp_16.domain.Order;
import com.oracle.ebp_16.domain.OrderList;
import com.oracle.ebp_16.domain.Orders;
import com.oracle.ebp_16.domain.PageBean;
import com.oracle.ebp_16.domain.SelectOrdersBean;
import com.oracle.ebp_16.domain.ShoppingCartItem;
import com.oracle.ebp_16.domain.User;
import com.oracle.ebp_16.exception.OrderException;
import com.oracle.ebp_16.service.OrderListService;
import com.oracle.ebp_16.service.OrderService;
import com.oracle.ebp_16.service.ProductService;
import com.oracle.ebp_16.service.ShoppingCartService;
import com.oracle.ebp_16.service.UserService;
import com.oracle.ebp_16.util.Constant;

@Controller
// @RequestMapping(value="/user")
public class OrderController {
	@Resource
	OrderService orderService;

	@Resource
	OrderListService orderListService;
	@Resource
	ProductService productService;
	@Resource
	UserService userService;
	@Resource
	ShoppingCartService shoppingCartService;

	private boolean checkVal(String[] check_val) {
		if (check_val == null) {
			return false;
		}
		return true;
	}

	private boolean check_num_val(String[] num_val) {
		if (num_val.length == 0) {
			return false;
		}
		return true;
	}

	private boolean check_amount(Double amount) {
		if (amount.doubleValue() == 0.0) {
			return false;
		}
		return true;
	}

	private boolean check_list(List<ShoppingCartItem> list) {
		if (list.size() == 0) {
			return false;
		}
		return true;
	}

	private boolean checkAmountAndBanlance(Double amount, double banlance) {
		if (amount > banlance) {
			return false;
		}
		return true;
	}

	private boolean checkUid(Integer uid) {
		if (uid == null) {
			return false;
		}
		return true;
	}

	private boolean checkAddress(String address) {
		if (address != null && !address.equals("")) {
			return true;
		}
		return false;
	}

	private boolean checkPhone(String phone) {
		if (phone != null && !phone.equals("")) {
			return true;
		}
		return false;
	}

	private boolean checkRecvname(String recvname) {
		if (recvname != null && recvname.equals("")) {
			return true;
		}
		return false;
	}

	private void addList2(List<ShoppingCartItem> list, String[] check_val, List<ShoppingCartItem> list2) {
		for (ShoppingCartItem shoppingCartItem : list) {
			for (String check1 : check_val) {
				if (shoppingCartItem.getScid() == Integer.parseInt(check1)) {
					list2.add(shoppingCartItem);
				}
			}
		}
	}

	private boolean checkMount(List<ShoppingCartItem> list2) {
		for (ShoppingCartItem shoppingCartItem : list2) {
			Integer pid = shoppingCartItem.getPid();
			String balance = productService.queryBanlanceById(pid);
			if (Integer.parseInt(balance) < shoppingCartItem.getMount()) {
				return false;
			}
		}
		return true;
	}

	private int finalCheck(List<ShoppingCartItem> list2, String[] num_val, Integer oid, User user) {
		int orow = 0;
		for (int i = 0; i < list2.size(); i++) {
			ShoppingCartItem shoppingCartItem = list2.get(i);
			String num = num_val[i];
			Integer olid = orderListService.queryMaxId();
			olid = (olid == null || oid == 0) ? 1 : olid + 1;
			Integer status = 1;
			Integer nnum = Integer.parseInt(num);
			orow += orderListService.saveOrderListItem(new OrderList(olid, shoppingCartItem.getDescs(),
					shoppingCartItem.getPrice(), nnum, shoppingCartItem.getSumprice(), oid, status));
			// 更新库存
			productService.updateProduct(shoppingCartItem.getPid(), nnum);
			// 清除购物车
			shoppingCartService.deleteShoppingCart(shoppingCartItem.getScid());
			// 扣除账户余额
			userService.subAccount(user.getUsername(), shoppingCartItem.getSumprice());
			user.setBalance(user.getBalance() - shoppingCartItem.getSumprice());
		}
		return orow;
	}

	@RequestMapping(value = "/my/checkMoney")
	@ResponseBody
	public String saveOrder(String[] num_val, String[] check_val, String sumPrice, String address, String phone,
			String recvname, HttpSession session) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		String tsstr = "";
		tsstr = dateFormat.format(timestamp);
		// -------------------------------
		Order order = null;
		User user = null;
		Double amount = 0.0;
		amount = Double.parseDouble(sumPrice);
		String check = "";
		check = (check_val.length == 1) ? check_val[0] : check;
		user = (User) session.getAttribute("user");
		Integer uid = user.getUid();
		List<ShoppingCartItem> list = (List<ShoppingCartItem>) session
				.getAttribute(Constant.SESSION_SHOPPINGCART_ITEMS);
		boolean checkNumRedult = check_num_val(num_val);
		List<ShoppingCartItem> list2 = new LinkedList<ShoppingCartItem>();
		boolean checkAmountResult = check_amount(amount);
		boolean checkValResult = checkVal(check_val);
		boolean checkUidResult = checkUid(uid);
		boolean checkAddressResult = checkAddress(address);
		boolean checkPhoneResult = checkPhone(phone);
		boolean checkRecvnameResult = checkRecvname(recvname);
		boolean checkListResult = check_list(list2);
		boolean checkAmountResult1 = check_amount(amount);
		boolean checkABResult = checkAmountAndBanlance(amount, user.getBalance());
		String result = (checkABResult == false || checkAddressResult == false || checkAmountResult == false
				|| checkAmountResult1 == false || checkListResult == false || checkNumRedult == false
				|| checkPhoneResult == false || checkRecvnameResult == false || checkUidResult == false
				|| checkValResult == false) ? "0" : null;
		if (result == null) {
			return result;
		}

		addList2(list, check_val, list2);
		// 保证插入订单 id 不存在
		Integer oid = orderService.queryMaxId();
		oid = (oid == null || oid == 0) ? 1 : oid + 1;
		// 如果总额大于账户余额，结算失败
		// 如果商品库存小于购买数量，结算失败
		if (!checkMount(list2)) {
			return "0";
		}
		int row = 0;
		order = new Order(oid, uid, tsstr, amount, address, phone, recvname);
		row = orderService.saveOrder(order);
		session.setAttribute(Constant.SESSION_ORDER, order);
		int orow = finalCheck(list2, num_val, oid, user);
		List<OrderList> list3 = orderListService.listAllOrderlistItems(oid);
		session.setAttribute("user", user);
		session.setAttribute(Constant.SESSION_ORDERLIST_ITEMS, list3);
		return row + "";
	}

	@RequestMapping(value = "/my/ShowOrders.action")
	public String getOrders(HttpSession session, Model model) {
		try {
			User user = (User) session.getAttribute("user");
			if (user == null) {
				return "my/myOrder";
			}
			String uid = user.getUid() + "";
			List<Order> orders = orderService.getOrders(uid);
			model.addAttribute("orders", orders);
		} catch (OrderException e) {
			e.printStackTrace();
		}
		return "my/myOrder";
	}

	/*
	 * 管理员功能
	 */
	@RequestMapping(value = "/admin/queryOrderByDate.action")
	public ModelAndView getAllOrders(Integer currentPage, Integer pageSize, Integer recordCount) {
		if (currentPage == null || currentPage <= 0) {
			currentPage = 1;
		}
		if (pageSize == null) {
			pageSize = 8;
		}
		if (recordCount == null) {
			recordCount = 0;
		}
		PageBean<Orders> list = orderService.getAllOrders(currentPage, pageSize, recordCount);
		ModelAndView mv = new ModelAndView();
		mv.addObject("pageBean", list);
		mv.setViewName("admin/ShowAllOrder");
		return mv;
	}

	@RequestMapping(value = "/admin/queryOrderByDate")
	public ModelAndView getOrdersByTime(Integer currentPage, Integer pageSize, Integer recordCount, String begin,
			String end) {
		String bString = null, eString = null;
		bString = (begin != null) && (!begin.equals(""))
				? begin.substring(0, 4) + begin.substring(5, 7) + begin.substring(8) : "20150101";
		eString = (end != null && !end.equals("")) ? end.substring(0, 4) + end.substring(5, 7) + end.substring(8)
				: "20200101";
		currentPage = (currentPage == null || currentPage <= 0) ? 1 : currentPage;
		pageSize = (pageSize == null) ? 8 : pageSize;
		recordCount = (recordCount == null) ? 0 : recordCount;
		PageBean<Orders> list = orderService.getOrdersPagingByTime(currentPage, pageSize, recordCount, bString,
				eString);
		ModelAndView mv = new ModelAndView();
		mv.addObject("pageBean", list);
		mv.setViewName("admin/ShowAllOrder");
		return mv;
	}

	// 根据关键字分页查询订单
	@RequestMapping(value = "/admin/getOrdersByKeys")
	public ModelAndView getOrdersByKeys(Integer currentPage, Integer pageSize, Integer recordCount, String sname,
			String sidCard, String soid) {
		SelectOrdersBean sob = new SelectOrdersBean(sname, sidCard, soid);
		currentPage = (currentPage == null || currentPage <= 0) ? 1 : currentPage;
		pageSize = (pageSize == null) ? 8 : pageSize;
		recordCount = (recordCount == null) ? 0 : recordCount;
		PageBean<Orders> list = orderService.getOrdersPagingByKeys(currentPage, pageSize, recordCount, sob);
		ModelAndView mv = new ModelAndView();
		mv.addObject("pageBean", list);
		mv.setViewName("admin/ShowAllOrder");
		return mv;
	}
}