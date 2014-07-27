<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<html>
<head><title>用户登录</title></head>
<body>
<script language="javascript">
	function validate(f){
		if(!(/^\w{5,15}$/.test(f.userid.value))){
			alert("用户ID必须是5~15位！") ;
			f.userid.focus() ;
			return false ;
		}
		if(!(/^\w{5,15}$/.test(f.userpass.value))){
			alert("密码必须是5~15位！") ;
			f.userpass.focus() ;
			return false ;
		}
	}
</script>
<%
	request.setCharacterEncoding("UTF-8") ;
%>
<%
	List<String> info = (List<String>) request.getAttribute("info") ;
	
	// 有信息返回
	if(info != null){	
		Iterator<String> iter = info.iterator() ;
		while(iter.hasNext()){
%>
			<h4><%=iter.next()%></h4>
<%
		}
	}
%>
<form action="Login" method="post" onSubmit="return validate(this)">
	用户ID：<input type="text" name="username"></input><br>
	密&nbsp;&nbsp;码：<input type="password" name="password"></input><br>
	<input type="submit" value="登陆">
	<input type="reset" value="重置">
</form>
</body>
</html>