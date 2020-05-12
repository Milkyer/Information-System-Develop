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

<title>修改会员信息</title>

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
	<h4>信息修改：</h4>
	<div style="position:absolute;">
		<form action="Update.jsp">
			<table border="2" bordercolor="Black" bgcolor="lightgrey"
				style="border-collapse:collapse;">
				<tr>
					<th>会员名</th>
					<th>密码</th>
					<th>姓名</th>
					<th>手机号码</th>
					<th>固定电话</th>
					<th>电子邮件</th>
					<th>QQ 号码</th>
					<th>邮编</th>
					<th>详细地址</th>
					<th>职业</th>
					<th>收入水平</th>
					<th>会员级别</th>
					<th>积分</th>
					<th>电子帐号余额</th>
					<th>是否冻结</th>
					<th>备注</th>
				</tr>
				<tr>
					<td><%=memberInfo.getMemberId()%> <input type="hidden"
						name="memberId" value=<%=memberInfo.getMemberId()%>
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="passwordMember"
						value=<%=memberInfo.getPasswordMember()%>
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="name"
						value=<%=memberInfo.getName()%>
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="mobilePhone"
						value=<%=memberInfo.getMobilePhone()%>
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="telephone"
						value=<%=memberInfo.getTelephone()%>
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="email"
						value=<%=memberInfo.getEmail()%>
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name=qqNumber"
						value=<%=memberInfo.getQQNumber()%>
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="zipCode"
						value=<%=memberInfo.getZipCode()%>
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="address"
						value=<%=memberInfo.getAddress()%>
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="occupation"
						value=<%=memberInfo.getOccupation()%>
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="income"
						value=<%=memberInfo.getIncome()%>
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="rankMember"
						value=<%=memberInfo.getRankMember()%>
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="currentScore"
						value=<%=memberInfo.getCurrentScore()%>
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="balanceAccount"
						value=<%=memberInfo.getBalanceAccount()%>
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="isFreezed"
						value=<%=memberInfo.getIsFreezed()%>
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="remark"
						value=<%=memberInfo.getRemark()%>
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="submit" value="保存"></td>
				</tr>
			</table>
		</form>
	</div>
	<br />
	<br />
	<br />
	<br />

</body>
</html>
