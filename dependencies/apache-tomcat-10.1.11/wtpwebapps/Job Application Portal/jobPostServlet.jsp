<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Job Application System</title>
	<link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
</head>
<body>
	<%
		// Retrieve values from the session
	    HttpSession s = request.getSession();
		Statement statement = (Statement) s.getAttribute("statement");
	
		// fetch data from jsp form
		String role = request.getParameter("role");
		String description = request.getParameter("description");
		String experience = request.getParameter("experience");
		String skills = request.getParameter("skills");
		String query = null;
		
		query = "INSERT INTO jobApplication (role, description, experience, skills) VALUES ('" + role + "','" + description + "'," + experience + ",'" + skills + "')";    
		
		statement.executeUpdate(query);
	%>
	
	<div class="toast">
        <div class="toast-content">
            <i class="fas fa-solid fa-check check"></i>
            <div class="message">
                <span class="text text-1">Success</span>
                <span class="text text-2">You posted a job application</span>
            </div>
        </div>
        <div class="progress"></div>
    </div>
    
    <a href="hireTalent.jsp"><button class="success-home">Go back to hire talent page! :D</button></a>
</body>
</html>