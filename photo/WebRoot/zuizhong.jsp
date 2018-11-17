<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="renderer" content="webkit">
	<meta name="keywords" content="相册,网络相册,制作相册,LC"/>
	<meta name="description" content="LC网络相册可以制作属于自己的相册，留住那些难忘的时光、美丽的风景，传播快乐与美，分享快乐与美。" />
	<title>网络相册</title>
	<meta content="no-transform " http-equiv="Cache-Control" />
	<link rel="stylesheet" type="text/css" href="css/maincss.css"></link>
	<script type="text/javascript" src="js/zuijs.js"></script>
</head>


  <body>
   
	<% session.setMaxInactiveInterval(60);
	response.setHeader("Cache-Control", "no-cache");
	%>
	<div>


		<div class="head-bar"><!--这里为网页的上大部分-->
			<div class="head_bar_con">
        		<a href="zuizhong.htm" class="logo_index">LC</a>
        		<span class="miaosu">制作属于自己的相册</span>
        		<ul class="gongneng">
            		<li>
                		<a href="javascript:openDialog();">注册</a>						
						<div id=res style="display:none; POSITION:absolute; left:50%; top:50%; width:600px; height:400px; margin-left:-300px; margin-top:-200px; border:1px solid #888; background-color:#edf; text-align:center;" >
							<a href="javascript:closeDialog();" class="close" style="display: block;text-align: right;">关闭</a>
							<div class="register">
            					<ul class="tab-head" style="font-size: 15px;font-family: 宋体;">
                					<div class="tab-title" style="font-family: 宋体;font-size:25px;margin-top:25px;  margin-bottom:15px;">注册账号</div>
                					<li style="font-family: 宋体;font-size:20px;margin-top:15px;  margin-bottom:15px;">      	请输入手机号:&nbsp;                    						
                        				<input type="text" id="input-mobile" value="">		
                					</li>
                					<li style="font-family: 宋体;font-size:20px;margin-top:15px;  margin-bottom:30px;">
                        				请输入验证码:&nbsp;                   						
                        				<input type="text" id="reg-image-code" value="">							
                        			</li>
            					</ul>           
            					<a href="register.htm" id="reg-btn">立即注册</a>
            					<p class="mt_20">
								<span class="check_css3 agreeResBox">
                    			<input type="checkbox"  class="input_check" id="check3">
                    			<label for="check3"></label>
                				</span>
          						我同意  <a href="service.htm" class="r-service-protocol" target="_blank">《服务协议》、</a><a href="privacy.htm" class="r-service-protocol" target="_blank">《隐私保护声明》</a></p>	
    						</div>
    					</div>
            		</li>
						
           	 		<li>
           	 		
           	 		<a href="javascript:void(0)" class="btn_login" id="btn_showlogin">登录</a>
						
						<div class="mini_login" id="mini_login">
							<!-- 表单 -->
							<form name="userInfo" method="post" action="userInfoServlet?info=checkUser"
								onSubmit="return checkEmpty(userInfo)">
		
									<div class="item firstLine" id="firstLine">
									<span class="login_title">我要登录</span> <span class="login_close"
										id="close_minilogin">X</span>
									</div>
								<div class="item" style="padding-top: 34px;">
									<input class="input-username" type="text" name="username" placeholder="手机/邮箱/用户名" value=""
										title="请输入用户名" />
								</div>
								<div class="item">
									<input class="input-password" type="password" name="password" placeholder="密码"
										value="" title="请输入密码" />
								</div>
								<div class="item1">
									<input class="input-code" type="text" name="code" placeholder="验证码" value=""
										title="请输入验证码" />
								</div>
								
								<div class="item">

									<a href="javascript:void(0)" id="link"><img id="checkCode"
										alt="验证码" src="image.jsp"></a>
								</div>
								<div class="resultDiv"><span id="resultInfo" style="margin-left: 121px;color: #f10707;font-size:16px;"></span> </div>
								<div class="forget-pwd"><a href="#">忘记密码</a></div>
								<div class="item">
									<input id="login" class="btn_login" type="button" value="登陆" />
								</div>
								<div class="register-now"><a href="#">立即注册</a></div>
								
							</form>
						</div>
						
					</li> 	


            		<li class="more">
                		<a href="#" class="openTri_R marginR10" onmouseover="show('aa', 'show');" onmouseout="show('aa', 'hide');">了解更多</a>
                		<div style="display:none;" id="aa">
                    		<div class="pop_column">
                        		<a class="aboutus" href="aboutus.jsp">关于我们</a>
                        	</div>
                        	<div>
                        		<a class="contactus" href="contactus.jsp">联系我们</a>
                    		</div>
                		</div>
            		</li>
        		</ul> 
    		</div>	
		</div>



		<div class="jie">
			<h1>有些时光总想留着慢慢品味</h1>
		</div>

		<div class="middle-bar">
			<div class="one">
			</div>
			<div class="two">
			</div>
			<div class="three">
			</div>
		</div>
		

		<div class="last-bar">
			<div>
				<span class="foot_T">关注我们</span>
        		<ul class="see_ul">
           			<li><a href="#ongo" class="icon_wx indexdialogpic" name="focusus"></a></li>
            		<li><a href="http://weibo.com/" target="_blank" class="icon_wb"></a></li>
        		</ul>	
			</div>
							
        	<ul class="foot_ul">
            <li>
                <span class="guide_T">我们</span>
                <a href="aboutus.jsp" target="_blank">关于我们</a>
                <a href="joinus.jsp" target="_blank">加入我们</a>
                <a href="contactus.jsp" target="_blank">联系我们</a>
            </li>
            <li>
                <span class="guide_T">网站帮助</span>
                <a href="help.jsp" target="_blank" >帮助中心</a>
            </li>
            <li class="width_280">
                <span class="guide_T">网站协议</span><br/>
                <a href="service.jsp" target="_blank">服务协议</a> 
                <a href="privacy.jsp" target="_blank">隐私保护</a>
                <a href="copyright.jsp" target="_blank">版权声明</a>
                <a href="disclaimer.jsp" target="_blank">免责声明</a>
                <a href="intellectualProperty.jsp" target="_blank">知识产权声明</a>
            </li>
            <li class="bigFont online_kf">
                <span class="logindialog"   ><i></i>在线客服</span>
                <p>客服电话  12345678</p>
                <a href="mailto:cxiaocha@163.com">客服邮箱  cxiaocha@163.com</a>
            </li>
        	</ul>
        
        	<dl class="link_dl">
            <dt>友情链接</dt>
            <dd>
                <a target="_blank" href="http://www.58pic.com/?tid=1088&b_scene_zt=1">千图网</a>
                <a target="_blank" href="http://huaban.com/">花瓣网</a>
            </dd>        
        	</dl>
		</div>


	</div>
	<!-- 遮罩层 -->
    <div class="cover"></div>
</body>
</html>
