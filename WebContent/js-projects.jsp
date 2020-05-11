
const modal = document.getElementById("project-menu");

const btn = document.getElementById("myBtn");

const span = document.getElementsByClassName("close")[0];
const cancel = modal.getElementsByClassName("cancel")[0];

btn.onclick = function() {
	modal.style.display = "block";
	modal.className = "modal animated fadeInDown";
}

span.onclick = function() {
	modal.className = "modal animated fadeOutUp";
}

cancel.onclick = function() {
	modal.className = "modal animated fadeOutUp";
}

function validateNewProject() {

	const color = [ 'yellow', 'light-green', 'dark-green', 'turquoise',
			'royal-blue', 'dark-blue', 'purple', 'pink', 'red', 'orange',
			'lighter-orange', 'orange-yellow' ];

	var value = '';

	console.log('got to validate new project');

	for (var i = 0; i < 12; i++) {
		if (document.getElementById(color[i]).checked) {
			value = document.getElementById(color[i]).value;
			console.log('The selected color is: ' + value);
		}
	}

	const url = '/RoosterOnEclispe/NewProject';
	const data = {
		projectTitle : document.getElementById('project-title').value,
		projectColor : value
	}

	$
			.post(url, data, null)
			.done(
					function() {
						window.location.href = "/RoosterOnEclispe/pem.jsp";
						console
								.log('New project implemented successfully. Response sent back correct.')
					})
			.fail(
					function() {
						document.getElementById('error-create').innerHTML = "An error occured.";
					});
}

function openProject() {

	const color = [ 'yellow', 'light-green', 'dark-green', 'turquoise',
			'royal-blue', 'dark-blue', 'purple', 'pink', 'red', 'orange',
			'lighter-orange', 'orange-yellow' ];

	var value = '';

	console.log('got to validate new project');

	for (var i = 0; i < 12; i++) {
		if (document.getElementById(color[i]).checked) {
			value = document.getElementById(color[i]).value;
			console.log('The selected color is: ' + value);
		}
	}

	const url = '/RoosterOnEclispe/NewProject';
	const data = {
		projectTitle : document.getElementById('project-title').value,
		projectColor : value
	}

	$
			.post(url, data, null)
			.done(
					function() {
						window.location.href = "/RoosterOnEclispe/pem.jsp";
						console
								.log('New project implemented successfully. Response sent back correct.')
					})
			.fail(
					function() {
						document.getElementById('error-create').innerHTML = "An error occured.";
					});
}