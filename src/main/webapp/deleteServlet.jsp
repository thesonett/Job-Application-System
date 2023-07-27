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
		// Retrieve the value of "jobId" parameter from the request
		String jobId = request.getParameter("jobId");
		System.out.println(jobId);
	
		query = "DELETE FROM jobApplication WHERE id=" + jobId;
		statement.executeUpdate(query);
		
		RequestDispatcher rd = request.getRequestDispatcher("hireTalent.jsp");
		rd.forward(request, response);
	%>
</body>
</html>