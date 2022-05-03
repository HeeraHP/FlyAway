package com.flyaway.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flyaway.dao.FlightDao;
import com.flyaway.dao.FlightDaoImpl;


public class DeleteRouteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("routeid").toString();
		int  editrouteid=Integer.parseInt(id);
		
		FlightDao dao = new FlightDaoImpl();
		 dao.deleteRoute(editrouteid);
		
		
		request.setAttribute("msg", "D"); 
	//	response.sendRedirect("routes.jsp");
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("routes.jsp");
		requestDispatcher.forward(request, response);
	
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
