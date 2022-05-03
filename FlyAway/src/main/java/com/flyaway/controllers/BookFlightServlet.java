package com.flyaway.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flyaway.dao.BookingDao;
import com.flyaway.dao.BookingDaoImpl;
import com.flyaway.dto.Booking;


public class BookFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String flightno = request.getParameter("flightno");
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		String airlines = request.getParameter("airlines");
		double price = Double.parseDouble(request.getParameter("price"));
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		int age = Integer. parseInt(request.getParameter("age")) ;
		String address = request.getParameter("address");
		String ph =request.getParameter("ph");
		String verificationid = request.getParameter("verificationid");
		String returndate = request.getParameter("returndate");
		int adults =Integer. parseInt( request.getParameter("adults"));
		int child = Integer. parseInt(request.getParameter("child"));
		String typeclass = request.getParameter("typeclass");
		String trip = request.getParameter("trip");
		
		double totalamount=((price*adults)+(25%(price*child)));
		
		Booking booking=new Booking(flightno, source, destination, airlines, totalamount, fname, lname, email, age, address, ph, verificationid, verificationid, returndate, adults, child, typeclass, trip);
				
		BookingDao dao = new BookingDaoImpl();
		Integer bookingid = dao.addBooking(booking);
		if(bookingid > 0) {
			session.setAttribute("fname", fname);
			session.setAttribute("email", email);
			request.setAttribute("msg", "y"); 
			request.setAttribute("flightno", flightno);
			request.setAttribute("totalamount", totalamount);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("makepayment.jsp");
			requestDispatcher.forward(request, response);
		
		} else {
			request.setAttribute("msg", "bookunable"); 
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("flightSearch.jsp");
			requestDispatcher.forward(request, response);
		 
		}

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
