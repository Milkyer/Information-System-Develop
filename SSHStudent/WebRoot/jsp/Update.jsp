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
    
    <title>My JSP 'Update_xx.jsp' starting page</title>
  </head>
  <body>
  <center>
   <h2>修改密码</h2>
     <s:form action="updateAction">
       <table>
         <tr>
           <td>
             <s:textfield readonly="true" name="stdNew.xhao" value="%{std.xhao}" label="银行卡号"></s:textfield>
           </td>
         </tr>
         <tr>
           <td>
             <s:textfield name="stdNew.xming" value="%{std.xming}" label="操作类型"></s:textfield>
           </td>
         </tr>
         <tr>
           <td>
             <s:textfield name="stdNew.acno" value="%{std.acno}" label="操作编号"></s:textfield>
           </td>
         </tr>
         <tr>
           <td>
             <s:textfield name="stdNew.xyuan" value="%{std.xyuan}" label="操作金额"></s:textfield>
           </td>
         </tr>
         <tr>
           <td>
             <s:textfield name="stdNew.bji" value="%{std.bji}" label="上次余额"></s:textfield>
           </td>
         </tr>
         <tr>
           <td>
             <s:textfield name="stdNew.zhye" value="%{std.zhye}" label="账户金额"></s:textfield>
           </td>
         </tr>
         <tr>  
            <td>  
                <s:submit value="提交"></s:submit>
            </td>  
        </tr>  
       </table>
     </s:form>
  </center>
  </body>
</html>
