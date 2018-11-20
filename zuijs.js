function openLogin(){
  document.getElementById("win").style.display="";   
}
function closeLogin(){
  document.getElementById("win").style.display="none";
}
function openDialog(){
  document.getElementById("res").style.display="";   
}
function closeDialog(){
  document.getElementById("res").style.display="none";
}
function show(obj, sType) {
var oDiv = document.getElementById(obj);
if (sType == 'show') { oDiv.style.display = 'block';}
if (sType == 'hide') { oDiv.style.display = 'none';}
}
$('.dropdown-toggle').dropdown()