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


public class DeleteFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id=request.getParameter("flightid").toString();
		int  deleteflightid=Integer.parseInt(id);
		
		
		//HttpSession session = request.getSession();
		//int deleteflightid=(int) session.getAttribute("deleteflightid");
		
		
		FlightDao dao = new FlightDaoImpl();
		 dao.deleteFlight(deleteflightid);
		 
		 request.setAttribute("msg", "D"); 
		
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("updateflight.jsp");
				requestDispatcher.forward(request, response);
		
		}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doGet(request, response);
	}

}
