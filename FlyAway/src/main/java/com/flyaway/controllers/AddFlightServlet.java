package com.flyaway.controllers;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flyaway.dao.FlightDao;
import com.flyaway.dao.FlightDaoImpl;
import com.flyaway.dto.Flight;


public class AddFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String flightno = request.getParameter("flightno");
		String flightname = request.getParameter("flightname");
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		String date=request.getParameter("date");
		String time=request.getParameter("time");
		String duration=request.getParameter("duration");
		String airlines = request.getParameter("airlines");
		String price=request.getParameter("price");
		String seat=request.getParameter("seat");
		
		
		Flight flight=new Flight(flightno, flightname, source, destination, date, time, duration, airlines, price, seat);
		
		FlightDao dao = new FlightDaoImpl();
		Integer flightid = dao.addFlight(flight);
		if(flightid > 0) {
			
			request.setAttribute("msg", "y"); 
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("updateflight.jsp");
			requestDispatcher.forward(request, response);
		
		} else {
			
			request.setAttribute("msg", "N"); 
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("updateflight.jsp");
			requestDispatcher.forward(request, response);  
		}
		
	
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
