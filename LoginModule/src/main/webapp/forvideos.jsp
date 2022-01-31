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
		
		Welcome Again ${ username}
		
		
		<h2 color="blue">For Java Videos please find videos in the Youtube channel in the link here---> </h2> https://www.youtube.com/c/Telusko
		<br>
		<br>
		
		<h2 color ="green"> If you are looking further for another pro content in java then he is here---></h2> https://www.youtube.com/c/JavaBrainsChannel
		
		
		<br>
		
		Thanks
		<br>
		<br>	
		
		 <a href="welcome.jsp">To Home page please go here </a>
		
		<br>
		<br>




<form action="Logout">
		
			<input type="Submit" value="Logout">
			
		</form>





</body>
</html>