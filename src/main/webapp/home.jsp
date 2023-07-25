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
	<%
		//String username = request.getParameter("username");
		//String password = request.getParameter("password");
		//String portNumber = request.getParameter("portNumber");
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
            <li><a href="index.jsp">Login</a></li>
        </ul>
    </nav>
    
    <!-- Home page section -->
    <section class="hero">
        <div class="row main-container">
          <div class="column">
            <h2>Get Hired or Hire People For Free!</h2>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Perferendis, architecto? Consectetur enim obcaecati velit quibusdam iure, perspiciatis accusantium, voluptatibus possimus cum voluptates dolorum optio ab vitae. Praesentium voluptas quia voluptates at aperiam aliquid vitae autem!</p>
            <div class="buttons">
              <a href="hireTalent.jsp"><button class="btn">hire talent</button></a>
              <a href="jobPost.jsp"><button class="btn">create new job post</button></a>	  
            </div>
          </div>
          <div class="column">
            <img src="2.jpg" alt="heroImg" class="hero_img" />
          </div>
        </div>
      </section>
</body>
</html>