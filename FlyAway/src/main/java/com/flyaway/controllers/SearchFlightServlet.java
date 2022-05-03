package com.flyaway.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.flyaway.dao.FlightDaoImpl;
import com.flyaway.dto.Flight;


public class SearchFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//String editflightno=(String) session.getAttribute("editflightno");
		
		String id=request.getParameter("flightid").toString();
		int  editflightid=Integer.parseInt(id);
		
		
		

		
		ArrayList<Flight> editFlight = new FlightDaoImpl().getFlight(editflightid);
		
		
		if(editFlight.size() > 0) {
			session.setAttribute("editFlight", editFlight);
			
		} else {
			session.setAttribute("msg", "No flight data found");
		}
		
		response.sendRedirect("editflight.jsp");
	
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
