<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Job Application Portal</title>
	<link rel="stylesheet" href="jobPost.css">
</head>
<body>
  <div class="login-root">
    <div class="box-root flex-flex flex-direction--column" style="min-height: 100vh;flex-grow: 1;">
      <div class="loginbackground box-background--white padding-top--64">
        <div class="loginbackground-gridContainer">
          <div class="box-root flex-flex" style="grid-area: top / start / 8 / end;">
            <div class="box-root" style="background-image: linear-gradient(white 0%, rgb(247, 250, 252) 33%); flex-grow: 1;">
            </div>
          </div>
          <div class="box-root flex-flex" style="grid-area: 4 / 2 / auto / 5;">
            <div class="box-root box-divider--light-all-2 animationLeftRight tans3s" style="flex-grow: 1;"></div>
          </div>
          <div class="box-root flex-flex" style="grid-area: 6 / start / auto / 2;">
            <div class="box-root box-background--blue800" style="flex-grow: 1;"></div>
          </div>
          <div class="box-root flex-flex" style="grid-area: 7 / start / auto / 4;">
            <div class="box-root box-background--blue animationLeftRight" style="flex-grow: 1;"></div>
          </div>
          <div class="box-root flex-flex" style="grid-area: 8 / 4 / auto / 6;">
            <div class="box-root box-background--gray100 animationLeftRight tans3s" style="flex-grow: 1;"></div>
          </div>
          <div class="box-root flex-flex" style="grid-area: 2 / 15 / auto / end;">
            <div class="box-root box-background--cyan200 animationRightLeft tans4s" style="flex-grow: 1;"></div>
          </div>
          <div class="box-root flex-flex" style="grid-area: 3 / 14 / auto / end;">
            <div class="box-root box-background--blue animationRightLeft" style="flex-grow: 1;"></div>
          </div>
          <div class="box-root flex-flex" style="grid-area: 4 / 17 / auto / 20;">
            <div class="box-root box-background--gray100 animationRightLeft tans4s" style="flex-grow: 1;"></div>
          </div>
          <div class="box-root flex-flex" style="grid-area: 5 / 14 / auto / 17;">
            <div class="box-root box-divider--light-all-2 animationRightLeft tans3s" style="flex-grow: 1;"></div>
          </div>
        </div>
      </div>
      <div class="box-root padding-top--24 flex-flex flex-direction--column" style="flex-grow: 1; z-index: 9;">
        <div class="box-root padding-top--48 padding-bottom--24 flex-flex flex-justifyContent--center">
          <h1><a href="http://blog.stackfindover.com/" rel="dofollow">Create New Job Post</a></h1>
        </div>
        <div class="formbg-outer">
          <div class="formbg">
            <div class="formbg-inner padding-horizontal--48">
              <form id="stripe-login" action="jobPost.jsp">
                <div class="field padding-bottom--24">
                  <label for="role">Job Role</label>
                  <input type="text" name="role">
                </div>
                
                <div class="field padding-bottom--24">
                  <div class="grid--50-50">
                    <label for="description">Job Description</label>
                  </div>
                  <input type="text" name="description">
                </div>
                
                <div class="field padding-bottom--24">
                  <label for="experience">Years of Experience</label>
                  <input type="text" name="experience">
                </div>
                
                <div class="field padding-bottom--24">
                  <label for="skills">Skills (kindly use ".")</label>
                  <input type="text" name="skills">
                </div>
                
                <div class="field padding-bottom--24">
                  <input type="submit" name="submit" value="submit">
                </div>
                
                <div class="field padding-bottom--24">
                   <a href="index.jsp" style="
    					border: 2px solid lightblue;
    					padding: 8px 25px;
    					text-transform: uppercase;
    					font-size: 20px;
					">Home</a>
				   <a href="jobPost.jsp" style="
    					border: 2px solid lightblue;
    					padding: 8px 25px;
    					text-transform: uppercase;
    					font-size: 20px;
    				">
    					Refresh
    				</a>
                </div>
                
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>