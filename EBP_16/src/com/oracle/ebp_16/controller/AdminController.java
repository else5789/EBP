package com.oracle.ebp_16.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oracle.ebp_16.domain.Admin;
import com.oracle.ebp_16.domain.User;
import com.oracle.ebp_16.exception.AdminException;
import com.oracle.ebp_16.service.AdminService;
import com.oracle.ebp_16.util.Md5;

@Controller
public class AdminController {

	@Resource
	AdminService adminSvc;

	// 根据关键字获取用户
	@RequestMapping(value = "admin/queryUsersByDatePage")
	public String getuserByTime(Model model, String begin, String end) {
		String bString = null, eString = null;
		if (begin != null) {
			bString = begin.substring(0, 4) + begin.substring(5, 7) + begin.substring(8);
		} else {
			bString = "20150101";
		}
		if (end != null) {
			eString = end.substring(0, 4) + end.substring(5, 7) + end.substring(8);
		} else {
			eString = "20200101";
		}
		try {
			List<User> list = adminSvc.getUserByTime(bString, eString);
			model.addAttribute("list", list);
			return "admin/ShowAllUser";
		} catch (Exception e) {
			e.printStackTrace();
			return "admin/ShowAllUser";
		}
	}

	@RequestMapping(value = "admin/queryUsersByCondition")
	public String getUserByKeys(Model model, String name, String idCard, String telno) {
		if (name.equals("")) {
			name = null;
		}
		if (idCard.equals("")) {
			idCard = null;
		}
		if (telno.equals("")) {
			telno = null;
		}
		User user2 = new User(name, idCard, telno);
		try {
			List<User> list = adminSvc.getUserByKeys(user2);
			model.addAttribute("list", list);
			return "admin/ShowAllUser";
		} catch (Exception e) {
			e.printStackTrace();
			return "admin/ShowAllUser";
		}
	}

	// 获取所有用户
	@RequestMapping(value = "admin/queryUsersByDatePage.action")
	public String getAllUsers(Model model) {
		List<User> list = null;
		try {
			list = adminSvc.getAllUsers();
			model.addAttribute("list", list);
			return "admin/ShowAllUser";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "admin/ShowAllUser";
	}

	// 根据uid获得user
	public User getUserByUid(String uid) {
		User user = null;
		try {
			user = adminSvc.getUserByUid(uid);
			return user;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	// 修改用户状态
	@RequestMapping(value = "admin/updateUserStatusById")
	@ResponseBody
	public String changeUserStatus(String uid, String statu) {
		try {
			adminSvc.changeUserStatus(uid, statu);
			return statu;
		} catch (Exception e) {
			e.printStackTrace();
			return statu;
		}
	}

	private String loginSucc( HttpServletRequest request){
		String url = (String) request.getServletContext().getAttribute("url");
		String URL = "";
		if (url != null) {
			int num = url.indexOf(".");
			URL += url.substring(1, num);
			Map<String, String> urlmap = new HashMap<String, String>();
			urlmap.put("admin/ShowAllOrder", "redirect:/admin/queryOrderByDate.action");
			urlmap.put("admin/ShowAllProduct", "redirect:/admin/showProduct.action");
			urlmap.put("admin/ShowAllUser", "redirect:/admin/queryUsersByDatePage.action");
			urlmap.put(URL, URL);
			return urlmap.get(URL);
		}
		return "admin/index";
	}
	private String checkNullAdmin( HttpServletRequest request,Admin session_admin,Errors errors, Admin admin){
		String result = "";
		if (session_admin != null && !Md5.GetMD5Code(admin.getPassword()).equals(session_admin.getPassword())) {
			errors.rejectValue("password", "empty.admin.password", "密码错误");
			result = "adminlogin";
		} else if (session_admin != null && Md5.GetMD5Code(admin.getPassword()).equals(session_admin.getPassword())
				&& admin.getUsername().equals(session_admin.getUsername())) {
			result = loginSucc(request);
		}
		return result;

	}
	private String checkSessionAdmin(Admin session_admin, Errors errors, Admin admin, HttpServletRequest request) {
		String result = "";
		if (session_admin == null) {
			errors.rejectValue("username", "empty.admin.username", "该用户不存在");
			result = "adminlogin";
		} else
			result = checkNullAdmin(request, session_admin, errors, admin);
		return result;
	}

	@SuppressWarnings("static-access")
	@RequestMapping(value = "/login.action")
	public String login(@Valid @ModelAttribute("admin") Admin admin, Errors errors, HttpSession session,
			HttpServletRequest request) {
		if (errors.hasFieldErrors())
			return "adminlogin";

		Admin session_admin;
		try {
			session_admin = adminSvc.getByName(admin.getUsername());
			session.setAttribute("session_admin", session_admin);
			return checkSessionAdmin(session_admin, errors, session_admin, request);
		} catch (AdminException e) {
			e.printStackTrace();
		}
		return "adminlogin";
	}

	@RequestMapping(value = "admin/adminlogout.action")
	public String adminLogout(HttpSession session, HttpServletRequest request) {
		try {
			request.getServletContext().setAttribute("url", null);
			session.setAttribute("session_admin", null);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/adminlogin.jsp";
	}
}