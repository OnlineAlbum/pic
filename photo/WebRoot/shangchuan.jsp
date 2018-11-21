<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
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
     		<td>
     			<table width=80% align="center">
     				<tr align="center"><td align="center"><h2>上传照片</h2></td></th>
     				<tr align="center">
     					<td align="center">
     						<table width=80% align="center"><form name="" action="showuserinfo.jsp" method="post">
     							<tr width=100%>
     								<td width=50% align="right">相册名字:&nbsp;</td>
     								<td width=50% align="left"><input type="text" name="albumname" size="30" placeholder="请输入相册名字"></td>
     							</tr>
     							<tr width=50%>
     								<td width=50% align="right">相册类型:&nbsp;</td>
     								<td width=50% align="left">
     								<select name="albumtype" size="1">
     									<option selected>童年印记</option>
     									<option>青年踏歌</option>
     									<option>中年大智</option>
     									<option>耄耋福享</option>
     									<option>我的家人</option>
     									<option>我的朋友</option>
     									<option>特别重要</option>
     								</select>
     								</td>
     							</tr>
     							<tr width=100%>
     								<td width=50% align="right">上传时间:&nbsp;</td>
     								<td width=50% align="left">
     								<select name="selectyear" size="1">
     								<%
                                    
     								for(int i=2017;i<2028;i++){

     								%>
                    				<option><%=i%></option>
                					<%
     								}
     								%>
     		       					</select>
     		       					年<select name="selectmonth" size="1">
     		       					<%
     								for(int i=1;i<13;i++){
     								%>
                    				<option><%=i%></option>
                					<%
     								}
     								%>
     		       					</select>

               						 月<select name="selectday" size="1">
     		       					<%
     								for(int i=1;i<32;i++){
     								%>
                    				<option><%=i%></option>
                					<%
     								}
     								%>
     		       					</select>日
     		    					</td>
     							</tr>   
           	 					<tr width=100%>
            						<td width=50% align="right">相片位置:&nbsp;</td>
            						<td width=5% align="left"><input type="text" placeholder="请输入待上传照片位置">&nbsp;<input type="button" value="从电脑中选择"></td>
            					</tr>
            					<tr width=100%>
            						<td width=50% align="right">验证码:&nbsp;</td>
            						<td width=50% align="left"><input type="text" name="yanzhengma" size="10">&nbsp;<input type="button" value="看不清"></td>
            					</tr>
            					<tr>
            						<td></td>
            						<td></td>
            					</tr>
            					<tr width=100%>
            						<td width=50%></td>
            						<td width=50% align="left"><input type="button" value="上传">&nbsp;<input type="button" value="重置">&nbsp;<input type="button" value="返回"></td>
            					</tr>     
            					 
            					<tr>
            						<td colspan="2" align="center">注意:图片的格式只能是JPG、PNG、GIF、BNP等图片格式</td>
            					</tr>
            					
					
            					
        					</table>
        
     					</td>
  					</tr>
  				</table>
  			</td>
  		</tr>
  	</table>

</body>
</html>