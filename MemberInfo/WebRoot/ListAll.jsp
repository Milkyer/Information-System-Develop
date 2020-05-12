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

<title>所有会员信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


</head>
<body>
	<h2 align="center">会员信息表</h2>
	<br>
	<div>
		<table border="2px" bordercolor="Black" bgcolor="lightgrey" style="border-collapse:collapse" align="center">
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
				<th colspan="2">操作</th>
				<%
					        LinkedList<MemberInfo> memberinfo;
							memberinfo = MySQL.getAll();
							for (int i = 0; i < memberinfo.size(); i++) {
								out.println("<tr>");
								out.println("<td>" + memberinfo.get(i).getMemberId() + "</td>");
								out.println("<td>" + memberinfo.get(i).getPasswordMember() + "</td>");
								out.println("<td>" + memberinfo.get(i).getName() + "</td>");
								out.println("<td>" + memberinfo.get(i).getMobilePhone() + "</td>");
								out.println("<td>" + memberinfo.get(i).getTelephone() + "</td>");
								out.println("<td>" + memberinfo.get(i).getEmail() + "</td>");
								out.println("<td>" + memberinfo.get(i).getQQNumber() + "</td>");
								out.println("<td>" + memberinfo.get(i).getZipCode() + "</td>");
								out.println("<td>" + memberinfo.get(i).getAddress() + "</td>");
								out.println("<td>" + memberinfo.get(i).getOccupation() + "</td>");
								out.println("<td>" + memberinfo.get(i).getIncome() + "</td>");
								out.println("<td>" + memberinfo.get(i).getRankMember() + "</td>");
								out.println("<td>" + memberinfo.get(i).getCurrentScore() + "</td>");
								out.println("<td>" + memberinfo.get(i).getBalanceAccount() + "</td>");
								out.println("<td>" + memberinfo.get(i).getIsFreezed() + "</td>");
								out.println("<td>" + memberinfo.get(i).getRemark() + "</td>");
								out.println("<td><a href='http://" + request.getServerName()
								        + ":8080/MemberInfo/ListOne.jsp?memberId="
								        + memberinfo.get(i).getMemberId()
								        + "' style=\"text-decoration:none\">修改</a></td>");
								out.println("<td><a href='http://" + request.getServerName()
								        + ":8080/MemberInfo/Delete.jsp?memberId="
								        + memberinfo.get(i).getMemberId()
								        + "' style=\"text-decoration:none\">删除</a></td>");
								out.println("</tr>");
							}
				%>
			
		</table>
		</div>
		<br />
		<table align="center">
        <tr>
       <td><form action="Search.jsp">
       <input type="text" name="memberId" placeholder="输入会员名" /> 
				<input type="submit" value="查询">
       </form></td>
       <td><form action="Add.jsp">
       <input type="submit" value="增加会员信息">
       </form></td>
       </tr>
       </table>
       
       
</body>
</html>
