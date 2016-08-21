package com.shop.jwellery.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.shop.jwellery.beans.Customer;

public class SignupDaoImpl implements SignupDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void createCustomer(Customer customer) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		if (customer != null) {
			try {
				session.save(customer);
				transaction.commit();
			} catch (Exception e) {
				transaction.rollback();
				session.close();
			}
		}
		session.close();
	}

}
