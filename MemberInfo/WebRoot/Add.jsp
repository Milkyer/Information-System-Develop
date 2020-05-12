<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'Add.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<div>
		<h4>增加会员信息：</h4>
		<div>
			<form action="Addbtn.jsp">
				<table border="2" bgcolor="lightgrey" bordercolor="Black"
					style="border-collapse:collapse;">
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
					</tr>
					<tr>
					<td><input type="text"name="memberId"
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="passwordMember"
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="name"
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="mobilePhone"					
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="telephone"						
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="email"					
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="qqNumber"				
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="zipCode"					
						style="margin:0;padding:0;width:70;"></td>
						<td><input type="text" name="address"						
						style="margin:0;padding:0;width:70;"></td>
						<td><input type="text" name="occupation"					
						style="margin:0;padding:0;width:70;"></td>
						<td><input type="text" name="income"			
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="rankMember"				
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="currentScore"		
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="balanceAccount"		
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="isFreezed"				
						style="margin:0;padding:0;width:70;"></td>
					<td><input type="text" name="remark"
		                style="margin:0;padding:0;width:70;"></td>
						<td><input type="submit" value="增加"
							style="margin:0;padding:0;width:80;"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>
