<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head lang="en">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <link href="style-projects.css" rel="stylesheet" type="text/css">
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
      <li class="nav-option"><a href="home.html"><span>Home</span><img src="assets/Home_Button.png" alt="Home"></a></li>
      <li class="nav-option"><a href="projects.html"><span>Projects</span><img src="assets/Projects_Button.png"
            alt="Projects"></a></li>
      <li class="nav-option"><a href="reminders.html"><span>Reminders</span><img src="assets/Reminders_Button.png"
            alt="Reminders"></a></li>

      <a class="logo-link" href="home.html"><img src="assets/Rooster_White.png" class="navbar-logo"></a>

      <li class="dropdown nav-option">
        <a href="javascript:void(0)"><span class="small-nav">Settings</span><img src="assets/Settings_Icon.png"></a>
        <div class="dropdown-content">
          <a href="#" class="dropdown-option">Change Name</a>
          <a href="#" class="dropdown-option">Change Profile Picture</a>
          <a href="#" class="dropdown-option">Logout</a>
        </div>
      </li>
      <li class="nav-option"><a href="help.html"><span class="small-nav">Help</span><img src="assets/Help_Icon.png"></a>
      </li>
      <li class="nav-option"><a href="#dark-mode"><span class="small-nav">Dark Mode</span><img
            src="assets/Dark_Mode_Icon.png"></a></li>
    </ul>
  </nav>

  <div class="options">
    <div onclick="location.href='#new-project';" class="interaction-option create-new-display">
      <h2>Start a New Project</h2>
      <p>Click here to create your new project!</p>
    </div>

    <div onclick="location.href='help.html';" class="interaction-option help-page-display">
      <h2>New to Rooster?</h2>
      <p>Check out our help page!</p>
    </div>

    <div onclick="location.href='#dark-mode';" class="interaction-option dark-mode-display">
      <h2>Dark Mode Display</h2>
      <p>Too bright? Let's tone it down.</p>
    </div>
  </div>


  <div class="projects-div">
    <h1>Your Projects</h1>

    <div class="size scrollbar">

      <div class="proj">
        <a href="#project-editing-mode-for-clicked-project">
          <div class="card">
            <div class="project-color"></div>
            <div class="project-info">
              <h2>Project Title</h2>
            </div>
          </div>
        </a>

        <div class="button">
          <input type="image" src="assets/Trash_Icon.png">
        </div>
      </div>

      <div class="proj">
        <a href="#project-editing-mode-for-clicked-project">
          <div class="card">
            <div class="project-color"></div>
            <div class="project-info">
              <h2>Project Title</h2>
            </div>
          </div>
        </a>

        <div class="button">
          <input type="image" src="assets/Trash_Icon.png">
        </div>
      </div>

      <div class="proj">
        <a href="#project-editing-mode-for-clicked-project">
          <div class="card">
            <div class="project-color"></div>
            <div class="project-info">
              <h2>Project Title</h2>
            </div>
          </div>
        </a>

        <div class="button">
          <input type="image" src="assets/Trash_Icon.png">
        </div>
      </div>

      <div class="proj">
        <a href="#project-editing-mode-for-clicked-project">
          <div class="card">
            <div class="project-color"></div>
            <div class="project-info">
              <h2>Project Title</h2>
            </div>
          </div>
        </a>

        <div class="button">
          <input type="image" src="assets/Trash_Icon.png">
        </div>
      </div>

      <div class="proj">
        <a href="#project-editing-mode-for-clicked-project">
          <div class="card">
            <div class="project-color"></div>
            <div class="project-info">
              <h2>Project Title</h2>
            </div>
          </div>
        </a>

        <div class="button">
          <input type="image" src="assets/Trash_Icon.png">
        </div>
      </div>

      <div class="proj">
        <a href="#project-editing-mode-for-clicked-project">
          <div class="card">
            <div class="project-color"></div>
            <div class="project-info">
              <h2>Project Title</h2>
            </div>
          </div>
        </a>

        <div class="button">
          <input type="image" src="assets/Trash_Icon.png">
        </div>
      </div>

      <div class="proj">
        <a href="#project-editing-mode-for-clicked-project">
          <div class="card">
            <div class="project-color"></div>
            <div class="project-info">
              <h2>Project Title</h2>
            </div>
          </div>
        </a>

        <div class="button">
          <input type="image" src="assets/Trash_Icon.png">
        </div>
      </div>
    </div>
  </div>


</body>

<script type="text/javascript" src="js-landing.js"></script>

</html>