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
        
        

    </style>
    
</head>
<body style="background:url(img/lvye1.png);background-repeat:no-repeat;background-size:cover;">
	<table width=80% border="0" style="font-size:20px;font-family:����;"align="center">
     	<tr>
     		<td style="width: 617px; height: 260px; ">
     			<table width=80% align="center">
     				<tr align="center"><td height="51">
     					<table width="287" height="33" border="0" align="center" cellpadding="0" cellspacing="0">
         				<tr>
           					<th width="287" height="23" align="center" valign="bottom"><h2>�ϴ�ͼƬ</h2></th>
        				 </tr>
       					</table></td></tr>
     				<tr align="center">
     					<td align="center" style="width: 317px; height: 287px; ">
     					<form action="photoServlet?info=userUploadPhoto" method="post" enctype="multipart/form-data" name="form" onSubmit="return checkPhoto(form)">
     						<table width=90% align="center">
     							<tr>&nbsp;</tr>
     							<tr width=100%>
     								<td width=50% align="right">��Ƭ����:&nbsp;</td>
     								<td width=50% align="left"><input type="text" name="photoName" size="30" placeholder="�������������"></td>
     							</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr width=100%>
							       <td width=50% align="right">�������</td>
							       <td><!--${sessionScope.albumname}-->ͯ��ӡ��<input name="albumname" type="hidden" value="ͯ��ӡ��" class="input2"></td>
							    </tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr width=100%>
     								<td width=50% align ="right"><b>�ϴ�ʱ�䣺</b></td>
           							<td><%=Encrypt.currentlyTime()%><input name="photoTime" type="hidden" value="<%=Encrypt.currentlyTime() %>"></td>
     							</tr>   
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
           	 					<tr width=100%>
            						<td width=50% align="right">��Ƭλ��:&nbsp;</td>
            						<td id="more"><input name="file" type="file" maxlength="20"><input type="button" name="more.." value="����..." onClick="addMore()"></td>
            					</tr>
            					<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
            					<tr width=100%>
							       <td width=50% align="right">�ϴ��û���</td>
							       <td>${sessionScope.userInfo.username}<input name="username" type="hidden" value= ${sessionScope.userInfo.username} class="input2"></td>
							       
							    </tr>
            					<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr width=100%>
            						<td width=50% align="right">��Ƭ˵��:</td>
            						<td width=50% align="left"><textarea name="photoNote" rows="4" cols="30" style="resize:none" ></textarea></td>
            					</tr>
            					<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
            					<tr width=100%>
            						<td width=50% align="right">��֤��:&nbsp;</td>
            						<td width=50% align="left"><input type="text" name="code" size="10">&nbsp;<input type="button" value="������" onClick="reload()"></td>
            					</tr>
            					<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>
						           <td height="20">&nbsp;</td>
						           <td><a href="javascript:void(0)" id="link"><img id="checkCode"
										alt="��֤��" src="image.jsp"></a></td>
						        </tr>
            					<tr>
            						<td></td>
            						<td></td>
            					</tr>
            					<tr width=100%>
            						<td width=50%></td>
            						<td width=50% align="left"><input type="submit" name="Submit" value="�ϴ�">&nbsp;<input type="reset" name="Submit2" value="����">&nbsp;<input type="button" name="Submit3" value="����" onClick="javascript:window.location.href='photoServlet?info=userQueryPhoto';"></td>
            					</tr>    
            					</form> 
            					 <tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
     							<tr>&nbsp;&nbsp;</tr>
            					<tr>
            						
            						<td colspan = 2 align="center" style="padding-left:89px;">&nbsp;&nbsp;&nbsp;&nbsp;<b>ע��:ͼƬ�ĸ�ʽֻ����JPG��PNG��GIF��BNP��ͼƬ��ʽ</b><br><br>
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
<script type="text/javascript">
    function addMore(){
    var i=0;
    var td = document.getElementById("more");
    var br= document.createElement("br");
    var input= document.createElement("input");
    var button= document.createElement("input");
    
    input.type = "file";
    input.name = "file"+i;
    
    button.type = "button";
    button.value = "�Ƴ�...";
    
    
    button.onclick = function(){
      td.removeChild(br);
      td.removeChild(input);
      td.removeChild(button);
    }
   
    td.appendChild(br);
    td.appendChild(input);
    td.appendChild(button);
    }
</script>
</html>