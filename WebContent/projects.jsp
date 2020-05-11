<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.rooster.type.*, javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>

<head lang="en">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="style-projects.css" rel="stylesheet" type="text/css">
<link href="style-navbar.css" rel="stylesheet" type="text/css">
<link href="animate.css" rel="stylesheet" type="text/css">
<link href="landing.jsp" type="text/html">
<link href="projects.jsp" type="text/html">
<link href="reminders.jsp" type="text/html">
<link rel="shortcut icon" href="assets/Rooster_Browser_Tab_Icon.png">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link href="pem.jsp" type="text/html">

<title>Rooster - Home</title>
</head>

<body>
	<nav class="navbar">
    <input type="checkbox" id="check">
    <label for="check" class="checkbtn">
      <i class="fas fa-bars"></i>
    </label>

    <ul class="expanded-ul">
      <li class="nav-option"><a href="home.jsp"><span>Home</span><img src="assets/Home_Button.png" alt="Home"></a></li>
      <li class="nav-option"><a href="projects.jsp"><span>Projects</span><img src="assets/Projects_Button.png"
            alt="Projects"></a></li>
      <li class="nav-option"><a href="reminders.jsp"><span>Reminders</span><img src="assets/Reminders_Button.png"
            alt="Reminders"></a></li>

      <a class="logo-link" href="landing.jsp"><img src="assets/Rooster_White.png" class="navbar-logo"></a>

      <li class="dropdown nav-option">
        <a href="javascript:void(0)"><span class="small-nav">Settings</span><img src="assets/Settings_Icon.png"></a>
        <div class="dropdown-content">
          <button href="#" class="dropdown-option" id="modal-button-name">Change Name</button>
          <button href="#" class="dropdown-option" id="modal-button-pp">Change Profile Picture</button>
          <button href="#" class="dropdown-option">Logout</button>
        </div>
      </li>
      <li class="nav-option"><a href="help.jsp"><span class="small-nav">Help</span><img src="assets/Help_Icon.png"></a>
      </li>
      <li class="nav-option"><a href="#dark-mode"><span class="small-nav">Dark Mode</span><img
            src="assets/Dark_Mode_Icon.png"></a></li>
    </ul>

    <div id="name-modal" class="modal-nav">
      <div class="modal-content-nav">
        <span class="close-nav">&times;</span>
        <br>
        <h1>Change Name</h1>
        <p>Enter your new name.</p>
        <input type="text" class="nav-text" name="nav-name" pattern="[a-zA-Z]{1,15}" data-toggle="tooltip"
          data-placement="top" title="English alphabet only, 1-15 characters" required>
        <br>
        <div class="error-msg" id="error-login"></div>
        <input type="submit" class="popup-buttons-nav confirm-nav" value="Confirm">
        <input type="reset" class="popup-buttons-nav cancel-nav" value="Cancel">
      </div>
    </div>

    <div id="pp-modal" class="modal-nav">
      <div class="modal-content-nav">
        <span class="close-nav">&times;</span>
        <br>
        <h1>Change Profile Picture</h1>
        <p>Enter the URL for your new profile picture.</p>
        <input type="text" class="nav-text" name="nav-url" data-toggle="tooltip" data-placement="top"
          title="Enter a URL" required>
        <br>
        <div class="error-msg" id="error-login"></div>
        <input type="submit" class="popup-buttons-nav confirm-nav" value="Confirm">
        <input type="reset" class="popup-buttons-nav cancel-nav" value="Cancel">
      </div>
    </div>
  </nav>

	<div id="project-menu" class="modal">
		<div class="modal-content">
			<span class="close">&times;</span> <br>
			<h2>Make Your New Project!</h2>
			<form onsubmit="event.preventDefault(); return validateNewProject()">
				<div class="project-title-div">
					<input type="text" id="project-title" pattern="[\w\W\d\D\s]{1,25}"
						data-toggle="tooltip" data-placement="top"
						title="English alphabet only, 1-25 characters" required> <label
						for="project-title">Project Title</label>
				</div>

				<br> <span class="color-title">Choose Your Project's
					Color</span> <br>

				<div class="color-picker" id="colors">
					<input type="radio" name="color" id="yellow" value="#ffe600"
						required checked /> <label for="yellow"><span
						class="yellow"></span></label> <input type="radio" name="color"
						id="light-green" value="#8cc63e" /> <label for="light-green"><span
						class="light-green"></span></label> <input type="radio" name="color"
						id="dark-green" value="#00a550" /> <label for="dark-green"><span
						class="dark-green"></span></label> <input type="radio" name="color"
						id="turquoise" value="#00aaac" /> <label for="turquoise"><span
						class="turquoise"></span></label> <input type="radio" name="color"
						id="royal-blue" value="#0083ca" /> <label for="royal-blue"><span
						class="royal-blue"></span></label> <input type="radio" name="color"
						id="dark-blue" value="#005aaa" /> <label for="dark-blue"><span
						class="dark-blue"></span></label> <input type="radio" name="color"
						id="purple" value="#6f2b90" /> <label for="purple"><span
						class="purple"></span></label> <input type="radio" name="color" id="pink"
						value="#c5168c" /> <label for="pink"><span class="pink"></span></label>

					<input type="radio" name="color" id="red" value="#ed1c24" /> <label
						for="red"><span class="red"></span></label> <input type="radio"
						name="color" id="orange" value="#f05a22" /> <label for="orange"><span
						class="orange"></span></label> <input type="radio" name="color"
						id="lighter-orange" value="#f5821f" /> <label for="lighter-orange"><span
						class="lighter-orange"></span></label> <input type="radio" name="color"
						id="orange-yellow" value="#fdb813" /> <label for="orange-yellow"><span
						class="orange-yellow"></span></label>
				</div>

				<div class="error-msg" id="error-create"></div>

				<input type="submit" class="popup-buttons confirm" id="create"
					value="Create"> <input type="reset"
					class="popup-buttons cancel" value="Cancel">
			</form>

			<a href="pem.jsp">PEM</a>
		</div>
	</div>

	<div class="options">
		<div class="interaction-option create-new-display" id="myBtn">
			<h2>Start a New Project</h2>
			<p>Click here to create your new project!</p>
		</div>

		<div onclick="location.href='help.jsp';"
			class="interaction-option help-page-display">
			<span>
				<h2>New to Rooster?</h2>
			</span> <span>
				<p>Check out our help page!</p>
			</span>
		</div>

		<div onclick="location.href='#dark-mode';"
			class="interaction-option dark-mode-display">
			<h2>Dark Mode Display</h2>
			<p>Too bright? Let's tone it down.</p>
		</div>
	</div>

	<div class="projects-div">
		<h1>Your Projects</h1>
		<div class="size scrollbar">

			<%
				ProjectDAO projectDao = new ProjectDAO();
				Project[] projects = projectDao.getProjectArray((String)session.getAttribute("username"));	
				for (int i = projects.length - 1; i >= 0; i--) {
			%>

			<div class="proj">
				<a href="/RoosterOnEclispe/OpenProject?id=<%= projects[i].getId()%>">
					<div class="card">
						<div class="project-color" style="background-color:<%= projects[i].getColor()%>"></div>
						<div class="project-info">
							<h2><%= projects[i].getTitle()%></h2>
						</div>
					</div>
				</a>

				<button>
					<i class="far fa-trash-alt"></i>
				</button>
			</div>

			<%
				}
			%>

		</div>
	</div>
</body>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="js-projects.jsp"></script>
<script type="text/javascript" src="js-navbar.jsp"></script>

</html>