<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Job Application System</title>
    <link rel="stylesheet" href="hireTalent.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
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
        <label class="logo"><a href="home.jsp" style="color: white">Job App</a></label>
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="hireTalent.jsp">Refresh</a></li>
        </ul>
    </nav>

    <!-- search bar  -->
    <div class="input-box">
        <i class="uil uil-search"></i>
         <form action="hireTalent.jsp">
        	<input type="text" placeholder="search by years of experience..." name="search" style="margin: 25px;"/>
            <button type="submit" class="button">Search</button>
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
                
                <!-- delete option -->
                <form action="deleteServlet.jsp" method="post" class="delete-form" style="
                	    display: flex;
					    justify-content: center;
					    align-items: center;
					    margin: 32px 0;">
				    <input type="hidden" name="jobId" value="<%= rs.getInt(1) %>"/>
				    <input type="submit" value="delete" class="delete-btn" style="
				    	cursor: pointer;
					    font-size: 1.3rem;
					    padding: 11px 20px;
					    border: none;
					    outline: none;
					    background-color: black;
					    color: wheat;
					    font-weight: 800;
					    text-transform: uppercase;">
				</form>
            </div>
        	<% } %>
        </div>
    </section>
</body>
</html>