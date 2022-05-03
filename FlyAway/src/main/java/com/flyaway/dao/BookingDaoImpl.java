package com.flyaway.dao;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.flyaway.dto.Booking;
import com.flyaway.dto.Flight;
import com.flyway.util.HibernateUtil;

public class BookingDaoImpl implements BookingDao{
	
private SessionFactory factory;
	
	public BookingDaoImpl() {
		factory = HibernateUtil.getSessionFactory();
	}

	@Override
	public Integer addBooking(Booking booking) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		
		Integer bookingid = (Integer) session.save(booking);
		
		txn.commit();
		session.close();
		
		return bookingid;
		
	}

	@Override
	public ArrayList<Booking> findBooking(String email) {
		ArrayList<Booking> booking = null;
		Session session = factory.openSession();
		
			String hql = "from booking where email=:email";
			Query query= session.createQuery(hql);
	        query.setParameter("email", email);
	        booking = (ArrayList<Booking>) query.list();

		session.close();
		return  booking;
	}


}
