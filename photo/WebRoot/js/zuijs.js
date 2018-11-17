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

function checkEmpty(form){
	if(document.userInfo.username.value==""){
		window.alert("请输入用户名！");
		return false;
	}
	if(document.userInfo.password.value == ""){
		window.alert("请输入密码！");
		return false;
	}
	if(document.userInfo.code.value==""){
		window.alert("请输入验证码！");
		return false;
	}
	return true;
}

window.onload = function(){
	document.getElementById("btn_showlogin").onclick = showMinLogin;
	document.getElementById("close_minilogin").onclick = closeLogin;
	document.getElementById("firstLine").onmousedown = moveLogin;
	document.getElementById("link").onclick = reload;
	document.getElementById("login").onclick = login;
	
	/*显示登录窗口*/
	function showMinLogin(){
		var mini_login = document.getElementsByClassName("mini_login")[0];
		var cover = document.getElementsByClassName("cover")[0];
		mini_login.style.display = "block";
		cover.style.display = "block";
		mini_login.style.left = (document.body.scrollWidth - mini_login.scrollWidth)/2+"px";
		mini_login.style.top = (document.body.scrollHeight - mini_login.scrollHeight)/2-160+"px";
		
	}
	/*关闭登陆窗口*/
	function closeLogin(){
		var mini_login = document.getElementsByClassName("mini_login")[0];
		var cover = document.getElementsByClassName("cover")[0];
		mini_login.style.display = "none";
		cover.style.display = "none";
		
	}
	/*移动登陆窗口*/
	function moveLogin(event){
		var moveable=true;
		//获取事件源
		event = event?event:window.event;
		var clientX = event.clientX;
		var clientY = event.clientY;
		
		var mini_login = document.getElementsByClassName("mini_login")[0];
		console.log(mini_login);
		var top = parseInt(mini_login.style.top);
		var left = parseInt(mini_login.style.left);
		//鼠标拖动
		document.onmousemove = function(event){
			if(moveable){
				event = event?event:window.event;
				var y = top+event.clientY-clientY;
				var x = left+event.clientX-clientX;
				if(x>0 && y>0){
					mini_login.style.top = y+"px";
					mini_login.style.left = x+"px";
				}
			}
		}
		//鼠标弹起
		document.onmouseup = function(){
			moveable = false;
		}				
	}
	function reload(){
		
		document.getElementById("checkCode").src="image.jsp?"+Math.random();
	}
	function login(){
		
		var username = document.userInfo.username.value;
		var password = document.userInfo.password.value;
		var code = document.userInfo.code.value;
		if(checkEmpty()){
			var xmlHttp = new XMLHttpRequest();
			var url = "userInfoServlet?info=checkUser&username="+username+"&password="+password+"&code="+code;
			xmlHttp.open("post", url, true);
			xmlHttp.onreadystatechange=function(){
				if(xmlHttp.readyState==4){
					var state = xmlHttp.responseText;
					if(xmlHttp.status==200 && (state.indexOf("yes")!=-1)){
						window.location.href="main.jsp";
					}
					else{
						document.getElementById("resultInfo").innerHTML = state;
					}
				}
				else{
					document.getElementById("resultInfo").innerHTML +="正在登录，请稍后......."; 
				}
			}
			xmlHttp.send();
		}
		
	}
	
};