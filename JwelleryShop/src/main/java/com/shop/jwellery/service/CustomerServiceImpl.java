package com.shop.jwellery.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.shop.jwellery.beans.Customer;
import com.shop.jwellery.dao.CustomerDao;

public class CustomerServiceImpl implements CustomerService {

	@Autowired
	CustomerDao customerDao;
	
	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}

	@Override
	public Customer getCustomer(int cid) {
		
		return customerDao.getCustomer(cid);
	}

}
