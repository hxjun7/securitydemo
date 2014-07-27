<%@ page language="java" import="java.util.*,com.huawei.uee.user.User" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 <%User user = (User)session.getAttribute("user"); %> 
 <%-- user.setUsername("<script>alert(123)</script>");--%>
  </head>
  
  <body>
<br/>
用户<%=user.getUsername()%>的个人信息：
  	<form action="EditUserDetail" method="get" border="0">
		<table border="1">
			<tr>
				<td><p>username</p></td>
				<td><input type="text" name="username" value="<%=user.getUsername()%>"></input></td>
			</tr>
			
			<tr>
				<td><p>age</p></td>
				<td><input type="text" name="age" value="<%=user.getAge()%>"></input></td>
			</tr>
			
			<tr>
				<td><p>money</p></td>
				<td><input type="text" name="money" value="<%=user.getMoney()%>"></input></td>
			</tr>
			
			<tr>
				<td><p>description</p></td>
				<td><input type="text" name="description" value="<%=user.getDescription()%>"></input></td>
			</tr>
		</table>
		<input type="submit" value="提交个人信息"/>
	</form>
  
  </body>
</html>
