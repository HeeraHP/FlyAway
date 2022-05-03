package com.flyaway.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flyaway.dao.AdminDao;
import com.flyaway.dao.AdminDaoImpl;



public class ValidateAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			HttpSession session = request.getSession();
			
			String uname=request.getParameter("uname");
			String password=request.getParameter("password");
			System.out.println(uname+password);
			AdminDao dao=new AdminDaoImpl();
			
			session.setAttribute("uname", uname);
			response.sendRedirect("adminhome.jsp");
			
			
			/*boolean  isAdminValid=dao.validateAdmin(uname,password);
			if(isAdminValid) {
					
				 	session.setAttribute("uname", uname);
				 	response.sendRedirect("adminhome.jsp");
			}else {
					
					response.sendRedirect("login.html");
				}
				
				
			*/
			
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
