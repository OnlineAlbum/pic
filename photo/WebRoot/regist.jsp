<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<link rel="stylesheet" type="text/css" href="css/maincss.css">
<head>
<base href="<%=basePath%>">
<title>My JSP 'regist.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">



</head>

<body class="b">
	<center>
		<div>
			<h1>注册账号</h1>
			<form action="RegistServlet" method="post">
				<div class="c">
					请输入账号： <input type="text" name="username" placeholder="账号" value=""
						style="width: 157px; ">
				</div>
				<div class="c">
					请输入密码： <input type="password" name="password" placeholder="密码"
						value="" style="width: 157px; ">
				</div>
				<div class="c">
					请确认密码： <input type="password" name="rpsw" placeholder="确认密码"
						value="" style="width: 157px; ">
				</div>
				<input type="submit" value="注册" style="width: 88px;">
				<input type = "button" value = "返回" onclick = "window.location.href = 'zuizhong.jsp'" style="width:88px;">
			</form>
			<font color="red" size="3">${msg }</font>
		</div>
	</center>
</body>

</html>
