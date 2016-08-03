window.addEventListener("load",loadActivity);

function loadActivity(){
    document.getElementById("generate").addEventListener("click",generatePassword);
}
function generatePassword(){
    
    var text=" ";

    var charset = "abcdefghijklmnopqrstuvwxyz0123456789";

    for(var i=0;i<8;i++){
        text +=charset.charAt(Math.floor(Math.random()* charset.length));
    }

    $("#pwd").val(text);

}