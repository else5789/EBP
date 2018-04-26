package com.oracle.ebp_16.service;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.oracle.ebp_16.dao.ProductMapper;
import com.oracle.ebp_16.domain.PageBean;
import com.oracle.ebp_16.domain.Product;
import com.oracle.ebp_16.exception.ProductException;


@Service
@Scope
@Resource
public class ProductService {
	 @Resource
	 private ProductMapper productMapper;
	 /*
	 * 管理员查询商品
	*/
	 public List<Product> show() throws ProductException{
		 List<Product> list = productMapper.selectAll();
		 return list;
		
	 }
	 public Product add(Product product) throws ProductException{
		 productMapper.addProduct(product);
		 return product;
	 }
	 
	 public Product selectById(String pid){
		return productMapper.selectById(pid);
	 }
	 
	 public int changestatus(String pid,String status){
		 return productMapper.changestatus(pid,status);
	 }
	 
	 public List<Product> selectByDescs(String descs)throws ProductException{
		 List<Product> list = productMapper.selectByDescs(descs);
		 return list;
	 }
	 
	public int adminUpdateProduct(String pid, String descs, String amount,
			String balance, String price) {
		return productMapper.adminUpdateProduct(pid,descs,amount,balance,price);
	}
	public PageBean<Product> getProductPaging(int currentPage,int pageSize,int recordCount){
		try {
			int start=currentPage==1?0:(currentPage-1)*pageSize;
			if(recordCount==0){
				recordCount=productMapper.getCount();
			}
			List<Product> list=productMapper.getProduct(start, pageSize);
			PageBean<Product> pageBean=new PageBean<Product>(currentPage, pageSize, list, recordCount);
			return pageBean;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public PageBean<Product> getProductPagingByDescs(int currentPage,int pageSize,int recordCount,String descs){
		try {
			int start=currentPage==1?0:(currentPage-1)*pageSize;
			if(recordCount==0){
				recordCount=productMapper.getCount();
			}
			List<Product> list=productMapper.getByDescs(start,pageSize,descs);
			PageBean<Product> pageBean=new PageBean<Product>(currentPage, pageSize, list, recordCount);
			return pageBean;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	 
	 /*
	  * 用户功能
	  */
	public List<Product> listAllProducts() {
		List<Product> list = productMapper.listALLProducts();
		if (list.size() != 0) {
			for (Product product : list) {
				System.out.println(product);
			}
		}
		System.out.println("ProductService:listAllProducts");
		return list;
	}

	public List<Product> queryProducts(String descs, Double min, Double max) {
		List<Product> list = productMapper.queryProducts(descs, min, max);
		if (list.size() != 0) {
			for (Product product : list) {
				System.out.println(product);
			}
		}
		System.out.println("ProductService:queryProducts");
		return list;
	}
	
	public int updateProduct(Integer pid,Integer mount){
		int row = productMapper.updateProduct(pid,mount);
		return row;
	}
	
	public String querySrcById(Integer pid) {
		String src=productMapper.querySrcById(pid);
		System.out.println("src"+src);
		return src;
	}
	
	public String queryBanlanceById(Integer pid) {
		String balance=productMapper.queryBanlanceById(pid);
		return balance;
	}
}
