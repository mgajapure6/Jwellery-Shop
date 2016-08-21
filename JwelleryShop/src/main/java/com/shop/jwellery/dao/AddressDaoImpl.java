package com.shop.jwellery.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.shop.jwellery.beans.Address;

public class AddressDaoImpl implements AddressDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void fillAddress(Address address, int cid) {

		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		if (address != null) {
			try {
				address.setCid(cid);
				session.save(address);
				transaction.commit();
			} catch (Exception e) {
				transaction.rollback();
				session.close();
			}
		}
		session.close();
	}

	@Override
	public List<Address> getAllAddress(int cid) {
		Session session = sessionFactory.openSession();
		String hql = "From com.shop.jwellery.beans.Address where cid = ?";
		Query query = session.createQuery(hql);
		query.setParameter(0, cid);
		@SuppressWarnings("unchecked")
		List<Address> list = query.list();
		return list;
	}

	@Override
	public int deleteAddress(int aid) {
		Session session = sessionFactory.openSession();
		String hql = "Delete from com.shop.jwellery.beans.Address where aid = ?";
		Query query = session.createQuery(hql);
		query.setParameter(0, aid);
		int result = query.executeUpdate();
		return result;
	}

	@Override
	public Address findSingleAddress(int aid) {
		Session session = sessionFactory.openSession();
		Address address = (Address) session.get(Address.class, aid);
		return address;
	}

}
