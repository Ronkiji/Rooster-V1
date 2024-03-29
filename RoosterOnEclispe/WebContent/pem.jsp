<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head lang="en">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="style-pem.css" rel="stylesheet" type="text/css">
<link href="style-navbar.css" rel="stylesheet" type="text/css">
<link href="animate.css" rel="stylesheet" type="text/css">
<link href="landing.jsp" type="text/html">
<link href="projects.jsp" type="text/html">
<link href="reminders.jsp" type="text/html">
<link rel="shortcut icon" href="assets/Rooster_Browser_Tab_Icon.png">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link href="pem.jsp" type="text/html">

<title>Rooster - Home</title>

<script src="https://use.fontawesome.com/aac5c45839.js"></script>
</head>

<body onload="enableEditMode();">
	<nav class="navbar">
		<input type="checkbox" id="check"> <label for="check"
			class="checkbtn"> <i class="fas fa-bars"></i>
		</label>

		<ul class="expanded-ul">
			<li class="nav-option"><a href="home.jsp"><span>Home</span><img
					src="assets/Home_Button.png" alt="Home"></a></li>
			<li class="nav-option"><a href="projects.jsp"><span>Projects</span><img
					src="assets/Projects_Button.png" alt="Projects"></a></li>
			<li class="nav-option"><a href="reminders.jsp"><span>Reminders</span><img
					src="assets/Reminders_Button.png" alt="Reminders"></a></li>

			<a class="logo-link" href="home.jsp"><img
				src="assets/Rooster_White.png" class="navbar-logo"></a>

			<li class="dropdown nav-option"><a href="javascript:void(0)"><span
					class="small-nav">Settings</span><img
					src="assets/Settings_Icon.png"></a>
				<div class="dropdown-content">
					<a href="#" class="dropdown-option">Change Name</a> <a href="#"
						class="dropdown-option">Change Profile Picture</a> <a href="#"
						class="dropdown-option">Logout</a>
				</div></li>
			<li class="nav-option"><a href="help.jsp"><span
					class="small-nav">Help</span><img src="assets/Help_Icon.png"></a>
			</li>
			<li class="nav-option"><a href="#dark-mode"><span
					class="small-nav">Dark Mode</span><img
					src="assets/Dark_Mode_Icon.png"></a></li>
		</ul>
	</nav>

	<div id="white-bg"></div>
	<div class="top-bar"></div>

	<div id="text-editor">
		<div class="typo-emph">
			<button onclick="execCmd('bold'); jQuery(this);">
				<i class="fa fa-bold"></i>
			</button>
			<button onclick="execCmd('italic');">
				<i class="fa fa-italic"></i>
			</button>
			<button onclick="execCmd('underline');">
				<i class="fa fa-underline"></i>
			</button>
			<button onclick="execCmd('strikethrough');">
				<i class="fa fa-strikethrough"></i>
			</button>
		</div>

		<div class="typo-emph div-section">
			<button onclick="execCmd('justifyLeft'); jQuery(this);">
				<i class="fa fa-align-left"></i>
			</button>
			<button onclick="execCmd('justifyCenter');">
				<i class="fa fa-align-center"></i>
			</button>
			<button onclick="execCmd('justifyRight');">
				<i class="fa fa-align-right"></i>
			</button>
		</div>

		<div class="split2">
			<div class="typo-emph">
				<button onclick="execCmd('subscript'); jQuery(this);">
					<i class="fa fa-subscript"></i>
				</button>
				<button onclick="execCmd('superscript');">
					<i class="fa fa-superscript"></i>
				</button>
			</div>

			<div class="typo-emph div-section">
				<button onclick="execCmd('undo');">
					<i class="fa fa-undo"></i>
				</button>
				<button onclick="execCmd('redo');">
					<i class="fa fa-repeat"></i>
				</button>
			</div>

			<div class="typo-emph div-section">
				<button onclick="execCmd('insertUnorderedList');">
					<i class="fa fa-list-ul"></i>
				</button>
				<button onclick="execCmd('insertOrderedList');">
					<i class="fa fa-list-ol"></i>
				</button>
			</div>
		</div>

		<div class="split1">
			<div class="typo-emph div-section font">
				<select class="font-names"
					onchange="execCommandWithArg('fontName', this.value);">
					<option id="arial" value="Arial">Arial</option>
					<option id="calibri" value="Calibri">Calibri</option>
					<option id="comic-sans-ms" value="Comic Sans MS">Comic
						Sans MS</option>
					<option id="courier" value="Courier">Courier</option>
					<option id="georgia" value="Georgia">Georgia</option>
					<option id="helvetica" value="Helvetica">Helvetica</option>
					<option id="tahoma" value="Tahoma">Tahoma</option>
					<option id="times-new-roman" value="Times New Roman">Times
						New Roman</option>
					<option id="verdana" value="Verdana">Verdana</option>
				</select> <select class="font-size"
					onchange="execCommandWithArg('fontSize', this.value);">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
				</select>
			</div>


			<div class="title">
				<div id="title-circle"></div>
				<h1 contenteditable="true"><%=session.getAttribute("project_title")%></h1>
			</div>

			<div class="typo-emph div-section hilite">
				<input type="color"
					onchange="execCommandWithArg('hiliteColor', this.value);">
				<button onclick="execHilite('hiliteColor', false)">
					<i class="fas fa-eraser"></i>
				</button>
			</div>

			<div class="typo-emph div-section">
				<button
					onclick="execCommandWithArg('insertImage', prompt('Enter the image URL',''));">
					<i class="fa fa-file-image-o"></i>
				</button>
			</div>
			<div class="typo-emph div-section">
				<button onclick="toggleSource();">
					<i class="fa fa-code"></i>
				</button>
				<button id="save-button">
					<i class="fas fa-save"></i>
				</button>
			</div>
		</div>
	</div>
	<div class="text-area">
		<iframe name="richTextField"></iframe>
	</div>

	<div class="reminder-top">
		<h2>Reminders</h2>
		<button id="modal-button">
			<i class="fas fa-plus"></i>
		</button>
	</div>

	<div class="size scrollbar">
		<div class="in-display">
			<div class="date-display" id="date-display">
				<h3 id="reminder-month">Mo</h3>
				<span id="reminder-day">##</span>
			</div>
			<div class="reminder-info">
				<h2 id="reminder-title">Reminder Title</h2>
				<p id="project-title">Project Affiliation</p>
			</div>
			<div class="buttons">

				<img src="assets/Overdue_Icon.png">
				<button>
					<i class="fa fa-check"></i>
				</button>
				<button>
					<i class="far fa-trash-alt"></i>
				</button>
			</div>
		</div>

		<div class="in-display">
			<div class="date-display" id="date-display">
				<h3>Mo</h3>
				<span>##</span>
			</div>
			<div class="reminder-info">
				<h2>Reminder Title</h2>
				<p>Project Affiliation</p>
			</div>
			<div class="buttons">

				<img src="assets/Overdue_Icon.png">
				<button>
					<i class="fa fa-check"></i>
				</button>
				<button>
					<i class="far fa-trash-alt"></i>
				</button>
			</div>
		</div>

		<div class="in-display">
			<div class="date-display" id="date-display">
				<h3>Mo</h3>
				<span>##</span>
			</div>
			<div class="reminder-info">
				<h2>Reminder Title</h2>
				<p>Project Affiliation</p>
			</div>
			<div class="buttons">

				<img src="assets/Overdue_Icon.png">
				<button>
					<i class="fa fa-check"></i>
				</button>
				<button>
					<i class="far fa-trash-alt"></i>
				</button>
			</div>
		</div>

		<div class="in-display">
			<div class="date-display" id="date-display">
				<h3>Mo</h3>
				<span>##</span>
			</div>
			<div class="reminder-info">
				<h2>Reminder Title</h2>
				<p>Project Affiliation</p>
			</div>
			<div class="buttons">

				<img src="assets/Overdue_Icon.png">
				<button>
					<i class="fa fa-check"></i>
				</button>
				<button>
					<i class="far fa-trash-alt"></i>
				</button>
			</div>
		</div>

		<div class="in-display">
			<div class="date-display" id="date-display">
				<h3>Mo</h3>
				<span>##</span>
			</div>
			<div class="reminder-info">
				<h2>Reminder Title</h2>
				<p>Project Affiliation</p>
			</div>
			<div class="buttons">

				<img src="assets/Overdue_Icon.png">
				<button>
					<i class="fa fa-check"></i>
				</button>
				<button>
					<i class="far fa-trash-alt"></i>
				</button>
			</div>
		</div>

		<div class="in-display">
			<div class="date-display" id="date-display">
				<h3>Mo</h3>
				<span>##</span>
			</div>
			<div class="reminder-info">
				<h2>Reminder Title</h2>
				<p>Project Affiliation</p>
			</div>
			<div class="buttons">

				<img src="assets/Overdue_Icon.png">
				<button>
					<i class="fa fa-check"></i>
				</button>
				<button>
					<i class="far fa-trash-alt"></i>
				</button>
			</div>
		</div>

		<div class="in-display">
			<div class="date-display" id="date-display">
				<h3>Mo</h3>
				<span>##</span>
			</div>
			<div class="reminder-info">
				<h2>Reminder Title</h2>
				<p>Project Affiliation</p>
			</div>
			<div class="buttons">

				<img src="assets/Overdue_Icon.png">
				<button>
					<i class="fa fa-check"></i>
				</button>
				<button>
					<i class="far fa-trash-alt"></i>
				</button>
			</div>
		</div>

		<div class="in-display">
			<div class="date-display" id="date-display">
				<h3>Mo</h3>
				<span>##</span>
			</div>
			<div class="reminder-info">
				<h2>Reminder Title</h2>
				<p>Project Affiliation</p>
			</div>
			<div class="buttons">

				<img src="assets/Overdue_Icon.png">
				<button>
					<i class="fa fa-check"></i>
				</button>
				<button>
					<i class="far fa-trash-alt"></i>
				</button>
			</div>
		</div>

		<div class="in-display">
			<div class="date-display" id="date-display">
				<h3>Mo</h3>
				<span>##</span>
			</div>
			<div class="reminder-info">
				<h2>Reminder Title</h2>
				<p>Project Affiliation</p>
			</div>
			<div class="buttons">

				<img src="assets/Overdue_Icon.png">
				<button>
					<i class="fa fa-check"></i>
				</button>
				<button>
					<i class="far fa-trash-alt"></i>
				</button>
			</div>
		</div>

		<div class="in-display">
			<div class="date-display" id="date-display">
				<h3>Mo</h3>
				<span>##</span>
			</div>
			<div class="reminder-info">
				<h2>Reminder Title</h2>
				<p>Project Affiliation</p>
			</div>
			<div class="buttons">

				<img src="assets/Overdue_Icon.png">
				<button>
					<i class="fa fa-check"></i>
				</button>
				<button>
					<i class="far fa-trash-alt"></i>
				</button>
			</div>
		</div>

	</div>
	
		<div id="new-reminder-modal" class="modal">
		<div class="modal-content">
			<span class="close">&times;</span> <br>
			<h2>Create a Reminder!</h2>
			<br>
			<form onsubmit="event.preventDefault(); return validateNewReminder();">
				<div class="rem-name-div">
					<input type="text" id="rem-name" pattern="[\w\W\d\D\s]{1,25}"
						data-toggle="tooltip" data-placement="top"
						title="English alphabet only, 1-25 characters" required> <label
						for="rem-name">Reminder Title</label>
				</div>
				<br>
				
				<div class="pad-under">
					<span class="date-q">Add a Date?</span> 
					<br> 
					
					<label class="radio-inline">Yes 
						<input type="radio" name="optradio" id="radio-yes" required checked onchange="dateOption();"> <span class="checkmark"></span>
					</label> 
					<label class="radio-inline">No 
					<input type="radio" name="optradio" id="radio-no" onchange="dateOption();"> <span class="checkmark"></span>
					</label>
				</div>

				<div class="pad-under" id="datepicker">
					<span class="date-q">Select a Date:</span> <br>
					<div class="datepicker">
						<input type="date" id="date-input" required>
					</div>
				</div>

				<div class="error-msg" id="error-create"></div>

				<input type="submit" class="popup-buttons confirm" value="Create"
					id="create-button"> <input type="reset"
					class="popup-buttons cancel" value="Cancel">

			</form>
		</div>
	</div>



</body>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="js-pem.jsp"></script>

</html>