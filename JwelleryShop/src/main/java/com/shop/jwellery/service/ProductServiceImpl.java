package com.shop.jwellery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.shop.jwellery.beans.Product;
import com.shop.jwellery.dao.ProductDao;

public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDao productDao;

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	@Override
	public List<Product> findAllProduct() throws Exception {
		return productDao.findAllProduct();
	}

	@Override
	public Product findSingleProduct(int pid) throws Exception {
		return productDao.findSingleProduct(pid);
	}

}
