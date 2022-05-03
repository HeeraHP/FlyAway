package com.flyaway.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.flyaway.dto.Flight;
import com.flyaway.dto.Route;



public interface FlightDao {

	
	public Integer addFlight(Flight flight);
	public Set<Flight> getAllFlights();
	public ArrayList<Flight> getFlight(int editflightid);
	
	
	public void updateFlight(Flight flight);
	public void deleteFlight(int flightid);
	public Integer addRoute(Route route);
	public Set<Route> getAllRoutes();
	public ArrayList<Route> getRoute(int editrouteid );
	public void updateRoute(Route route);
	public void deleteRoute(int editrouteid);
	
	public ArrayList<Flight> mainSearchFlight(String source,String destination,String date);
	public ArrayList<Flight> bookingFlightList(String flightno);
	
}
