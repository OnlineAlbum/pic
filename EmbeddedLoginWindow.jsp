<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>js制作带有遮罩弹出层实现登录小窗口啦</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script>
		window.onload = function(){
			
			document.getElementById("btn_showlogin").onclick = showMinLogin;
			document.getElementById("close_minilogin").onclick = closeLogin;
			document.getElementById("firstLine").onmousedown = moveLogin;
			document.getElementById("link").onclick = reload;
			/*显示登录窗口*/
			function showMinLogin(){
				var mini_login = document.getElementsByClassName("mini_login")[0];
				var cover = document.getElementsByClassName("cover")[0];
				mini_login.style.display = "block";
				cover.style.display = "block";
				mini_login.style.left = (document.body.scrollWidth - mini_login.scrollWidth)/2+"px";
				mini_login.style.top = (document.body.scrollHeight - mini_login.scrollHeight)/2+"px";
				
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
			
		};
	</script>
	<style>
		.mini_login{
			display:none;
			position:absolute;
			z-index:2;
			background:white;
		}
		.mini_login .item{
			width:320px;
			margin:0 auto;
			height:48px;
			line-height:48px;
			padding:0 20px;
		}
		.mini_login .item1{
			width:333px;
			margin:0 auto;
			height:48px;
			line-height:48px;
			padding:0 20px;
		}
		/* 登录窗第一行*/
		.mini_login .firstLine{
			color:#5677b5;
			background:#F7F7F7;
			font-size:18px;
			font-weight:bold;
			cursor:move;
		}
		.mini_login .item .login_close{
			display:inline-block;
			float:right;
			cursor:pointer;
			
		}
		.mini_login .item label{
			font-size:14px;
			margin:15px;
			
		}
		.mini_login .item input{
			display:inline-block;
			height:60%;
			width:70%;
		}
		.mini_login .item1 input{
			display:inline-block;
			height:60%;
			width:68%;
		}
		.mini_login .item img{
			display:inline-block;
			height:60%;
			width:40%;
			font-size:14px;
			margin:15px 100px;
		}
		/*登录按钮*/
		.mini_login .item .btn_login{
			display:block;
			margin:10px 0px 0px 20px;
			height:30px;
			width:100px;
			line-height:30px;
			background:#4490F7;
			color:white;
			font-size:16px;
			font-weight:bold;
			text-align:center;
			
		}
		.mini_login .item .btn_register{
			display:block;
			margin:10px 2px 0;
			height:30px;
			width:100px;
			line-height:30px;
			background:#4490F7;
			color:white;
			font-size:16px;
			font-weight:bold;
			text-align:center;
			
		}
		.cover{
			display:none;
			width:100%;
			height:100%;
			position:absolute;
			top:0;
			left:0;
			z-index:1;
			background-color:#000;
			opacity:0.3;
		}
	</style>
  </head>
  
  <body>
 	<% session.setMaxInactiveInterval(60); %>
    <div class="main">
    	<%
    		if(session.getAttribute("uname")==null){
    	%>
    	<a href="javascript:void(0)" class="btn_login" id="btn_showlogin">登录</a>
    	<%
    	}else{
    	%>
    	<label>欢迎您<%=session.getAttribute("uname") %>！</label>
    	<%
    	}   	
    	%>
    </div>
    <!-- 弹出登录小窗口 -->
    <div class="mini_login" id="mini_login">
    	<!-- 表单 -->
    	<form method="post" action="userInfoServlet?info=checkUser" onSubmit="return checkEmpty(userInfo)">
    		<div class="item firstLine" id="firstLine">
    			<span class="login_title">我要登录</span>
    			<span class="login_close" id="close_minilogin">X</span>  		
    		</div>
    		<div class="item">
    			<label>用户</label>
    			<input type="text" name="username" value="" title="请输入用户名"/>    			
    		</div>
    		<div class="item">
    			<label>密码</label>
    			<input type="password" name="password" value="" title="请输入密码"/>    			
    		</div>
    		<div class="item1">
    			<label>验证码：</label>
    			<input type="text" name="code" value="" title="请输入验证码"/>
    		</div>
    		<div class="item">

    			<a href="javascript:void(0)" id="link"><img id = "checkCode" alt="验证码" src="image.jsp"></a>
    		</div>
    		<table class="item">
    			<tr>
    				<td><input class="btn_login" type = "submit" value="登陆" /></td>
    				<td><input class="btn_register" type = "submit" value="注册" /></td>
    			</tr>
    		</table>
    	</form>
    </div>
    <!-- 遮罩层 -->
    <div class="cover"></div>
  </body>
</html>
