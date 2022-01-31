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
		
		
		<h2 color="blue">Please check photo below of ${ username} ---> </h2>
		<br>
		<br><img src="https://i.ibb.co/pLDvyHx/PHOTO.jpg" alt="PHOTO" border="10" height= "100" width= "100">
		
		<br>
		<br>

  <a href="welcome.jsp">To Home page please go here</a>
		<br>
		<br>




<form action="Logout">
		
			<input type="Submit" value="Logout">
			
		</form>


</body>
</html>