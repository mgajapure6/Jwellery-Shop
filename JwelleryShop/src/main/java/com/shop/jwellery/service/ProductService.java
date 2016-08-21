package com.shop.jwellery.service;

import java.util.List;

import com.shop.jwellery.beans.Product;

public interface ProductService {

	public List<Product> findAllProduct() throws Exception;

	public Product findSingleProduct(int pid) throws Exception;
}
