package com.shop.jwellery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.shop.jwellery.beans.Address;
import com.shop.jwellery.dao.AddressDao;

public class AddressServiceImpl implements AddressService {

	@Autowired
	private AddressDao addressDao;

	public void setAddressDao(AddressDao addressDao) {
		this.addressDao = addressDao;
	}

	@Override
	public void fillAddress(Address address, int cid) {

		addressDao.fillAddress(address, cid);
	}

	@Override
	public List<Address> getAllAddress(int cid) {

		return addressDao.getAllAddress(cid);
	}

	@Override
	public int deleteAddress(int aid) {
		return addressDao.deleteAddress(aid);

	}

	@Override
	public Address findSingleAddress(int aid) {
		
		return addressDao.findSingleAddress(aid);
	}

}
