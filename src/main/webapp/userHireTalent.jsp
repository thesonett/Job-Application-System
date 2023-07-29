<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Job Application System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
    
    <!-- JSP way to import stylesheet -->
    <style>
     	<%@ include file="hireTalent.css"%>
	</style>
	
</head>
<body>
	<%
		// Retrieve values from the session
	    HttpSession s = request.getSession();
		Statement statement = (Statement) s.getAttribute("statement");
	    
		String query = null;
		String year = request.getParameter("search");
	
		if(year == null) {
			query = "SELECT * FROM jobApplication";
		}
		else {
			query = "SELECT * FROM jobApplication WHERE experience=" + year;
		}
		
		ResultSet rs = statement.executeQuery(query);
	%>
	
	 <!-- navigation bar -->
    <nav>
        <input type="checkbox" id="check">
        <label for="check" class="checkbtn">
            <i class="fas fa-bars"></i>
        </label>
        <label class="logo"><a href="userHome.jsp" style="color: white">Job App</a></label>
        <ul>
            <li><a href="userHome.jsp">Home</a></li>
            <li><a href="userHireTalent.jsp">Refresh</a></li>
        </ul>
    </nav>

    <!-- search bar  -->
    <div class="input-box">
        <i class="uil uil-search"></i>
         <form action="userHireTalent.jsp">
        	<input type="text" placeholder="search by years of experience..." name="search" style="margin: 25px;"/>
            <button type="submit" class="button">Find Jobs</button>
        </form>
    </div>

    <!-- job cards -->
    <section>
        <div class="cards">
        	<% while(rs.next()) { %>
            <div class="card">
                <div class="container">
                    <img src="1.jpg" alt="job picture">
                </div>
                <div class="details">
                    <h2 style="text-align: center;"><%= rs.getString(2)%></h2>
	                <p>description: <%= rs.getString(3)%></p>
	                <h3>years of experience: <%= rs.getInt(4) %> year</h3>
	                <p>skills: <%= rs.getString(5) %></p>
	                <h3 style="text-align: center;">Job ID: <%= rs.getInt(1) %></h3>
                </div>
            </div>
        	<% } %>
        </div>
    </section>
</body>
</html>