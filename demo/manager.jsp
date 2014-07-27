<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
  </head>
  
  <body>

  	<form action="ViewUserDetail" method="get">
		<table border="0">
			<tr>
				<td><p>manager的个人信息</p></td>
				<td><input type="hidden" name="username" value="manager" /></td>
				<td><input type="submit" value="查看"/></td>
			</tr>
		</table>
	</form>
	<p/>
	<p/>
  	<form action="viewJohnDetail.jsp" method="get">
		<table border="0">
			<tr>
				<td><p>john的个人信息</p></td>
				<td><input type="hidden" name="username" value="john" /></td>
				<td><input type="submit" value="查看"/></td>
			</tr>
		</table>
	</form>
	<p/>
	<p/>
	<form action="EditUserDetail" method="get">
		<input type="hidden" name="username" value="manager" />
		<input type="submit" value="编辑个人信息"/>
	</form>
  
  </body>
</html>
