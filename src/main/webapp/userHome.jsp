<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Job Application System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <!-- JSP way to import stylesheet -->
    <style>
     	<%@ include file="style.css"%>
	</style>
	
</head>
<body>
	<!-- navigation bar -->
    <nav>
        <input type="checkbox" id="check">
        <label for="check" class="checkbtn">
            <i class="fas fa-bars"></i>
        </label>
        <label class="logo"><a href="userHome.jsp" style="color: white">Job App</a></label>
        <ul>
            <li><a href="userHome.jsp">Refresh</a></li>
            <li><a href="index.jsp">Login</a></li>
        </ul>
    </nav>
    
    <!-- The video -->
    <video autoplay muted loop id="myVideo">
      <source src="bg.mov">
    </video>
    
    <!-- Home page section -->
    <section class="hero">
        <div class="row main-container" style="justify-content: center;">
          <div class="column">
            <h2>Search Between More Then <span>50,000</span> Open Jobs!</h2>
            <p>Trending Jobs Keywords: <span>Web Designer</span> <span>Web Developer</span> <span>IOS Developer</span> <span>Android Developer</span></p>
            <div class="buttons">
              <a href="userHireTalent.jsp"><button class="btn">Find Jobs</button></a>
            </div>
          </div>
        </div>
      </section>
      
      <!-- Footer section -->
      <footer>
		<div class="footer">
			<div class="row">
				<a href="https://www.facebook.com/thesonett" target="_blank"><i class="fa fa-facebook"></i></a>
				<a href="https://www.instagram.com/thesonett" target="_blank"><i class="fa fa-instagram"></i></a>
				<a href="https://www.linkedin.com/in/thesonett" target="_blank"><i class="fa fa-linkedin"></i></a>
			</div>
			<div class="row">
				<ul>
					<li><a href="#">Contact us</a></li>
					<li><a href="#">Our Services</a></li>
					<li><a href="#">Privacy Policy</a></li>
					<li><a href="#">Terms & Conditions</a></li>
				</ul>
			</div>
			<div class="row">Copyright © 2023 - All rights reserved | Designed By Joy Saha </div>
		</div>
	  </footer>
</body>
</html>