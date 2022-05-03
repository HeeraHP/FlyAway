package com.flyaway.dao;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.flyaway.dto.Admin;
import com.flyaway.dto.Flight;
import com.flyaway.dto.Route;
import com.flyway.util.HibernateUtil;



public class FlightDaoImpl implements FlightDao {
	
	private SessionFactory factory;
	
	
	public FlightDaoImpl() {
		factory = HibernateUtil.getSessionFactory();
	}


	@Override
	public Integer addFlight(Flight flight) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		
		Integer flightid = (Integer) session.save(flight);
		
		txn.commit();
		session.close();
		
		return flightid;
	}


	@Override
	public Set<Flight> getAllFlights() {
		Set<Flight> allFlights = null;
		// select * from Flight;
		String hql = "from flight";
		
		Session session = factory.openSession();
		TypedQuery<Flight> typedQuery = session.createQuery(hql);
		allFlights =  new HashSet<Flight>(typedQuery.getResultList());
		
		session.close();
		return allFlights;
	}


	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<Flight> getFlight(int editflightid) {
		ArrayList<Flight> editFlight = null;
		Session session = factory.openSession();
		
			String hql = "from flight where flightId=:no";
			Query query= session.createQuery(hql);
	        query.setParameter("no", editflightid);
	        editFlight = (ArrayList<Flight>) query.list();
	       
		
		session.close();
		return  editFlight;
		
	}


	@Override
	public void updateFlight(Flight flight) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		session.update(flight);	
		txn.commit();
		session.close();
		
	}


	@Override
	public void deleteFlight(int flightid) {
		
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		
		Flight flight = session.get(Flight.class, flightid);
		session.delete(flight);
		
		txn.commit();
		session.close();
		
	}


	@Override
	public Integer addRoute(Route route) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		
		Integer routeid = (Integer) session.save(route);
		
		txn.commit();
		session.close();
		
		return routeid;

}


	@Override
	public Set<Route> getAllRoutes() {
		Set<Route> allRoute = null;
		// select * from Flight;
		String hql = "from route";
		
		Session session = factory.openSession();
		TypedQuery<Route> typedQuery = session.createQuery(hql);
		allRoute =  new HashSet<Route>(typedQuery.getResultList());
		
		session.close();
		return allRoute;
		
	}


	@Override
	public ArrayList<Route> getRoute(int editrouteid) {
		
		ArrayList<Route> editRoute = null;
		Session session = factory.openSession();
		
			String hql = "from route where routeid=:no";
			Query query= session.createQuery(hql);
	        query.setParameter("no", editrouteid);
	        editRoute = (ArrayList<Route>) query.list();
	       
		
		session.close();
		return  editRoute;
	}


	@Override
	public void updateRoute(Route route) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		session.update(route);	
		txn.commit();
		session.close();
		
	}


	@Override
	public void deleteRoute(int editrouteid) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		
		Route route = session.get(Route.class, editrouteid);
		session.delete(route);
		
		txn.commit();
		session.close();
		
	}


	@Override
	public ArrayList<Flight> mainSearchFlight(String source, String destination, String date) {
		ArrayList<Flight> bookFlightList = null;
		Session session = factory.openSession();
		
			String hql = "from flight where source=:source and destination=:destination and date=:date";
	
			Query query= session.createQuery(hql);
	        query.setParameter("source", source);
	       query.setParameter("destination", destination);
	        query.setParameter("date", date);
	        bookFlightList = (ArrayList<Flight>) query.list();
	       
		
		session.close();
		return  bookFlightList;
		
		
		
	}


	@Override
	public ArrayList<Flight> bookingFlightList(String flightno) {
		
		ArrayList<Flight> bookingFlightList = null;
		Session session = factory.openSession();
		
			String hql = "from flight where flightno=:flightno";
		
		
			Query query= session.createQuery(hql);
	        query.setParameter("flightno", flightno);
	       
	        bookingFlightList = (ArrayList<Flight>) query.list();
	       
		
		session.close();
		return  bookingFlightList;
	}
}
