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
	<%
		// Database connection
		Class.forName("com.mysql.jdbc.Driver");
		String username = "root";
		String password = "";
		String databaseName = "mydatabase";
		String tableName = "jobApplication";
		String URL = "jdbc:mysql://localhost:3308/" + databaseName;
		String query = null;
		
		String year = request.getParameter("search");
		if(year == null) {
			query = "SELECT * FROM jobApplication";
		}
		else {
			query = "SELECT * FROM jobApplication WHERE experience=" + year;
		}
		
		Connection connection = DriverManager.getConnection(URL, username, password);
		Statement statement = connection.createStatement();
		
		ResultSet rs = statement.executeQuery(query);
	%>

	<section>
		<div class="search-bar">
			<div class="search-links" style="display: flex; justify-content: center; align-items: center; flex-wrap: wrap;">
				<a href="index.jsp">Home</a>
				<a href="hireTalent.jsp">Refresh</a>
			</div>
			<form action="hireTalent.jsp">
                <input type="text" placeholder=">> enter only years of experience" name="search" id="search">
                <input type="submit" value="submit" id="btn">
            </form>
		</div>
		
		<!-- job cards -->
		<div class="jobList">
			<% 
				while(rs.next()) { 
			%>
					<div class="job-card">
					 	<div style="padding: 0px 13px;">
						  <h1><%= rs.getString(2)%></h1>
				          <p>description: <%= rs.getString(3)%></p>
				          
				          <h3>years of experience: <%= rs.getInt(4) %> year</h3>
				          <p>skills: <%= rs.getString(5) %></p>
					 	</div>
		        	</div>
		    <%
		    	} 
		    %>
		</div>
	</section>
</body>
</html>