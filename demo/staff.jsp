<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <% String username = request.getParameter("username") ; %> 
  <%request.setCharacterEncoding("UTF-8") ;%>
  </head>
  
  <body>
  
  	<form action="UserDetail" method="get">
		<table border="0">
			<tr>
				<td><p><%=username%>的个人信息</p></td>
				<td><input type="hidden" name="username" value="<%=username%>" /></td>
				<td><input type="hidden" name="opermode" value="view" /></td>
				<td><input type="submit" value="查看"/></td>
			</tr>
		</table>
	</form>
	
	<form action="UserDetail" method="get">
		<input type="hidden" name="username" value="<%=username%>" />
		<input type="hidden" name="opermode" value="edit" />
		<input type="submit" value="编辑"/>
	</form>
  
  </body>
</html>
