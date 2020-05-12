<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>出错啦</title>
</head>
<body>
 	<h3>
  		<font style="margin-left:40%;color:red;">呀！不小心就出错啦！！</font>
 	</h3>
	<br />
 	<p style="margin-left:40%;">系统将在5s后返回初始界面</p>
	<%
		response.setHeader("Refresh", "5,URL=index.jsp") ;
	%>
</body>
</html>