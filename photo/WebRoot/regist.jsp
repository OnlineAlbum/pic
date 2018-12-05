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
<script type="text/javascript" src="js/zuijs.js" charset="gbk"></script>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style>

  .bb{
            color: red;
            vertical-align:middle;
            text-align:middle;
            background-color:#155B29FF;
            border-radius:10px;
        }
  

</style>


</head>

<body class="b">
	<center>
		<div>
			<h1>注册账号</h1>
			<form id="form" name="form" action="RegistServlet" method="post" >
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
				<div class="c">
					请设置问题： <input type="text" name="question" placeholder="问题" value=""
						style="width: 157px; ">
				</div>
				<div class="c">
					请设置答案： <input type="text" name="answer" placeholder="答案" value=""
						style="width: 157px; ">
				</div>
				<span class="check_css3 agreeResBox" >
                    			
                    			<label><input type="checkbox" class="input_check" onclick="checkboxOnclick(this)"/></label>
                				</span>
               				我同意  <a href="privacy.htm" class="r-service-protocol" target="_blank" id="menu1" >《服务协议》、</a><a href="privacy.htm" class="r-service-protocol" target="_blank" onmouseover="display()" onmouseout="disappear()">《隐私保护声明》</a></p>
               				
	
				<input type="submit" id="zhuce"  class="bb" value="注册" style="width: 88px;"  disabled/>
				<input type = "button" class="bb" value = "返回" onclick = "window.location.href = 'zuizhong.jsp'" style="width:88px;"/>
			</form>
			 <font color="red" size="3">${msg }</font> 
		</div>
		<textarea id="txtContent" rows="28" readonly="readonly"  style="display:none; border-radius:10px; border:1px solid #000; width: 630px" onmouseover="display()" onmouseout="disappear()">

			             《隐私保护声明》
             欢迎您浏览和使用本网站！本网站尊重并保护所有使用本网站用户的个人隐私
	权，以下是本网站对用户个人信息所采取的收集、使用和保护政策，在您使用本网站
	前，请您务必仔细阅读。如您依本网站相关指示而提供您的个人信息资料，将被视为
		对本声明全部内容的认可：
       	1.本网站将通过注册会员等形式要求您提供一些个人信息资料，这些个人资料包括：
       	姓名、性别、年龄、出生日期、手机、通信地址、电子邮件地址等情况。
       	2.您的个人信息资料将用于服务的意见或建议、统计和数据分析或其它与本网站服务
       	相关的合法使用。为服务用户的目的，本网站可能通过使用您的个人信息，向您提供
       	您可能感兴趣的信息，包括但不限于向您发送产品和服务信息。
       	3.本网站将采取适当的管理措施和技术手段，以保护您提供的个人信息的安全，防止
       	您的个人资料丢失、被盗用或遭篡改。除非因第2条所述的用途或服务需求，在未征得
       	您同意的情况下，本网站不会向任何无关第三方出租、出售或提供您的个人信息。
        4.因国家法律法规规定或应政府机关要求，本网站使用或披露您的个人资料的，不受
        本声明限制。
       	5.本网站无意向未成年人搜集任何个人信息资料，也不会向任何第三方透露任何未成
       	年人的信息，并请家长对于子女在使用互联网时对个人信息的运用进行监管和负责，
       	如未成年人通过公告版或类似形式自愿提供及公开的个人信息资料被他人使用或透过
       	邮件发放或转送，与本网站无关。
      	6.本网站对以下情况所导致的个人资料泄露、丢失、被盗用或被篡改不承担任何责任：   
      		(1)您将用户密码告知他人或与他人共享注册帐户；
      		(2)因黑客政击、计算机病毒侵入或发作、政府管制等不可抗力原因； 
      		(3)因与本网站链接的其它网站。
      	7. 本声明是本网站对用户隐私保护的承诺,以上内容可能会不时修改，请定期查阅。

			</textarea>
	</center>
</body>

</html>
