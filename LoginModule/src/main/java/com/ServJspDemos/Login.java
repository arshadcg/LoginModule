package com.ServJspDemos;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


import java.io.IOException;


/*@WebServlet("/Login")*/

public class Login extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		String uname = request.getParameter("uname");
		
		String pass = request.getParameter("pass");	
		
		if (uname.equals("arshadcg") && pass.equals("toor")) 
			{
					HttpSession session = request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("welcome.jsp");
			}
		else
			{
					response.sendRedirect("login.jsp");
			}
	}

}