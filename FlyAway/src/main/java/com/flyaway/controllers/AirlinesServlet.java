package com.flyaway.controllers;

import java.io.IOException;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flyaway.dao.FlightDaoImpl;
import com.flyaway.dto.Flight;


public class AirlinesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Set<Flight> dataAirlines = new FlightDaoImpl().getAllFlights();
		String selection=request.getParameter("selection").toString();
		HttpSession session = request.getSession();
		
		if(dataAirlines.size() > 0) {
			session.setAttribute("dataAirlines", dataAirlines);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("getallairlines.jsp");
			requestDispatcher.forward(request, response);
			
		} else {
			response.sendRedirect("noflightdata.html");
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
