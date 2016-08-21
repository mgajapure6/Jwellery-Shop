package com.shop.jwellery.dao;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.shop.jwellery.beans.Customer;

public class LoginDaoImpl implements LoginDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Customer login(Customer login) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String hql = "from com.shop.jwellery.beans.Customer as c where c.email =? and c.password =?";
		try {
			Query query = session.createQuery(hql);
			query.setParameter(0, login.getEmail());
			query.setParameter(1, login.getPassword());
			login = (Customer) query.uniqueResult();
			transaction.commit();
			session.close();
		} catch (HibernateException e) {
			transaction.rollback();
			session.close();
		}
		return login;
	}

	@Override
	public int getCustomerId(String email) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String hql = "Select c.cid from com.shop.jwellery.beans.Customer as c where c.email =?";
		int cid = 0;
		try {
			Query query = session.createQuery(hql);
			query.setParameter(0, email);
			cid = (int) query.uniqueResult();
			transaction.commit();
			session.close();
		} catch (HibernateException e) {
			transaction.rollback();
			session.close();
		}
		return cid;

	}

}
