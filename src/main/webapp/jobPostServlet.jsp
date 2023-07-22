<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Job Application Portal</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<h1 class="success" style="
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    margin-top: 35vh;
	    color: green;
	    font-size: 2.8rem;
	">Yehh! Job Post Successful! :D</h1>
	<div style="
		display: flex;
	    justify-content: center;
	    align-items: center;
	    margin-top: 3vh;
	    flex-wrap: wrap;
	">
		<a href="index.jsp" style="
	    	border: 2px solid lightblue;
	    	padding: 8px 25px;
	    	text-transform: uppercase;
	    	font-size: 20px;
	    	margin: 20px;
		">Home</a>
		<a href="hireTalent.jsp" style="
	    	border: 2px solid lightblue;
	    	padding: 8px 25px;
	    	text-transform: uppercase;
	    	font-size: 20px;
	    	margin: 20px;
	    ">Hire Talent</a>
	</div>
	<%
		// insertion database code
		Class.forName("com.mysql.jdbc.Driver");
		String username = "root";
		String password = "";
		String databaseName = "mydatabase";
		String tableName = "jobApplication";
		String URL = "jdbc:mysql://localhost:3308/" + databaseName;
		String query = null;
		
		Connection connection = DriverManager.getConnection(URL, username, password);
		Statement statement = connection.createStatement();
		
		// fetch data from jsp form
		String role = request.getParameter("role");
		String description = request.getParameter("description");
		String experience = request.getParameter("experience");
		String skills = request.getParameter("skills");
		
		query = "INSERT INTO jobApplication (role, description, experience, skills) VALUES ('" + role + "','" + description + "'," + experience + ",'" + skills + "')";    
		
		statement.executeUpdate(query);

	%>
</body>
</html>