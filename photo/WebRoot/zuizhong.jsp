<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="renderer" content="webkit">
	<meta name="keywords" content="相册,网络相册,制作相册,LC"/>
	<meta name="description" content="LC网络相册可以制作属于自己的相册，留住那些难忘的时光、美丽的风景，传播快乐与美，分享快乐与美。" />
	<title>网络相册</title>
	<meta content="no-transform " http-equiv="Cache-Control" />
	<link rel="stylesheet" type="text/css" href="css/maincss.css">
	
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>


<body>

	<div>


		<div class="head-bar"><!--这里为网页的上大部分-->
		
			<div class="head_bar_con">
        		<a href="zuizhong.jsp" class="logo_index">LC</a>
        		<span class="miaosu">制作属于自己的相册</span>
        		<ul class="gongneng">
            		<li>
                		<a href="regist.jsp">注册</a>						
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
								<div class="item2">
									<input class="input-username" type="text"  name="username" placeholder="手机/邮箱/用户名" value=""
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
								<div class="register-now"><a href="regist.jsp">立即注册</a></div>
								
							</form>
						</div>
            		</li> 	

                    <li role="presentation" class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                            了解更多 <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="aboutus.jsp">关于我们</a></li>
                            <li><a href="contactus.jsp">联系我们</a></li>
                        </ul>
                    </li>
        		</ul> 
    		</div>	
    		
 
 
 		
    		<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">
    			
    		<!-- 轮播（Carousel）指标 -->
    		<ol class="carousel-indicators">
        		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        		<li data-target="#myCarousel" data-slide-to="1"></li>
        		<li data-target="#myCarousel" data-slide-to="2"></li>
        		<li data-target="#myCarousel" data-slide-to="3"></li>
    		</ol>   
    		<!-- 轮播（Carousel）项目 -->
    		<div class="carousel-inner">
        		<div style="height:450px;background-image:url(img/main6.jpg);" class="item active">
          
        		</div>
        		<div style="height:450px;background-image:url(img/flower.jpeg);" class="item">
           		<!-- <img class="img-responsive" src="img/main6.jpg" alt="Second slide"> -->
        		</div>
        		<div style="height:450px;background-image:url(img/life.jpg);" class="item">
          		<!--  <img class="img-responsive" src="img/memory1.jpg" alt="Third slide">-->
        		</div>
        		<div style="height:450px;background-image:url(img/city.jpeg);" class="item active">
          		<!--   <img class="img-responsive" src="img/green.jpg" alt="First slide"> --> 
        		</div>
    		</div>
    		<!-- 轮播（Carousel）导航 -->
        	<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            	<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            	<span class="sr-only">Previous</span>
        	</a>
        	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            	<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            	<span class="sr-only">Next</span>
        	</a>
    		<!-- 控制按钮 -->
    		<div style="text-align:center;">
        		<input class="btn start-slide">
    		</div>
		</div> 
	<script>
		$(function(){
        // 初始化轮播
        $(".start-slide").click(function(){
            $("#myCarousel").carousel('cycle');
        });
       
    });
	</script>
	
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
			<div class="last-bar-f">
				<span>关注我们</span>
                <ul class="see_ul">
           			<li><a href="#ongo"><img src="img/qq.png" width="30px" height="30px"></a></li>
            		<li><a href="#ongo"><img src="img/wechat.png" width="30px" height="30px"></a></li>
        		</ul>	
			</div>
			<div class="last-bar-s">			
        	<ul class="foot_ul">
            <li>
                <span class="guide_T">了解我们</span>
                <p>
                <a href="aboutus.jsp" target="_blank">关于我们</a><br/>            
                <a href="contactus.jsp" target="_blank">意见或建议</a>
            </p>
            </li>
            <li>
                <span class="guide_T">网站帮助</span>
                <p>
                <a href="help.jsp" target="_blank" >帮助中心</a>
            </p>
            </li>
            <li class="width_280">
                <span class="guide_T">网站协议</span><br/>
                <p>
                <a href="privacy.jsp" target="_blank">隐私保护</a><br/>
                <a href="copyright.jsp" target="_blank">版权声明</a><br/>
                
            </p>
            </li>
            <li class="bigFont online_kf">
                <span class="guide_T"   >在线客服</span>
                <p>客服电话: 12345678</p>
                <a href="mailto:cxiaocha@163.com">客服邮箱  cxiaocha@163.com</a>
            </li>
        	
           
        
        	<li class="link_dl">
            <span class="guide_T">友情链接</span>
            <p>
                <a target="_blank" href="http://www.58pic.com/?tid=1088&b_scene_zt=1">千图网</a></br>
                <a target="_blank" href="http://huaban.com/">花瓣网</a>
            </p>
        </li>
            </ul>
            </div>
		</div>


	</div>
	</div>
	<!-- 遮罩层 -->
    <div class="cover"></div>
</body>
<script type="text/javascript" src="js/zuijs.js"></script>
</html>

