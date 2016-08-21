package com.shop.jwellery.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.shop.jwellery.beans.Customer;
import com.shop.jwellery.dao.LoginDao;

public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDao loginDao;

	public void setLoginDao(LoginDao loginDao) {
		this.loginDao = loginDao;
	}

	@Override
	public Customer login(Customer login) {

		return loginDao.login(login);
	}

	@Override
	public int getCustomerId(String email) {

		return loginDao.getCustomerId(email);
	}

}
