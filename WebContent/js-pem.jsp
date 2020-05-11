<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.rooster.type.*, javax.servlet.http.HttpSession"%>

var showingSourceCode = false;
var isInEditMode = true;

<%

ProjectDAO projectDao = new ProjectDAO();
Project project = new Project();
project = projectDao.autofill(project, (int)session.getAttribute("currentProjectId"));

%>

setColors();
console.log('<%= project.getText()%>');
if('<%= project.getText()%>' != 'null'){
	HtmlToText('<%= project.getText()%>');
}


function setColors(){
	
	var color = '<%= project.getColor()%>';

	changeColorId('title-circle', color);
	changeColorId('save-button', color);
	changeColorId('modal-button', color);
}


function changeColorId(id, color) {
	const div = document.getElementById(id);
	div.style.backgroundColor = color;
}

function enableEditMode() {
	richTextField.document.designMode = 'On';
}
function execCmd(command) {
	richTextField.document.execCommand(command, false, null);
}

function execHilite(command, option) {
	if (option === true) {
		richTextField.document.execCommand(command, false, "yellow");
	} else {
		richTextField.document.execCommand(command, false, "transparent");
	}
	console.log("Color: "
			+ richTextField.document.getSelection().backgoundColor);
	console.log(richTextField.document.getSelection().getBackgroundColor);
}

function execCommandWithArg(command, arg) {
	richTextField.document.execCommand(command, false, arg);
}
function toggleSource() {
	if (showingSourceCode) {
		richTextField.document.getElementsByTagName('body')[0].innerHTML = richTextField.document
				.getElementsByTagName('body')[0].textContent;
		showingSourceCode = false;
	} else {
		richTextField.document.getElementsByTagName('body')[0].textContent = richTextField.document
				.getElementsByTagName('body')[0].innerHTML;
		showingSourceCode = true;
	}
}

function HtmlToText(html){
	richTextField.document.getElementsByTagName('body')[0].innerHTML = html;
}

function getTextHtml(){
	return richTextField.document.getElementsByTagName('body')[0].innerHTML;
}

function getTextContent(){
	return richTextField.document.getElementsByTagName('body')[0].textContent;
}


function toggleEdit(argument) {
	if (isInEditMode) {
		richTextField.document.designMode = 'Off';
		isInEditMode = false;
	} else {
		richTextField.document.designMode = 'On';
		isInEditMode = true;
	}
}

function dateOption() {
	var el = document.getElementById("radio-no");
	var check = false;
	if (el.checked) {
		document.getElementById("date-input").required = false;
		document.getElementById("datepicker").style.display = 'none';
		check = true;
	} else {
		document.getElementById("datepicker").style.display = '';
	}
	console.log(check);
}

const modal = document.getElementById("new-reminder-modal");

const btn = document.getElementById("modal-button");

const span = document.getElementsByClassName("close")[0];
const cancel = modal.getElementsByClassName("cancel")[0];

btn.onclick = function() {
	modal.style.display = "block";
	modal.className = "modal animated fadeInDown";
	document.getElementById("datepicker").style.display = '';
}

span.onclick = function() {
	modal.className = "modal animated fadeOutUp";
}

cancel.onclick = function() {
	modal.className = "modal animated fadeOutUp";
}





function validateNewReminder() {

	var value = null;
	
	if(!document.getElementById("radio-no").checked){
		value = document.getElementById("date-input").value;
		console.log('Yes was selected, date inputted was ' + value);
	} else{
		console.log('No was selected, date inputted was ' + value);
	}
	
	

	const url = '/RoosterOnEclispe/NewReminder';
	const data = {
		reminderTitle : document.getElementById('rem-name').value,
		reminderDate : value
	}
	console.log("validateNewReminder " + document.getElementById('rem-name').value);
	console.log("validateNewReminder " + value);

	$
			.post(url, data, null)
			.done(
					function() {						
						modal.className = "modal animated fadeOutUp";
						$("#reminders-list").load("pem.jsp" + " #reminders-list")
					})
			.fail(
					function() {
						document.getElementById('error-create').innerHTML = "An error occured.";
					});

}

function saveText(){
	
	const url = '/RoosterOnEclispe/SaveText';
	const data = {
		text : getTextHtml()
	}

	$
			.post(url, data, null)
			.done(
					function() {						
					})
			.fail(
					function() {
						//error modal
					});
	
}

//function displayReminder(){
//	
//	const pro_title = '<%=session.getAttribute("project_title")%>';
//	const rem_title = '<%=session.getAttribute("reminder_title")%>';
//	document.getElementById('project-title').innerHTML = pro_title;
//	document.getElementById('reminder-title').innerHTML = rem_title;
//	const date = '<%=session.getAttribute("due_date")%>';
//
//	const due_date = new Date(date.substring(0,4), date.substring(5,7), date.substring(8,10));
//	const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
//	const month = months[due_date.getMonth() - 1];
//	const day = due_date.getDate();
//
//	document.getElementById('reminder-month').innerHTML = month;
//	document.getElementById('reminder-day').innerHTML = day;
//	
//	console.log(pro_title);
//	console.log(rem_title);
//	console.log(date);
//	
//	
//	
//}