var showingSourceCode = false;
var isInEditMode = true;

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
    console.log("Color: " + richTextField.document.getSelection().backgoundColor);
    console.log(richTextField.document.getSelection().getBackgroundColor);
}

function execCommandWithArg(command, arg) {
    richTextField.document.execCommand(command, false, arg);
}
function toggleSource() {
    if (showingSourceCode) {
        richTextField.document.getElementsByTagName('body')[0].innerHTML = richTextField.document.getElementsByTagName('body')[0].textContent;
        showingSourceCode = false;
    }
    else {
        richTextField.document.getElementsByTagName('body')[0].textContent = richTextField.document.getElementsByTagName('body')[0].innerHTML;
        showingSourceCode = true;
    }
}
function toggleEdit(argument) {
    if (isInEditMode) {
        richTextField.document.designMode = 'Off';
        isInEditMode = false;
    }
    else {
        richTextField.document.designMode = 'On';
        isInEditMode = true;
    }
}

// Get the modal
var modal = document.getElementById("new-reminder-modal");

// Get the button that opens the modal
var btn = document.getElementById("modal-button");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function () {
    modal.style.display = "block";
    modal.className = "modal animated fadeInDown";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function () {
    modal.className = "modal animated fadeOutUp";
}