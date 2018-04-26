package com.oracle.ebp_16.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.oracle.ebp_16.domain.Product;

public interface ProductMapper {
	/*
	 * 管理员查询商品
	 */
	public List<Product> selectAll();
	
	public void addProduct(Product product);
	
	public Product selectById(String pid);
	
	public int changestatus(String pid,String status);

	public List<Product> selectByDescs(String descs);

	public int adminUpdateProduct(String pid, String descs, String amount,
			String balance, String price);
	
	List<Product> getProduct(@Param("start")int start,@Param("length")int length);
	
	int getCount();

	public List<Product> getByDescs(@Param("start")int start,@Param("length")int length, String descs);
	
	/*
	 * 用户查询商品
	 */
	public List<Product> listALLProducts();

	public List<Product> queryProducts(String descs, Double min, Double max);

	public Product queryProductById(Integer pid);

	public int updateProduct(Integer pid,Integer mount);
	
	public String querySrcById(Integer pid);
	
	public String queryBanlanceById(Integer pid);
}
