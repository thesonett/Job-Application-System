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
		String URL = "jdbc:mysql://localhost:" + portNumber + "/" + databaseName;
	
		// fetching data from login servlet				
		Connection connection = DriverManager.getConnection(URL, username, password);
		Statement statement = connection.createStatement();
	    s.setAttribute("statement", statement); // statement is required for hireTalent page.
		
		// will run only once
		if(username != null && password != null) {
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
	%>
</body>
</html>