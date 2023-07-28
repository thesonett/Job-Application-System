<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Job Application System</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
</head>
<body>
	 <!-- navigation bar -->
    <nav>
        <input type="checkbox" id="check">
        <label for="check" class="checkbtn">
            <i class="fas fa-bars"></i>
        </label>
        <label class="logo"><a href="index.jsp" style="color: white">Job App</a></label>
    </nav>

    <!-- job application form  -->
    <form action="formServlet.jsp">
        <h2>Login to Your Database</h2>
        <div class="form-group fullname">
          <label for="username">Username</label>
          <input type="text" id="fullname" placeholder="enter your database username.." name="username">
        </div>
        <div class="form-group password">
          <label for="password">Password</label>
          <input type="password" id="password" placeholder="enter your database password.." name="password">
        </div>
        <div class="form-group email">
          <label for="portNumber">Server Port Number</label>
          <input type="text" id="email" placeholder="enter your database server port number.." name="portNumber">
        </div>
        <div class="form-group submit-btn">
          <input type="submit" value="Login">
        </div>
      </form>
</body>
</html>