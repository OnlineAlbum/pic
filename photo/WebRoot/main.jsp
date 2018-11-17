<%@page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
a{text-decoration:none;}
a:link, a:visited{color:#F0F0F0}
a:hover,a:active{color:#F9D909}

#search{
  background-color:#FBFFFD;
  opacity:0.6;
}

 input::-webkit-input-placeholder {
 9         
10         color:#aab2bd;
11      
12         font-size:12px;
13        
14         text-align:left;
15     }

.search input{vertical-align:middle;}

</style>
</head>
<body style="background-img:url(img/water.jpg);background-position:center center;background-size:cover;font-size:30px;text-align=center;">
<bgsound src="music/Feng.mp3" loop="-1">
<center>
  <table width=100% height=600px border=0>
  
  <tr><td width=100% height=50px bgcolor=#08C9DB colspan=7><font style="font-family:Forte;font-size:30px;color:#0C0101;text-align=left;"><b>Doctor Chen's Personal Album</b></font></td></tr> 
  
   
  <tr width=100% align=center>
  <td width=100% colspan=10>
  <table width=100% border=0 align=center>
  <tr align=center>
  <td width=6% height=20px style="font-family:华文隶书;text-align=center;font-size:16px;"><a href="personal home page.jsp">个人主页</a></td>
  <td width=6% height=20px style="font-family:华文隶书;text-align=center;font-size:18px;"><a href="personal home page.jsp">查看</a></td>
  <td width=6% height=20px style="font-family:华文隶书;text-align=center;font-size:18px;"><a href="personal home page.jsp">上传</a></td>
  <td width=6% height=20px style="font-family:华文隶书;text-align=center;font-size:18px;"><a href="personal home page.jsp">删除</a></td>
  <td width=16% height=20px></td>
  <td width=16% height=20px></td>
  <td width=16% height=20px></td>
  <td width=16% height=20px></td>
  <td width=6% height=20px style="font-family:华文隶书;text-align=center;font-size:18px;"><a href="personal home page.jsp">退出</a></td>
  <td width=6% height=20px style="font-family:华文隶书;text-align=center;font-size:18px;"><a href="personal home page.jsp">主题</a></td>
  </tr>
  </table>
  </td>
  </tr>
  
  <tr><td width=100% height=800px colspan=10>
  <table width=100% border=0>
  
  <tr><td colspan=4><table width=100% align=center>
  <tr align=center><td width=100% height=80px align=center style="display: inline-block; vertical-align:middle;" ><div class="search"><form><input type="text" id="search" name="search" size="100" placeholder="请输入关键字搜索你想要的图片" autofocus="autofocus" x-webkit-speech>&nbsp;<input type="img" src="img/sousuo2.png"></form></div></td></tr>
  </table></td></tr>
  
  <tr align=center>
  
  <td width=430px height=220px style="font-family:隶书;font-size:20px;">
  <a href="http://www.baidu.com"><img style="width=300px;height:200px;margin:10px,15px,10px,10px;border:0;" src="img/newphotos.jpg"></a><br/>
  <a href="http://www.baidu.com">新建相册</a>
  </td>
  
  <td width=430px height=220px style="font-family:隶书;font-size:20px;">
  <a href="http://www.baidu.com"><img style="width=300px;height:200px;margin=10px,15px,10px,10px;border:0;" src="img/childhood.png"></a><br/>
  <a href="http://www.baidu.com">童年印记</a>
  </td>
  
  <td width=430px height=220px style="font-family:隶书;font-size:20px;">
  <a href="http://www.baidu.com"><img style="width=300px;height:200px;margin=10px,15px,10px,10px;border:0;" src="img/teenager.png"></a><br/>
  <a href="http://www.baidu.com">青年踏歌</a>
  </td>
  
  <td width=430px height=220px style="font-family:隶书;font-size:20px;">
  <a href="http://www.baidu.com"><img style="width=300px;height:200px;margin=10px,15px,10px,10px;border:0;" src="img/man.png"></a><br/>
  <a href="http://www.baidu.com">中年大智</a>
  </td>
  
  </tr>
  
<tr><td width=430px height=50px></td></tr>
  
  <tr align=center>
  
  <td width=430px height=220px style="font-family:隶书;font-size:20px;">
  <a href="http://www.baidu.com"><img style="width=300px;height:200px;margin:10px,15px,10px,10px;border:0;" src="img/oldtime.png"></a><br/>
  <a href="http://www.baidu.com">耄耋福享</a>
  </td>
  
  <td width=430px height=220px style="font-family:隶书;font-size:20px;">
  <a href="http://www.baidu.com"><img style="width=300px;height:200px;margin=10px,15px,10px,10px;border:0;" src="img/family.png"></a><br/>
  <a href="http://www.baidu.com">我的家人</a>
  </td>
  
  <td width=430px height=220px style="font-family:隶书;font-size:20px;">
  <a href="http://www.baidu.com"><img style="width=300px;height:200px;margin=10px,15px,10px,10px;border:0;" src="img/friends.png"></a><br/>
  <a href="http://www.baidu.com">我的朋友</a>
  </td>
  
  <td width=430px height=220px style="font-family:隶书;font-size:20px;">
  <a href="http://www.baidu.com"><img style="width=300px;height:200px;margin=10px,15px,10px,10px;border:0;" src="img/important.png"></a><br/>
  <a href="http://www.baidu.com">特别重要</a>
  </td>
  
  </tr>
 
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
</html>