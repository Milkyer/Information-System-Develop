<%@ page language="java" import="java.util.*,com.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'Search.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


</head>

<body>
	<%
		String memberId = request.getParameter("memberId");
		MemberInfo memberInfo = MySQL.search(memberId);
	%>
	<h4>查询结果：</h4>
	<div style="position:absolute;width:776px">
		<table border="2" bordercolor="Black" bgcolor="lightgrey" style="border-collapse:collapse;">
			<tr>
				   <th>会员名 </th>
					<th>密码 </th>
					<th>姓名 </th>
					<th>手机号码 </th>
					<th>固定电话</th>
					<th>电子邮件</th>
					<th>QQ 号码 </th>
					<th>邮编</th>
					<th>详细地址</th>
					<th>职业 </th>
					<th>收入水平 </th>
					<th>会员级别 </th>
					<th>积分 </th>
					<th>电子帐号余额 </th>
					<th>是否冻结  </th>
					<th>备注 </th>
				<th colspan="2">信息操作</th>
			</tr>
			<tr>
				<td><%=memberInfo.getMemberId()%></td>
				<td><%=memberInfo.getPasswordMember()%></td>
				<td><%=memberInfo.getName()%></td>
				<td><%=memberInfo.getMobilePhone()%></td>
				<td><%=memberInfo.getTelephone()%></td>
				<td><%=memberInfo.getEmail()%></td>
				<td><%=memberInfo.getQQNumber()%></td>
				<td><%=memberInfo.getZipCode()%></td>
				<td><%=memberInfo.getAddress()%></td>
				<td><%=memberInfo.getOccupation()%></td>
				<td><%=memberInfo.getIncome()%></td>
				<td><%=memberInfo.getRankMember()%></td>
				<td><%=memberInfo.getCurrentScore()%></td>
				<td><%=memberInfo.getBalanceAccount()%></td>
				<td><%=memberInfo.getIsFreezed()%></td>
				<td><%=memberInfo.getRemark()%></td>
				<td><a
					href="http://<%=request.getServerName()%>:8080/MemberInfo/ListOne.jsp?memberId=
					<%=memberId%>"
					style="text-decoration:none">修改</a></td>
				<td><a
					href="http://<%=request.getServerName()%>:8080/MemberInfo/Delete.jsp?memberId=
					<%=memberId%>"
					style="text-decoration:none">删除</a></td>
			</tr>
		</table>
	</div>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
</body>
</html>
