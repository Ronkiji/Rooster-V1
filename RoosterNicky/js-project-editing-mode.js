$('#text-editor').contents().find('body').css("word-wrap", "break-word");

var showingSourceCode = false;
var isInEditMode = true;

function enableEditMode() {
    richTextField.document.designMode = 'On';
}
function execCmd(command) {
    richTextField.document.execCommand(command, false, null);
    console.log('Regular checkpoint');
}

function execHilite(command, option) {
    if(option === true){
        richTextField.document.execCommand(command, false, "yellow" ); 
    } else{
        richTextField.document.execCommand(command, false, "transparent" );
    }
    console.log("Color: " + richTextField.document.getSelection().backgoundColor);
    console.log(richTextField.document.getSelection().getBackgroundColor);
    // console.log('It reached here');trabsoarebt
    // console.log(document.body.style.backgroundColor);
    // if (richTextField.document.body.style.backgroundColor === "") {    
    //     console.log('It reached here x2');        
        // richTextField.document.execCommand(command, false, "yellow" ); // executes backColor command if hiliteColor returns false, indicating browser is internet explorer         
    // } else {
    //     console.log('It reached here x3');   
    //     richTextField.document.execCommand(command, false, null );
    // }   
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


$('.typo-emph').click(function(){
    if($(this).hasClass('active')){
        $(this).removeClass('active')
    } else {
        $(this).addClass('active')
    }
});

