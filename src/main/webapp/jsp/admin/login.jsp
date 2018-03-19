<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% pageContext.setAttribute("APP_PATH", request.getContextPath());%> 
<!DOCTYPE HTML>
<html>
  <head>
    <title>登录</title>
    <link href="${APP_PATH }/css/style.css" type="text/css" rel="stylesheet">
  </head>
  <body>
    <form action="login" method="post" id="container">
    	<table>
		    <tr colspan="2">
		    	用户名：<input name="aname" type="text" placeholder="请输入用户名"/>
	    	</tr>
		    <tr colspan="2">
		    	密码：<input name="password" type="password" placeholder="请输入密码"/>
	    	</tr>
	    	<tr>
	    		<td><input type="submit" id="submit" value="登录"/></td>
	    		<td><input type="reset" id="reset" value="重置"/></td>
	    	</tr>
    	</table>
    </form>
  </body>
</html>
