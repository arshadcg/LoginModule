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

<h1> Hi there this is ${uname} and for information about me please visit link here below </h1>
<br>

<b> https://www.facebook.com/shaik.arshad.566 </b>

<br>
<br>

 --> <a href="welcome.jsp">To Home page please go here</a>




<form action="Logout">
		
			<input type="Submit" value="Logout">
			
		</form>


</body>
</html>