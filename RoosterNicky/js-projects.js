// Get the modal
var modal = document.getElementById("project-menu");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

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