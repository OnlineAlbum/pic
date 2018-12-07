<%@page language="java" import="java.util.*,com.form.*,com.tool.*" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
a{text-decoration:none;}
a:link, a:visited{color:#F0F0F0}
a:hover,a:active{color:#F9D909}

.search{
	width:700px;
}
#search{
	width:400px;
	height:30px;
	font-size:70%;
  	background-color:#FBFFFD;
  	opacity:0.6;
}

 input::-webkit-input-placeholder {
 9         
10         color:#aab2bd;
11      
12         font-size:8px;
13        
14         text-align:left;
15     }

.search input{vertical-align:middle;}

</style>
</head>
<body style="background:url(img/water.jpg);background-position:center center;background-size:cover;font-size:30px;text-align=center;">
<bgsound src="music/Feng.mp3" loop="-1">
<center>
  <table width=100% height=600px border=0>
  
  <tr><td width=100% height=50px bgcolor=#08C9DB colspan=7><font style="font-family:Forte;font-size:30px;color:#0C0101;text-align=left;"><b>Doctor Chen's Personal Album</b></font></td></tr> 
  
   
  <tr width=100% align=center>
  <td width=100% colspan=10>
  <table width=100% border=0 align=center>
  <tr align=center>
  <td width=20% height=20px style="font-family:华文隶书;text-align=center;font-size:30px;"><font style="color:#FFF000;"><b>欢迎你！${sessionScope.userInfo.username} 用户</b></font> </td>
  <td width=6% height=20px style="font-family:华文隶书;text-align=center;font-size:18px;"> </td>
  <td width=6% height=20px style="font-family:华文隶书;text-align=center;font-size:30px;"></td>
  <td width=6% height=20px style="font-family:华文隶书;text-align=center;font-size:18px;">  </td>
  <td width=16% height=20px></td>
  <td width=16% height=20px></td>
  <td width=16% height=20px></td>
  <td width=6% height=20px style="font-family:华文隶书;text-align=center;font-size:30px;"><a href="zuizhong.jsp"><font style="color:#FFF000;"><b>退出</b></font></a></td>
  <td width=6% height=20px style="font-family:华文隶书;text-align=center;font-size:18px;"> </td>
  </tr>
  </table>
  </td>
  </tr>
  
  <tr><td width=100% height=800px colspan=10>
  <table width=100% border=0 >
  
  <tr><td colspan=4><table width=100% align="center">
  <tr >
  <td width=350px></td>
  <td width=100% height=80px style="display: inline-block;" align="center" >
  <div class="search">
  <form>
  <input type="text" id="search" name="search" size="20" placeholder="请输入关键字搜索你想要的相册" autofocus="autofocus" x-webkit-speech/>&nbsp;<input type="image" src="img/sousuo2.png" style="width:25px;height:28px;"/>
  </form>
  </div>
  </td></tr>
  </table></td></tr>
  
  <tr align=center>
  
  <td width=430px height=220px style="font-family:隶书;font-size:20px;">
  <div class="newalbum" style="width: 245px; height: 280px; ">
  <!-- 链接触发模态框 -->
  <a class="a-primary" data-toggle="modal" data-target="#myModal"><img style="width:216px;height:200px;margin:10px,15px,10px,10px;border:0;" src="img/newphotos.jpg"></a><br/>
  <!-- 模态框（Modal） -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h4 class="modal-title" id="myModalLabel">新建相册</h4>
			</div>
			<div class="modal-body">
				<table width=90% border="0" style="font-size:20px;font-family:隶书;"align="center">
     			<tr>
     				<td style="width: 617px; height: 260px; ">
     				<table width=100% align="center">
     					<tr align="center">
     					<td align="center" style="width: 317px; height: 287px; ">
     					<form action="photoServlet?info=createalbum" method="post" name="form" onSubmit="return checkAlbum(form)">
     						<table width=90% align="left">
     							<tr>&nbsp;</tr>
     							<tr width=100%>
     								<td width=50% align="right">相册名字:&nbsp;</td>
     								<td width=50% align="left"><input type="text" id="albumname" name="albumname" size="20" placeholder="请输入相册名字"></td>
     							</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr width=50%>
     								
     								<td width=50% align="right">相册类型:&nbsp;</td>
     								<td width=50% align="left">
     								<select id="albumtype" name="albumtype" size="1">
     									<option selected>童年印记</option>
     									<option value="青年踏歌">青年踏歌</option>
     									<option value="中年大智">中年大智</option>
     									<option value="耄耋福享">耄耋福享</option>
     									<option value="我的家人">我的家人</option>
     									<option value="我的朋友">我的朋友</option>
     									<option value="特别重要">特别重要</option>
     									<option value="生活用品">生活用品</option>
									    <option value="甜蜜爱情">甜蜜爱情</option>
									    <option value="亲亲宝贝">亲亲宝贝</option>
									    <option value="动漫卡通">动漫卡通</option>
									    <option value="游戏图案">游戏图案</option>
									    <option value="搞笑贴图">搞笑贴图</option>
									    <option value="宠物精灵">宠物精灵</option>
									    <option value="美味佳肴">美味佳肴</option>	
									    <option value="花草园林">花草园林</option>
									    <option value="天下奇观">天下奇观</option>
									    <option value="五花八门">五花八门</option>
									    <option value="壮丽山河">壮丽山河</option>
									    <option value="城市风光">城市风光</option>
									    <option value="名胜古迹">名胜古迹</option>
									    <option value="室内景观">室内景观</option>
									    <option value="四季印象">四季印象</option>
									    <option value="清风车影">清风车影</option>
     								</select>
     								</td>
     							</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr width=100%>
     								<td width=50% align ="right"><b>创建时间：</b></td>
           							<td><%=Encrypt.currentlyTime()%><input id="albumtime" name="albumtime" type="hidden" value="<%=Encrypt.currentlyTime() %>"></td>
     							</tr>   
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
            					<tr width=100%>
							       <td width=50% align="right">创建用户：</td>
							       <td>${sessionScope.userInfo.username}<input id="username" name="username" type="hidden" value=${sessionScope.userInfo.username} class="input2"></td>
							    </tr>
            					<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
            					<tr width=100%>
            						<td width=50% align="right">验证码:&nbsp;</td>
            						<td width=50% align="left"><input type="text" id="code" name="code" size="10">&nbsp;<input type="button" value="看不清" onClick="reload()"></td>
            					</tr>
            					<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr>
						           <td height="20">&nbsp;</td>
						           <td style="padding-left:35px;"><a href="javascript:void(0)" id="link"><img id="checkCode"
										alt="验证码" src="image.jsp"></a></td>
						        </tr>
            					<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
            					<tr width=100%>
            						<td width=50%></td>
            						<td width=50% align="left"><input type="submit" name="Submit" value="创建">&nbsp;&nbsp;&nbsp;<input type="reset" name="Submit2" value="重置"></td>
            					</tr>    
            					</form> 
            					 <tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>
     							<tr height="2px">&nbsp;&nbsp;</tr>           			      					
					           					
        					</table>
        
     					</td>
  					</tr>
  				</table>
  			</td>
  		</tr>
  	</table>
			</div>
			<div class="modal-footer">
				<div align="center"><b>注意:不支持重复创建相同的相册</b>
				<br><br>
				<font color="FF0000"><b>${requestScope.information}</b></font>
				</div>
			</div>
			</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
  <a href="http://www.baidu.com">新建相册</a>
  </div>
  </td>
  <%
  	List<album> list1=(List<album>)request.getSession().getAttribute("list");
  	
  	int b = 1 ;
  	for(album album1:list1){
   %>
  <td width=430px height=220px style="font-family:隶书;font-size:20px;">
  <div class="smallphoto">
    <div class="small" style="width: 245px; height: 280px; ">
      <img style="width:216px;height:200px;margin:10px,15px,10px,10px; border:0;border-radius:25px;" src="<%=album1.getAlbumcover()%>">
      <div class="caption" style="display: none">
        <h3 style="margin-top:0px;margin-bottom:5px;"><a href="http://www.baidu.com"><%=album1.getAlbumname() %></a></h3>
        <p><a href="show.jsp" class="btn btn-primary" role="button">进入该相册</a> <a href="photoServlet?info=userDeleteAlbum&id=<%=album1.getId() %>" class="btn btn-danger" role="button">删除该相册</a></p>
      </div>
    </div>
  </div>
  
  </td>
  <%
  	b++;
  	if(b%4==0){
   %>
   </tr>
   <tr><td width=430px height=50px></td></tr>
   	 <tr align=center>
  <%
  	}
  	}
   %>
  </table>  
  </td></tr>
  
  
   <tr style="font-family:黑体;font-size:20px;text-align:center;color:#F2FCFB; font-weight:bold;text-align:center;">
      <td colspan=10>
      <table width=100%>
      
        <%!
        int visitcount=0;
        synchronized void add(){
        	visitcount++;
    	  }
       %>
       <%add();%>
       <tr><td width=100% height=12px align=center colspan=6>当前访问次数:<%=visitcount%></td></tr>
       


      <tr><td align=center>
      <br/>Copyright ? 2003-2014,版权所有JSPaliance.COM<br/><br/>
                     网络文化经营许可证 :网文[2012]0123-002号<br/><br/>
                     客服电话:020-12345678<br/><br/>
                     如有意见或建议，请<a href="user="userSuggestion.jsp">留言</a>或发送 <a href="mailto:mallservice@microsoft.com?subject=Hello%20again">邮件</a><br/><br/>
                     技术支持:JSP联盟<br/><br/>
      </td></tr>             
                                    
       </table>
       </td></tr>
  
  
 </table>

</center>

</body>
<script type="text/javascript" src="js/zuijs.js"></script>
<script>
$(function() {
    $('#myModal').on('hide.bs.modal',
    function() {
        $(this).removeData('bs.modal');
        document.getElementById("albumtype")[0].selected="童年印记";
        reload();
    })
    $('.small').hover(function(){
    	$(this).find('.caption').show(100);
    	
    },function(){
    	$(this).find(".caption").hide(100);
    	
    });
});

</script>
</html>