package com.flyaway.controllers;

import java.io.IOException;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.internal.build.AllowSysOut;

import com.flyaway.dao.FlightDaoImpl;
import com.flyaway.dto.Flight;
import com.flyaway.dto.Route;

public class GetallRoutesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			HttpSession session = request.getSession();
			
			String selection=request.getParameter("selection").toString();
		    Set<Route> allRoutes = new FlightDaoImpl().getAllRoutes();
		    
		    if(allRoutes.size() > 0) {
		    	if(selection.equals("route")) {
					session.setAttribute("allroute", allRoutes);
					
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("showAllRoutes.jsp");
					requestDispatcher.forward(request, response);
				}
				else if(selection.equals("add")) {
					session.setAttribute("allrouteforaddflight", allRoutes);	
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("addflight.jsp");
					requestDispatcher.forward(request, response);	
				
				}

			} else {
				response.sendRedirect("noflightdata.html");
			}
	
	}
		    
		    
	 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
