package com.shop.jwellery.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.shop.jwellery.beans.Customer;
import com.shop.jwellery.dao.SignupDao;

public class SignupServiceImpl implements SignupService {

	@Autowired
	private SignupDao signupDao;

	public void setSignupDao(SignupDao signupDao) {
		this.signupDao = signupDao;
	}

	@Override
	public void createCustomer(Customer customer) {
		signupDao.createCustomer(customer);
	}

}
