<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.*,java.sql.*,java.io.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'Add.jsp' starting page</title>
  </head>
  
  <body>
   <center>
   <h2>添加客户操作记录</h2>
     <s:form action="addAction">
	        <s:textfield name="std.xhao"  label="银行卡号"></s:textfield>
	        <s:textfield name="std.xming" label="操作类型"></s:textfield>  
	        <s:textfield name="std.acno" label="操作编号"></s:textfield>
	        <s:textfield name="std.xyuan" label="操作金额"></s:textfield>
	        <s:textfield name="std.bji" label="上次余额"></s:textfield>
	        <s:textfield name="std.zhye" label="账户金额"></s:textfield>
	        <s:submit lable="提交" value="提交"></s:submit>
	</s:form>
		<td><font color="red"><s:property value="state"/></font></td>
    
    </center>
    
  </body>
</html>
