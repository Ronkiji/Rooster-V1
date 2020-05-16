function configurePopupBtn(popup_id, loginBtn_id) {
    
    // Get the modal
    const modal = document.getElementById(popup_id);

    // Get the button that opens the modal
    const btn = document.getElementById(loginBtn_id);

    // Get the <span> element that closes the modal
    const span = modal.getElementsByClassName("close")[0];
    const cancel = modal.getElementsByClassName("cancel")[0];

    // When the user clicks the button, open the modal 
    btn.onclick = function () {
        modal.style.display = "block";
        modal.className = "modal animated fadeInDown";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.className = "modal animated fadeOutUp";
    }
    cancel.onclick = function () {
        modal.className = "modal animated fadeOutUp";
    }

    // // When the user clicks anywhere outside of the modal, close it
    // window.onclick = function (event) {
    //     if (event.target == modal) {
    //         modal.style.display = "none";
    //     }
    // }
}

configurePopupBtn("login-popup", "login-button");
configurePopupBtn("register-popup", "register-button");