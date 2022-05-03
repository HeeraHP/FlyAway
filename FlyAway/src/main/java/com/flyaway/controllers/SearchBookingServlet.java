package com.flyaway.controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flyaway.dao.BookingDao;
import com.flyaway.dao.BookingDaoImpl;
import com.flyaway.dao.FlightDaoImpl;
import com.flyaway.dto.Booking;
import com.flyaway.dto.Flight;


public class SearchBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String email=(String) session.getAttribute("email");
		String flightno=request.getParameter("flightno");
		System.out.println(flightno);
		
		BookingDao dao=new BookingDaoImpl();
		ArrayList<Booking> booking = new BookingDaoImpl().findBooking(email);
		
		if(booking.size()>0) {

			request.setAttribute("booking", booking);
			request.setAttribute("msg", "y"); 
			
			getServletConfig().getServletContext().getRequestDispatcher("/displaybooking.jsp").forward(request,response);
			
			
		} else {
		
			request.setAttribute("msg", "N"); 
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("displaybooking.jsp");
			requestDispatcher.forward(request, response); 
			
		}
	
		
		
		
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
