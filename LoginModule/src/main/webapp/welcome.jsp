<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // for Http 1.1 and above
		
		response.setHeader("Prasma", "no-cache");
				
		response.setHeader("Expires","0");
			
		
		
			if(session.getAttribute("username")==null)
			{
				response.sendRedirect("login.jsp");
			}
		
		%>
		
		Welcome <h1> ${username} </h1>
		
		<a href="information.jsp">Click here for information</a>
		<br>
		<a href="forvideos.jsp">Click here for Videos</a>
		<br>
		<a href="forphotos.jsp">Click here for Photos</a>
		<br>
		
		<% 
		%>
		
		<br>
		
		<form action="Logout">
		
			<input type="Submit" value="Logout">
			
		</form>




</body>
</html>