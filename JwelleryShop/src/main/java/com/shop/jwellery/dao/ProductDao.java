package com.shop.jwellery.dao;

import java.util.List;

import com.shop.jwellery.beans.Product;

public interface ProductDao {

	public List<Product> findAllProduct() throws Exception;

	public Product findSingleProduct(int pid) throws Exception;
}
