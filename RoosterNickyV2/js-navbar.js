function configurePopupBtn(popup_id, btn_id) {
    
    // Get the modal
    const modal = document.getElementById(popup_id);

    // Get the button that opens the modal
    const btn = document.getElementById(btn_id);

    // Get the <span> element that closes the modal
    const span = modal.getElementsByClassName("close-nav")[0];
    const cancel = modal.getElementsByClassName("cancel-nav")[0];

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
}

configurePopupBtn("name-modal", "modal-button-name");
configurePopupBtn("pp-modal", "modal-button-pp");