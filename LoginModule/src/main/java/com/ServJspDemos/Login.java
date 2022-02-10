package com.ServJspDemos;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


import java.io.IOException;

import com.Login.Dao.LoginDao;


/*@WebServlet("/Login")*/

public class Login extends HttpServlet {
	
	/** JDBC steps
	 * 1. import the package
	 * 2. load and register the driver
	 * 3. create the connection
	 * 4. create the statement
	 * 5. executing the query
	 * 6. Processing the results
	 * 7. close the statement & connection
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		String uname = request.getParameter("uname");
		
		String pass = request.getParameter("pass");	
		
		LoginDao dao = new LoginDao();
			
		if (dao.check(uname, pass)) 
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

