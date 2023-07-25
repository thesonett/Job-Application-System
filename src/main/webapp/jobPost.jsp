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
            <li><a href="home.jsp">Home</a></li>
            <li><a href="jobPost.jsp">Refresh</a></li>
        </ul>
    </nav>

    <!-- job application form  -->
    <form action="jobPostServlet.jsp">
        <h2>Create New Job Application</h2>
        <div class="form-group fullname">
          <label for="role">Job Role</label>
          <input type="text" id="fullname" placeholder="enter the job role.." name="role">
        </div>
        <div class="form-group email">
          <label for="description">Job Description</label>
          <input type="text" id="email" placeholder="enter the job description.." name="description">
        </div>
        <div class="form-group password">
          <label for="experience">Years of Experience</label>
          <input type="text" id="password" placeholder="enter the years of experience.." name="experience">
        </div>
        <div class="form-group date">
          <label for="skills">Skills (kindly use ".")</label>
          <input type="text" id="date" placeholder="enter the skills.." name="skills">
        </div>
        <div class="form-group submit-btn">
          <input type="submit" value="Submit">
        </div>
      </form>
</body>
</html>