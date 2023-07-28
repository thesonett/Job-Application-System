<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Index Page</title>
	<link href="style.css" rel="stylesheet">
</head>
<body>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		
		String username = "root";
		String password = "";
		String databaseName = "mydatabase";
		String url = "jdbc:mysql://localhost:3308/" + databaseName;
		
		Connection connection = DriverManager.getConnection(url, username, password);
		Statement statement = connection.createStatement();
		
		String query = "SELECT * FROM students";
		
		ResultSet rs = statement.executeQuery(query);
	%>
	
	<% while(rs.next()) { %>
		<section>
			<div>
				Student ID: <%= rs.getString(1) %><br>
				First Name: <%= rs.getString(2) %><br>
				Last Name: <%= rs.getString(3) %><br>
				Roll No: <%= rs.getString(4) %><br>
			</div>
		</section>
	<% } %>
</body>
</html>