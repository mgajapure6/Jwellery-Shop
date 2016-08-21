package com.shop.jwellery.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.shop.jwellery.beans.Product;

public class ProductDaoImpl implements ProductDao {

	@Autowired
	SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Product> findAllProduct() throws Exception {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Product> list = session.createQuery("From com.shop.jwellery.beans.Product").list();

		return list;
	}

	@Override
	public Product findSingleProduct(int pid) throws Exception {
		Session session = sessionFactory.openSession();
		Product product = (Product) session.get(Product.class, pid);
		return product;
	}

}
