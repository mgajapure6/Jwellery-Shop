package com.shop.jwellery.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.shop.jwellery.beans.OrderData;
import com.shop.jwellery.dao.SaveorderDao;

public class SaveorderServiceImpl implements SaveorderService {

	@Autowired
	private SaveorderDao saveorderDao;
	
	public void setSaveorderDao(SaveorderDao saveorderDao) {
		this.saveorderDao = saveorderDao;
	}

	@Override
	public void saveOrder(OrderData orderData) {
		
		saveorderDao.saveOrder(orderData);
	}

	
}
