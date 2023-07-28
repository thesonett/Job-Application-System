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
        <label class="logo"><a href="home.jsp" style="color: white">Job App</a></label>
        <ul>
            <li><a href="home.jsp">Refresh</a></li>
        </ul>
    </nav>
    
    <!-- The video -->
    <video autoplay muted loop id="myVideo" controlsList="nodownload">
      <source src="bg.mov">
    </video>
    
    <!-- Home page section -->
    <section class="hero">
        <div class="row main-container" style="justify-content: center;">
          <div class="column">
            <h2>Search Between More Then <span>50,000</span> Open Jobs!</h2>
            <p>Trending Jobs Keywords: <span>Web Designer</span> <span>Web Developer</span> <span>IOS Developer</span> <span>Android Developer</span></p>
            <div class="buttons">
              <a href="hireTalent.jsp"><button class="btn">Find Job</button></a>
              <a href="jobPost.jsp"><button class="btn">Create new job</button></a>
            </div>
          </div>
        </div>
      </section>
</body>
</html>