function configurePopupBtn(popup_id, popupBtn_id) {

	// Get the modal
	const modal = document.getElementById(popup_id);

	// Get the button that opens the modal
	const btn = document.getElementById(popupBtn_id);

	// Get the <span> element that closes the modal
	const span = modal.getElementsByClassName("close")[0];
	const cancel = modal.getElementsByClassName("cancel")[0];

	// When the user clicks the button, open the modal
	btn.onclick = function() {
		modal.style.display = "block";
		modal.className = "modal animated fadeInDown";
	}

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
		modal.className = "modal animated fadeOutUp";
	}
	cancel.onclick = function() {
		modal.className = "modal animated fadeOutUp";
	}
}

configurePopupBtn("login-popup", "login-button"); // Show and animate login
// pop-up
configurePopupBtn("register-popup", "register-button"); // Show and animate
// registration pop-up

function validateFormLogin() {
	const url = '/RoosterOnEclispe/Login';
	const data = {
		lusername : document.getElementById('lusername').value,
		luserpw : document.getElementById('luserpw').value
	}

	$
			.post(url, data, null)
			// Sends request to Login.java
			.done(function() { // If response is successful
				window.location.href = "/RoosterOnEclispe/home.jsp";
			})
			.fail(
					function() { // If response fails
						document.getElementById('error-login').innerHTML = "Invalid credentials";
					});

}

function validateFormRegistration() {

	const url = '/RoosterOnEclispe/Registration';
	const data = {
		rname : document.getElementById('rname').value,
		rusername : document.getElementById('rusername').value,
		ruserpw : document.getElementById('ruserpw').value,
		rconfirmpw : document.getElementById('rconfirmpw').value
	}

	$
			.post(url, data, null)
			.done(function() {
				window.location.href = "/RoosterOnEclispe/home.jsp";
			})
			.fail(
					function() {
						if (document.getElementById('ruserpw').value !== document
								.getElementById('rconfirmpw').value) {
							document.getElementById('error-registration').innerHTML = "Passwords do not match";
						} else
							document.getElementById('error-registration').innerHTML = "Username Taken";
					});
}
