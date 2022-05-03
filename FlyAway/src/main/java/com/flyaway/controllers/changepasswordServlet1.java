package com.flyaway.controllers;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flyaway.dao.AdminDao;
import com.flyaway.dao.AdminDaoImpl;

import com.flyaway.dto.Admin;

public class changepasswordServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AdminDao dao = new AdminDaoImpl();
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
		int id=1;
		Admin  admin=new Admin(id, uname, password);
		dao.changePassword(admin);
		
			response.sendRedirect("passwordchangesuccess.html");  
		}
		
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
