package com.shop.jwellery.dao;

import com.shop.jwellery.beans.Customer;

public interface LoginDao {

	public Customer login(Customer login);

	public int getCustomerId(String email);
}
