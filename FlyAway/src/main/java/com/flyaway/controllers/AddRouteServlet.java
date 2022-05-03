package com.flyaway.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flyaway.dao.FlightDao;
import com.flyaway.dao.FlightDaoImpl;

import com.flyaway.dto.Route;

public class AddRouteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		
		Route route=new Route(source, destination);
		FlightDao dao = new FlightDaoImpl();
		Integer routeid = dao.addRoute(route);
		if(routeid > 0) {
			
				request.setAttribute("msg", "y"); 
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("routes.jsp");
				requestDispatcher.forward(request, response);
			 
		} else {
			request.setAttribute("msg", "N"); 
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("routes.jsp");
			requestDispatcher.forward(request, response);    
		}}catch (Exception e) {
			request.setAttribute("msg", "N"); 
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("routes.jsp");
			requestDispatcher.forward(request, response);    
		}
		
		}
		
		
		
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
