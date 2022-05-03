package com.flyaway.controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flyaway.dao.FlightDao;
import com.flyaway.dao.FlightDaoImpl;
import com.flyaway.dto.Flight;


public class MainFlightSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
	
		
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		String date=request.getParameter("deparure");
		session.setAttribute("Currentsource", source);
		session.setAttribute("Currentdestination", destination);
		

		
	
		FlightDao dao = new FlightDaoImpl();
		ArrayList<Flight> bookFlightList = new FlightDaoImpl().mainSearchFlight(source, destination, date);
		
		
		if(bookFlightList.size() > 0) {
			//session.setAttribute("bookFlightList", bookFlightList);
			
			
			request.setAttribute("servletName", bookFlightList); 
			
			getServletConfig().getServletContext().getRequestDispatcher("/bookflight.jsp").forward(request,response);
			
			//RequestDispatcher requestDispatcher = request.getRequestDispatcher("bookflight.jsp");
			//requestDispatcher.forward(request, response);
			
		} else {
		
			request.setAttribute("msg", "N"); 
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("flightSearch.jsp");
			requestDispatcher.forward(request, response); 
			
		}
	
		
		
		
		
	
	
	}
	
		
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
