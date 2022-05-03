package com.flyaway.controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flyaway.dao.FlightDaoImpl;
import com.flyaway.dto.Route;


public class SearchRouteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			//HttpSession session = request.getSession();
			String id=request.getParameter("routeid").toString();
			int  editrouteid=Integer.parseInt(id);

			
			System.out.println(editrouteid);
			ArrayList<Route> editroute = new FlightDaoImpl().getRoute(editrouteid);
		
		if(editroute.size() > 0) {
			
			request.setAttribute("editroute", editroute); 
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("editroute.jsp");
			requestDispatcher.forward(request, response);
			
		} else {
			request.setAttribute("msg", "N"); 
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("showAllRoutes.jsp");
			requestDispatcher.forward(request, response);
			
		}

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
