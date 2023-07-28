<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Job Application System</title>
</head>
<body>
	<%
	    HttpSession s = request.getSession();
	    String username = (String) s.getAttribute("username"); //String username = "root";
	    String password = (String) s.getAttribute("password"); //String password = "";
	    String portNumber = (String) s.getAttribute("portNumber"); //String portNumber = "3308";
	    System.out.println(username + " " + password + " " + portNumber);
	    
		Class.forName("com.mysql.jdbc.Driver");
		
		String databaseName = "mydatabase";
		String tableName = "jobApplication";
		String URL = "jdbc:mysql://localhost:" + portNumber + "/";
				
		Connection connection = DriverManager.getConnection(URL, username, password);
		Statement statement = connection.createStatement();
	    s.setAttribute("statement", statement); // Store the statement in the session for later use
	    
	 	// Create the database if it doesn't exist
        String createDatabaseQuery = "CREATE DATABASE IF NOT EXISTS " + databaseName;
        statement.executeUpdate(createDatabaseQuery);

        // Switch to the newly created or existing database
        statement.executeUpdate("USE " + databaseName);

        // Create the table if it doesn't exist
        String createTableQuery = "CREATE TABLE IF NOT EXISTS " + tableName + " (" +
                "id INT PRIMARY KEY AUTO_INCREMENT," +
                "role VARCHAR(255)," +
                "description VARCHAR(310)," +
                "experience INT," +
                "skills VARCHAR(255)" +
        ")";
        statement.executeUpdate(createTableQuery);
		
		// it will run only once
		if(username != null && password != null) {
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
	%>
</body>
</html>