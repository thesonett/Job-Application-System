<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Job Application System</title>
</head>
<body>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		String username = "root";
		String password = "";
		String portNumber = "3308";
		
		String databaseName = "mydatabase";
		String tableName = "jobApplication";
		String URL = "jdbc:mysql://localhost:" + portNumber + "/" + databaseName;
		String query = null;
	
		// fetching data from login servlet				
		Connection connection = DriverManager.getConnection(URL, username, password);
		Statement statement = connection.createStatement();
	%>
</body>
</html>