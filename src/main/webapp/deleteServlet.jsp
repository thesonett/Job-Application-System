<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="database.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String jobID = request.getParameter("jobID");
	
		query = "DELETE FROM jobApplication WHERE id=" + jobID;
		statement.executeUpdate(query);
		
		RequestDispatcher rd = request.getRequestDispatcher("hireTalent.jsp");
		rd.forward(request, response);
	%>
</body>
</html>