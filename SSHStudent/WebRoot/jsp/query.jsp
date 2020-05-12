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
    
    <title>My JSP 'list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
    <center>
    <h1><font>查询结果</font></h1>
    <table border="1" width="80%" align="center">
    	<tr>
    		<th>银行卡号</th>
    		<th>操作类型</th>
    		<th>操作编号</th>
    		<th>操作金额</th>
    		<th>上次余额</th>
    		<th>账户金额</th>
    	</tr>

		<s:iterator id="s" value="std" var="ss">
			<tr>
				<td>${ss.xhao}</td>
				<td>${ss.xming}</td>
				<td>${ss.acno}</td>
				<td>${ss.xyuan}</td>
				<td>${ss.bji}</td>
				<td>${ss.zhye}</td>
				<td align="center">
	          		<s:a href="deleteAction.action?std.xhao=%{#ss.xhao}">删除</s:a>  
	          	</td>
	         	<td align="center">
	           		<s:a href="updatedAction.action?std.xhao=%{#ss.xhao}">修改</s:a>
	           	</td>  
			</tr>
		</s:iterator>
    </table>
    <br />
    <s:a href="listAction.action">返回</s:a>
    </center>
  </body>
</html>
