<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Job Application</title>
</head>
<body>
	<%
		// Retrieve values from the session
	    HttpSession s = request.getSession();
		Statement statement = (Statement) s.getAttribute("statement");
	
		// Retrieve the value of "jobId" parameter from the request
		String query = null;
		String jobId = request.getParameter("jobId");
		System.out.println(jobId);
	
		query = "DELETE FROM jobApplication WHERE id=" + jobId;
		statement.executeUpdate(query);
		
		RequestDispatcher rd = request.getRequestDispatcher("hireTalent.jsp");
		rd.forward(request, response);
	%>
</body>
</html>