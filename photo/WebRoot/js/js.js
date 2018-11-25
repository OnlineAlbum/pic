/**
 * 
 */
function checkEmpty1(form){
	if(form.username.value==""){
		window.alert("请输入用户名！");
		return false;
	}
	if(form.password.value == ""){
		window.alert("请输入密码！");
		return false;
	}
}
function reload1(){
	document.getElementById("checkCode").src="image.jsp?"+Math.random();
	//document.getElementsByName("checkCode");
	//window.alert(
	//document.checkCode.src="image.jsp"+Math.random();
	
}