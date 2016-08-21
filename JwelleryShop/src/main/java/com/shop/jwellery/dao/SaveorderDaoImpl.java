package com.shop.jwellery.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.shop.jwellery.beans.OrderData;


public class SaveorderDaoImpl implements SaveorderDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void saveOrder(OrderData orderData) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		if (orderData!= null) {
			try {
		
				session.save(orderData);
				transaction.commit();
			} catch (Exception e) {
				transaction.rollback();
				session.close();
			}
		}
	}

	


}
