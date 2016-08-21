package com.shop.jwellery.service;

import com.shop.jwellery.beans.Customer;

public interface LoginService {

	public Customer login(Customer login);

	public int getCustomerId(String email);
}
