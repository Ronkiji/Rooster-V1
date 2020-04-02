<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="style-landing.css" rel="stylesheet" type="text/css">
    <link href="animate.css" rel="stylesheet" type="text/css">
    <link href="home.jsp" type="text/html">
    <link rel="shortcut icon" href="assets/Rooster_Browser_Tab_Icon.png">
    <title>Rooster</title>
</head>

<body>
    <div class=header>
        <div class="container">
            <a href="home.html"><img id="logowhite" src="assets/Rooster_White.png"></a>
            <img id="slogan" src="assets/Slogan.png">
            <br>
            <button class="modal-button text" id="login-button">LOGIN</button>
            <button class="modal-button text" id="register-button">REGISTER</button>
        </div>
    </div>

    <!-- The Modal -->
    <div id="login-popup" class="modal">
        <!-- Modal content -->
        <div class="modal-content text">
            <span class="close">&times;</span>
            <br><br>
            <form action="Registration" method="post">
                <img id="logo-word" src="assets/Rooster_Main_Logo.png">
                <!--Login Title-->
                <br><br><br>
                <div class="modal-inputs">
                    <input type="text" id="lusername" name="lusername" required>
                    <label for="lusername">Username</label>
                </div>
                <br><br><br>
                <div class="modal-inputs">
                    <input type="password" id="luserpw" name="luserpw" required>
                    <label for="luserpw">Password</label>
                </div>
                <br><br>
                <button class="text popup-buttons confirm" id="confirm-login">Confirm</button>
                <button class="text popup-buttons cancel">Cancel</button>
            </form>
        </div>
    </div>

    <div id="register-popup" class="modal">
        <!-- Modal content -->
        <div class="modal-content text">
            <span class="close">&times;</span>
            <form action="Registration" method="post">
                <br><br><br>
                <img id="logo-icon" src="assets/Rooster_Icon_Logo.png">
                <br><br>
                <h1 class="text modal-title">CREATE YOUR ACCOUNT TODAY!</h1>
                <br><br>
                <div class="modal-inputs">
                    <input type="text" id="rname" name="rname" required>
                    <label for="rname">Name</label> <!--FORM VALIDATE-->
                </div>
                <br><br><br>
                <div class="modal-inputs">
                    <input type="text" id="rusername" name="rusername" required>
                    <label for="rusername">Username</label> <!--FORM VALIDATE-->
                </div>
                <br><br><br>
                <div class="modal-inputs">
                    <input type="password" id="ruserpw" name="ruserpw" required>
                    <label for="ruserpw">Password</label> <!--FORM VALIDATE-->
                </div>
                <br><br><br>
                <div class="modal-inputs">
                    <input type="password" id="rconfirmpw" name="rconfirmpw" required>
                    <label for="rconfirmpw">Confirm Password</label>
                </div>
                <br><br>
                <button class="text popup-buttons confirm" id="confirm-register">Confirm</button>
                <button class="text popup-buttons cancel">Cancel</button>
                <br>
            </form>
        </div>
    </div>

    <div class="preview">
        <img id="flat" src="assets/Landing_Flat_Design.png">
        <h2 class="text desc">Lorem Ipsum</h2>
    </div>

    <div class="rooster-workings">
        <div class="info">
            <h1 class="text" id="howto">How Rooster's Organization Works</h1>
            <img class="icon" src="assets/Start_Project.png">
            <img class="icon" src="assets/Set_Reminders.png">
            <img class="icon" src="assets/Stay_Track.png">
        </div>
    </div>
</body>

<script type="text/javascript" src="js-landing.js"></script>

</html>