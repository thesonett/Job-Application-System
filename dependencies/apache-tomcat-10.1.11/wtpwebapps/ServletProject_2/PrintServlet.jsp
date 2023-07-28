<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, java.time.LocalDate"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP page</title>
</head>
<body>
	<h1>
		<%! 
			String name = "";
			LocalDate localDate = LocalDate.now();
		%>
		
		<%
			name = (String) request.getParameter("name");
			out.println("Hi " + name + "<br>");
			out.println("Today's date: " + localDate);
		%>
		<br>
		<%= "So your name is: " + name%>
	</h1>
</body>
</html>