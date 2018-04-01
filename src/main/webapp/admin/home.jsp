<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!DOCTYPE HTML>  
<html>  
  <head>  
    <title>后台管理</title>  
    <link href="${APP_PATH}/static/img/secured.jpg" rel="shortcut icon">
	<link rel="stylesheet" href="${APP_PATH}/static/bootstrap/css/bootstrap.min.css">
	<script src="${APP_PATH}/static/js/jquery-3.3.1.min.js"></script>
    <script src="${APP_PATH}/static/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="assets/css/style.css">
  </head>  
  <body>  
    <!--顶部导航栏部分-->
	<div class="header">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" title="logoTitle" href="#">
					<span class="glyphicon glyphicon-leaf"></span>&nbsp;secured</a>
			   </div>
			   <div class="collapse navbar-collapse">
				   <ul class="nav navbar-nav navbar-right">
					   <li role="presentation">
						   <a href="#">当前用户：<span class="badge">${username }</span></a>
					   </li>
					   <li>
						   <a href="../adlogout">
								 <span class="glyphicon glyphicon-lock"></span>退出登录</a>
						</li>
					</ul>
			   </div>
			</div>      
		</nav>
	</div>
	<!-- 中间主体内容部分 -->
	<div class="pageContainer">
		 <!-- 左侧导航栏 -->
		  <div class="pageSidebar">
		    <ul class="nav nav-stacked nav-pills">
				<li role="presentation">
					<a href="#systemSetting" class="nav nav-stacked nav-pills" data-toggle="collapse">  
						<i class="glyphicon glyphicon-cog"></i>  
						系统管理  
						<span class="pull-right glyphicon glyphicon-chevron-down"></span>  
					</a> 
				</li>
			</ul>
			<ul id="systemSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">  
				<li><a href="../getAllUser" target="mainFrame"><i class="glyphicon glyphicon-user"></i>用户管理</a></li>  
				<li><a href="user/changeKey.jsp?id=${id }" target="mainFrame"><i class="glyphicon glyphicon-edit"></i>修改密码</a></li>  
			</ul>  

			<ul class="nav nav-stacked nav-pills">
				<li role="presentation">
					<a href="#newsSetting" class="nav nav-stacked nav-pills" data-toggle="collapse">  
						<i class="glyphicon glyphicon-search"></i>  
						新闻管理  
						<span class="pull-right glyphicon glyphicon-chevron-down"></span>  
					</a>  
				</li>
			</ul>
			<ul id="newsSetting" class="nav nav-list collapse secondmenu" style="height: 0px;"> 
				<li><a href="../anews" target="mainFrame"><i class="glyphicon glyphicon-edit"></i>文章管理</a></li> 
				<li><a href="news/addnews.jsp" target="mainFrame"><i class="glyphicon glyphicon-pencil"></i>新增文章</a></li>  
			</ul>
		 </div>
		 <!-- 左侧导航和正文内容的分隔线 -->
		 <div class="splitter"></div>
		 <!-- 正文内容部分 -->
		 <div class="pageContent">
			 <iframe src="index.html" id="mainFrame" name="mainFrame" frameborder="0" width="100%"  height="100%" frameBorder="0"></iframe>
		 </div>
	 </div>
	 <!-- 底部页脚部分 -->
	 <div class="footer">
		 <p class="text-center">
			 2017 &copy; Secured.
		 </p>
	 </div>
  </body>  
</html>  