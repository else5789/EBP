package com.oracle.ebp_16.controller;


import java.util.LinkedList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.oracle.ebp_16.domain.PageBean;
import com.oracle.ebp_16.domain.Product;
import com.oracle.ebp_16.exception.ProductException;
import com.oracle.ebp_16.service.ProductService;

@Controller
public class ProductController {
	@Resource
	ProductService productSvc;
	/*
	 * 管理员查询商品
	 */
	@RequestMapping(value = "/addProduct.action")
	public String addproduct(@Valid @ModelAttribute("product") Product product,
			Errors errors) {
		if (errors.hasFieldErrors())
			return "admin/AddProduct";

		try {
			productSvc.add(product);
			System.out.println("add product success");
			return "admin/AddProduct";
		} catch (ProductException e) {
			e.printStackTrace();
			System.out.println("添加商品失败  addProduct.action");
		}
		return "admin/AddProduct";
	}

	@RequestMapping(value = "/admin/changeProductStatus.action")
	@ResponseBody
	public String changeproduct(String pid, String status) {

		try {
			productSvc.changestatus(pid, status);
			System.out.println("change status success +++++");
			return status;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("change status failed-----");
			return status;
		}
	}

	@RequestMapping(value = "/admin/selectByDescs.action")
	public ModelAndView selectByDescs(Integer currentPage,Integer pageSize,Integer recordCount,@RequestParam("descs")String descs){

		if (currentPage==null || currentPage<=0) currentPage=1;
		if(pageSize==null)pageSize=15;
		if(recordCount==null)recordCount=0;
		PageBean<Product> p=productSvc.getProductPagingByDescs(currentPage, pageSize, recordCount, descs);
		p.SetPageBean(p.getCurrentPage(), p.getPageSize(), p.getRecordList(), p.getRecordCount());
		ModelAndView mv=new ModelAndView();
		mv.addObject("pageBean",p);
		mv.setViewName("admin/ShowAllProduct");
		return mv;
	}

	@RequestMapping(value = "/admin/showProduct.action")
	public ModelAndView showproduct(HttpSession session,Integer currentPage,Integer pageSize,Integer recordCount) {

		if (currentPage==null || currentPage<=0) currentPage=1;
		if(pageSize==null)pageSize=15;
		if(recordCount==null)recordCount=0;
		PageBean<Product> p=productSvc.getProductPaging(currentPage, pageSize, recordCount);
		p.SetPageBean(p.getCurrentPage(), p.getPageSize(), p.getRecordList(), p.getRecordCount());
		ModelAndView mv=new ModelAndView();
		mv.addObject("pageBean",p);
		mv.setViewName("admin/ShowAllProduct");
		return mv;
	}

	@RequestMapping(value = "/admin/getById.action")
	public String getById(@RequestParam("pid")String pid,HttpSession session,HttpServletRequest req) {
		Product p=productSvc.selectById(pid);
		session.setAttribute("pid", p.getPid());
		session.setAttribute("descs", p.getDescs());
		session.setAttribute("amount", p.getAmount());
		session.setAttribute("balance", p.getBalance());
		session.setAttribute("price", p.getPrice());
		System.out.println("商品  : "+ p);
		return "admin/UpdateProduct";
	}

	@RequestMapping(value = "/admin/updateProduct.action")
	public String adminUpdateProduct(@RequestParam("pid")String pid,@RequestParam("descs")String descs,
			@RequestParam("amount")String amount,@RequestParam("balance")String balance,@RequestParam("price")String price){
		productSvc.adminUpdateProduct(pid,descs,amount,balance,price);
		return "admin/UpdateProduct";
	}


	/**
	 *用户查询
	 *
	 */
	//查询所有商品
	@RequestMapping(value="/listALLProduct.action")
	public String listAllProducts(HttpSession session){
		List<Product> list = productSvc.listAllProducts();
		if (list.size() != 0) {
			session.setAttribute("listP", list);
			for(Product pro:list){
				System.out.println("insert into product values("+pro.getPid()+",'"
						+pro.getDescs()+"',"+pro.getAmount()+","+pro.getBalance()+","
								+pro.getPrice()+","+pro.getStatus()+",'"+pro.getSrc()
								+"')");
			}
			System.out.println("ProductController:listAllProducts:true");
			return "protable1";
		}
		return "protable1";
		//return "user/index";
	}
	//根据关键字查询商品
	@RequestMapping(value="/queryProducts.action")
	public String queryProducts(HttpSession session
			,HttpServletRequest request
			,@RequestParam("descs") String descs
			,@RequestParam("min") String min
			,@RequestParam("max") String max){
		List<Product> list = new LinkedList<Product>();
		Double mindDouble = Double.MIN_VALUE;
		Double maxdDouble = Double.MAX_VALUE;
		if (min != null && ! min.trim().equals("")) {
			System.out.println("判断一次");
			mindDouble = Double.parseDouble(min);
		}
		if (max != null && ! max.trim().equals("")) {
			System.out.println("判断二次");
			maxdDouble = Double.parseDouble(max);
		}
		System.out.println(descs +"     minDouble" +mindDouble+"   maxDouble"+maxdDouble);
		list = productSvc.queryProducts(descs, mindDouble,maxdDouble);
		session.setAttribute("listP", list);
		return "protable1";
	}

	@RequestMapping(value="/proinfo")
	public String proinfo(String pid,HttpSession session){
		if (pid != null) {
			Product product = null;
			product = productSvc.selectById(pid);
			if (product != null) {
				session.setAttribute("product", product);
			}
		}
		return "proinfo";
	}

}
