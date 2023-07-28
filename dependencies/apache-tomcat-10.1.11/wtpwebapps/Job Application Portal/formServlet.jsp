<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="jakarta.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Job Application System</title>
</head>
<body>
	<%
		 // Get the values from the form fields
	    String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    String portNumber = request.getParameter("portNumber");
	
	    // Store the values in the session
	    HttpSession s = request.getSession();
	    s.setAttribute("username", username);
	    s.setAttribute("password", password);
	    s.setAttribute("portNumber", portNumber);
	
	    // Redirect to the database.jsp servlet
	    response.sendRedirect("database.jsp");
	%>
</body>
</html>