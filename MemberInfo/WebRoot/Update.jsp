<%@ page language="java"
	import="java.util.*,com.*,java.text.*,java.sql.Date"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	        + request.getServerName() + ":" + request.getServerPort()
	        + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>保存修改</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<?php header("Pragma: no-cache"); ?>

</head>

<body>
	<%	
			MemberInfo memberInfo = new MemberInfo();
			memberInfo.setPasswordMember(request.getParameter("passwordMember"));
			memberInfo.setName(request.getParameter("name"));
			memberInfo.setMobilePhone(request.getParameter("mobilePhone"));
			memberInfo.setTelephone(request.getParameter("telephone"));
			memberInfo.setEmail(request.getParameter("email"));
			memberInfo.setQQNumber(request.getParameter("qqNumber"));
			memberInfo.setZipCode(request.getParameter("zipCode"));
			memberInfo.setAddress(request.getParameter("address"));
			memberInfo.setOccupation(request.getParameter("occupation"));
			memberInfo.setIncome(request.getParameter("income"));
			memberInfo.setRankMember(request.getParameter("rankMember"));
			memberInfo.setCurrentScore(Integer.valueOf(request.getParameter("currentScore")));
			memberInfo.setBalanceAccount(request.getParameter("balanceAccount"));
		    memberInfo.setIsFreezed(Boolean.valueOf(request.getParameter("isFreezed")));
			memberInfo.setRemark(request.getParameter("remark"));
			MySQL.update(memberInfo);	
	%>
	<jsp:forward page="ListAll.jsp" />
</body>
</html>
