<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head lang="en">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <link href="style-home.css" rel="stylesheet" type="text/css">
  <link href="style-navbar.css" rel="stylesheet" type="text/css">
  <link href="animate.css" rel="stylesheet" type="text/css">
  <link href="landing.jsp" type="text/html">
  <link href="projects.jsp" type="text/html">
  <link href="reminders.jsp" type="text/html">
  <link rel="shortcut icon" href="assets/Rooster_Browser_Tab_Icon.png">

  <script src="https://kit.fontawesome.com/a076d05399.js"></script>

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
          <a href="#" class="dropdown-option">Change Name</a>
          <a href="#" class="dropdown-option">Change Profile Picture</a>
          <a href="#" class="dropdown-option">Logout</a>
        </div>
      </li>
      <li class="nav-option"><a href="help.jsp"><span class="small-nav">Help</span><img src="assets/Help_Icon.png"></a>
      </li>
      <li class="nav-option"><a href="#dark-mode"><span class="small-nav">Dark Mode</span><img
            src="assets/Dark_Mode_Icon.png"></a></li>
    </ul>
  </nav>

  <div class="top">
    <div class="greeting">
      <img src="assets/Default_Profile_Picture.png">
      <!--Input New Profile Picture Here-->
      <h1>Hi <span><%=session.getAttribute("name")%></span>!</h1>
      <!--Input Name Here-->
      <div onclick="location.href='help.jsp';" class="interaction-option help-page-display">
        <h2>New to Rooster?</h2>
        <p>Check out our help page!</p>
      </div>

      <div onclick="location.href='#dark-mode';" class="interaction-option dark-mode-display">
        <h2>Dark Mode Display</h2>
        <p>Too bright? Let's tone it down.</p>
      </div>
    </div>
    
    <div class="main-page">
      <h1>Your Projects</h1>
      <a href="projects.jsp">View Projects</a>
      <a href="reminders.jsp">View Reminders</a>
    </div>
  </div>

  <div class="upcoming-display">
    <h1>Upcoming</h1>

    <div class="bg">
      <div class="in-display">
        <div class="date-display">
          <h3>Mo</h3>
          <span>##</span>
        </div>
        <div class="reminder-info">
          <h2>Reminder Title</h2>
          <p>Project Affiliation</p>
        </div>
        <div class="buttons">
          <img src="assets/Overdue_Icon.png">
          <button><i class="fa fa-check"></i></button>
          <button><i class="far fa-trash-alt"></i></button>
        </div>
      </div>

      <div class="in-display">
        <div class="date-display">
          <h3>Mo</h3>
          <span>##</span>
        </div>
        <div class="reminder-info">
          <h2>Reminder Title</h2>
          <p>Project Affiliation</p>
        </div>
        <div class="buttons">
          
          <img src="assets/Overdue_Icon.png">
          <button><i class="fa fa-check"></i></button>
          <button><i class="far fa-trash-alt"></i></button>
        </div>
      </div>

      <div class="in-display">
        <div class="date-display">
          <h3>Mo</h3>
          <span>##</span>
        </div>
        <div class="reminder-info">
          <h2>Reminder Title</h2>
          <p>Project Affiliation</p>
        </div>
        <div class="buttons">
          <img src="assets/Overdue_Icon.png">
          <button><i class="fa fa-check"></i></button>
          <button><i class="far fa-trash-alt"></i></button>
        </div>
      </div>

      <div class="in-display">
        <div class="date-display">
          <h3>Mo</h3>
          <span>##</span>
        </div>
        <div class="reminder-info">
          <h2>Reminder Title</h2>
          <p>Project Affiliation</p>
        </div>
        <div class="buttons">
          
          <img src="assets/Overdue_Icon.png">
          <button><i class="fa fa-check"></i></button>
          <button><i class="far fa-trash-alt"></i></button>
        </div>
      </div>
    </div>
  </div>
</body>

</html>