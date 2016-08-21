package com.shop.jwellery.service;

import java.util.List;

import com.shop.jwellery.beans.Address;

public interface AddressService {

	public void fillAddress(Address address, int cid);

	public List<Address> getAllAddress(int cid);

	public int deleteAddress(int aid);
	
	public Address findSingleAddress(int aid);
}
