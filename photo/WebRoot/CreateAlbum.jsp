<%@ page language="java" import="java.util.*。com.tool.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'CreateAlbum.jsp' starting page</title>
    
	<style>
	 input::-webkit-input-placeholder {
          
        color:#aab2bd;
      
        font-size:12px;
        
        text-align:left;
    }
 

    input{
                
                vertical-align:middle;
            }
        
        

    </style>

  </head>
  
  <body style="background:url(img/lvye1.png);background-repeat:no-repeat;background-size:cover;">
	<table width=80% border="0" style="font-size:20px;font-family:隶书;"align="center">
     	<tr>
     		<td style="width: 617px; height: 260px; ">
     			<table width=80% align="center">
     				<tr align="center"><td height="51"><table width="287" height="33" border="0" align="center" cellpadding="0" cellspacing="0">
         				<tr>
           					<th width="287" height="23" align="center" valign="bottom"><h2>上传图片</h2></th>
        				 </tr>
       					</table></td></tr>
     				<tr align="center">
     					<td align="center" style="width: 317px; height: 287px; ">
     					<form action="photoServlet?info=userUploadPhoto" method="post" enctype="multipart/form-data" name="form" onSubmit="return checkPhoto(form)">
     						<table width=90% align="center">
     							<tr>&nbsp;</tr>
     							<tr width=100%>
     								<td width=50% align="right">相册名字:&nbsp;</td>
     								<td width=50% align="left"><input type="text" name="photoName" size="30" placeholder="请输入相册名字"></td>
     							</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr width=50%>
     								
     								<td width=50% align="right">相册类型:&nbsp;</td>
     								<td width=50% align="left">
     								<select name="photoType" size="1">
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
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr width=100%>
     								<td width=50% align ="right"><b>上传时间：</b></td>
           							<td><%=Encrypt.currentlyTime()%><input name="photoTime" type="hidden" value="<%=Encrypt.currentlyTime() %>"></td>
     							</tr>   
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
           	 					<tr width=100%>
            						<td width=50% align="right">相片位置:&nbsp;</td>
            						<td id="more"><input name="file" type="file" maxlength="20"><input type="button" name="more.." value="增加..." onClick="addMore()"></td>
            					</tr>
            					<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
            					<tr width=100%>
							       <td width=50% align="right">上传用户：</td>
							       <td><!--${sessionScope.userInfo.username}-->zc<input name="username" type="hidden" value=zc class="input2"></td>
							    </tr>
            					<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
            					<tr width=100%>
            						<td width=50% align="right">验证码:&nbsp;</td>
            						<td width=50% align="left"><input type="text" name="code" size="10">&nbsp;<input type="button" value="看不清" onClick="reload()"></td>
            					</tr>
            					<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>
						           <td height="20">&nbsp;</td>
						           <td><a href="javascript:void(0)" id="link"><img id="checkCode"
										alt="验证码" src="image.jsp"></a></td>
						        </tr>
            					<tr>
            						<td></td>
            						<td></td>
            					</tr>
            					<tr width=100%>
            						<td width=50%></td>
            						<td width=50% align="left"><input type="submit" name="Submit" value="上传">&nbsp;<input type="reset" name="Submit2" value="重置">&nbsp;<input type="button" name="Submit3" value="返回" onClick="javascript:window.location.href='photoServlet?info=userQueryPhoto';"></td>
            					</tr>    
            					</form> 
            					 <tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
            					<tr>
            						
            						<td colspan = 2 align="center" style="padding-left:89px;">&nbsp;&nbsp;&nbsp;&nbsp;<b>注意:图片的格式只能是JPG、PNG、GIF、BNP等图片格式</b><br><br>
	 											<font color="FF0000"><b>${requestScope.information}</b></font></td>
            						
            					</tr>
            					
					
            					
        					</table>
        
     					</td>
  					</tr>
  				</table>
  			</td>
  		</tr>
  	</table>

</body>
<script type="text/javascript" src="js/zuijs.js"></script>
</html>
