<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="xuexijiluhsgb" scope="page" class="com.bean.XuexijiluBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=xuexijilu.xls");
%>
<html>
  <head>
    <title>ѧϰ��¼</title>
  </head>

  <body >
 <%
			String sql="select * from xuexijilu  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td align='center'>�׶�</td>    <td align='center'>�꼶</td>    <td align='center'>��Ŀ</td>    <td align='center'>��Ƶ����</td>    <td align='center'>ѧϰʱ��</td>    <td align='center'>ѧϰ����</td>    <td align='center'>ѧϰ��</td>    
	
    <td width="120" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
  </tr>
   <%		
				List pagelist3=xuexijiluhsgb.getAllXuexijilu(9);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.jieduan}</td>    <td>${u.nianji}</td>    <td>${u.kemu}</td>    <td>${u.shipinmingcheng}</td>    <td>${u.xuexishichang}</td>    <td>${u.xuexijindu}</td>    <td>${u.xuexiren}</td>    
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

