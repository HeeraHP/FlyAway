package com.flyaway.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.flyaway.dto.Admin;

import com.flyway.util.HibernateUtil;

public class AdminDaoImpl implements AdminDao {
	
private SessionFactory factory;
	
	public AdminDaoImpl() {
		factory = HibernateUtil.getSessionFactory();
	}

	@Override
	public boolean validateAdmin(String uname, String password) {
		boolean isUserValid=false;
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		
		 Query query=session.createQuery("from admin where uname=:uname and password=:password");
		  query.setParameter("uname", uname);
	      query.setParameter("password", password);
	       Admin admin=(Admin)query.uniqueResult();
	       if(admin!=null) {
	    	   
	    	   isUserValid=true;
	       }

		return isUserValid;
	}

	@Override
	public void changePassword(Admin admin) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();	
		
		session.update(admin);	
		txn.commit();
		session.close();
		
	
	}

}
