<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
  <head>
	<title>用户管理</title>
  </head>  
  <body>
    <table>
    	<tr>
    		<th>编号</th>
    		<th>用户名</th>
    		<th colspan="2">编辑</th>
    	</tr> 
    	<c:forEach items="${adminList }" var="a">
    		<tr>
		  	 	<td>${a.id}</td>
		  	 	<td>${a.aname}</td>
		  	 	<td><a href=""/>修改</td>
		  	 	<td><a href=""/>删除</td>
    		</tr>
  	 	</c:forEach>
    </table>
  </body>
</html>
