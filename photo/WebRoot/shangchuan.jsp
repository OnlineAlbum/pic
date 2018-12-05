<%@ page language="java" contentType="text/html; charset=gb2312"%>
<jsp:directive.page import="com.tool.Encrypt"/>
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
            
            
        
    
    
		@font-face
        {
        	font-family:"iconfont";
        	src:url("Icon/font_951450_l45nyv3gvbg/iconfont.eot");
        	src:url("Icon/font_951450_l45nyv3gvbg/iconfont.eot?#iefix") format("embedded-opentype"),
        	url("Icon/font_951450_l45nyv3gvbg/iconfont.woff") format("woff"),
        	url("Icon/font_951450_l45nyv3gvbg/iconfont.ttf") format("truetype"),
        	url("Icon/font_951450_l45nyv3gvbg/iconfont.svg") format("svg");
        	font-weight:normal;
        	font-style:normal;

        }


        .iconfont{
        	font-family:"iconfont";
        	font-style:normal;
        	font-weight:normal;
        	-webkit-font-smoothing:antialiased;
        	-moz-osx-font-smoothing:grayscale;
        }
    
    
        
        

    </style>
</head>
<body style="background:url(img/lvye1.png);background-repeat:no-repeat;background-size:cover;">
	<table width=80% border="0" style="font-size:20px;font-family:�朵功;"align="center">
     	<tr>
     		<td style="width: 617px; height: 260px; ">
     			<table width=80% align="center">
     				<tr align="center"><td height="51"><table width="287" height="33" border="0" align="center" cellpadding="0" cellspacing="0">
         				<tr>
           					<th width="287" height="23" align="center" valign="bottom"><h2>涓�浼��剧��</h2></th>
        				 </tr>
       					</table></td></tr>
     				<tr align="center">
     					<td align="center" style="width: 317px; height: 287px; ">
     					<form action="photoServlet?info=userUploadPhoto" method="post" enctype="multipart/form-data" name="form" onSubmit="return checkPhoto(form)">
     						<table width=90% align="center">
     							<tr>&nbsp;</tr>
     							<tr width=100%>
     								<td width=50% align="right">�哥����瀛�:&nbsp;</td>
     								<td width=50% align="left"><input type="text" name="photoName" size="30" placeholder="璇疯��ョ�稿����瀛�"></td>
     							</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr width=50%>
     								
     								<td width=50% align="right">�稿��绫诲��:&nbsp;</td>
     								<td width=50% align="left">
     								<select name="photoType" size="1">
     									<option selected>绔ュ勾�拌��</option>
     									<option value="��骞磋�姝�">��骞磋�姝�</option>
     									<option value="涓�骞村ぇ��">涓�骞村ぇ��</option>
     									<option value="����绂�浜�">����绂�浜�</option>
     									<option value="����瀹朵汉">����瀹朵汉</option>
     									<option value="��������">��������</option>
     									<option value="�瑰����瑕�">�瑰����瑕�</option>
     									<option value="��娲荤�ㄥ��">��娲荤�ㄥ��</option>
									    <option value="�����辨��">�����辨��</option>
									    <option value="浜蹭翰瀹�璐�">浜蹭翰瀹�璐�</option>
									    <option value="�ㄦ极�￠��">�ㄦ极�￠��</option>
									    <option value="娓告���炬�">娓告���炬�</option>
									    <option value="��绗�璐村��">��绗�璐村��</option>
									    <option value="瀹��╃簿��">瀹��╃簿��</option>
									    <option value="缇��充匠��">缇��充匠��</option>	
									    <option value="�辫������">�辫������</option>
									    <option value="澶╀�濂�瑙�">澶╀�濂�瑙�</option>
									    <option value="浜��卞����">浜��卞����</option>
									    <option value="澹�涓藉北娌�">澹�涓藉北娌�</option>
									    <option value="��甯�椋���">��甯�椋���</option>
									    <option value="�����よ抗">�����よ抗</option>
									    <option value="瀹ゅ����瑙�">瀹ゅ����瑙�</option>
									    <option value="��瀛ｅ�拌薄">��瀛ｅ�拌薄</option>
									    <option value="娓�椋�杞�褰�">娓�椋�杞�褰�</option>
     								</select>
     								</td>
     							</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr width=100%>
     								<td width=50% align ="right"><b>涓�浼��堕�达�</b></td>
           							<td><%=Encrypt.currentlyTime()%><input name="photoTime" type="hidden" value="<%=Encrypt.currentlyTime() %>"></td>
     							</tr>   
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
           	 					<tr width=100%>
            						<td width=50% align="right">�哥��浣�缃�:&nbsp;</td>
            						<td id="more"><input name="file" type="file" maxlength="20"><input type="button" name="more.." value="澧���..." onClick="addMore()"></td>
            					</tr>
            					<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
            					<tr width=100%>
							       <td width=50% align="right">涓�浼��ㄦ�凤�</td>
							       <td><!--${sessionScope.userInfo.username}-->zc<input name="username" type="hidden" value=zc class="input2"></td>
							    </tr>
            					<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
            					<tr width=100%>
            						<td width=50% align="right">楠�璇���:&nbsp;</td>
            						<td width=50% align="left"><input type="text" name="code" size="10">&nbsp;<input type="button" value="��涓�娓�" onClick="reload()"></td>
            					</tr>
            					<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>
						           <td height="20">&nbsp;</td>
						           <td><a href="javascript:void(0)" id="link"><img id="checkCode"
										alt="楠�璇���" src="image.jsp"></a></td>
						        </tr>
            					<tr>
            						<td></td>
            						<td></td>
            					</tr>
            					<tr width=100%>
            						<td width=50%></td>
            						<td width=50% align="left"><input type="submit" name="Submit" value="涓�浼�">&nbsp;<input type="reset" name="Submit2" value="��缃�">&nbsp;<input type="button" name="Submit3" value="杩���" onClick="javascript:window.location.href='photoServlet?info=userQueryPhoto';"></td>
            					</tr>    
            					</form> 
            					 <tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
            					<tr>
            						
            						<td colspan = 2 align="center" style="padding-left:89px;">&nbsp;&nbsp;&nbsp;&nbsp;<b>娉ㄦ��:�剧�����煎����芥��JPG��PNG��GIF��BNP绛��剧���煎�</b><br><br>
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