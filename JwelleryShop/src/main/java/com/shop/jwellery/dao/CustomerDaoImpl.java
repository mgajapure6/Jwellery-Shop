package com.shop.jwellery.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.shop.jwellery.beans.Customer;

public class CustomerDaoImpl implements CustomerDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Customer getCustomer(int cid) {
		Session session = sessionFactory.openSession();
		Customer customer = (Customer) session.get(Customer.class, cid);
		return customer;
	}

}
