<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!DOCTYPE>
<html>
<head>
<title>在线视频播放</title>
	<link href="${APP_PATH}/static/img/secured.jpg" rel="shortcut icon">
	<link rel="stylesheet" href="${APP_PATH}/static/bootstrap/css/bootstrap.min.css">
	<script src="${APP_PATH}/static/js/jquery-3.3.1.min.js"></script>
    <script src="${APP_PATH}/static/bootstrap/js/bootstrap.min.js"></script>
</head>
<body onload="play()">
	<%@include file="header.jsp" %><br/><br/><br/>
	<div class="panel panel-default">
		<div class="panel-body" align="center">
			<div id="a1" align="center">视频播放</div><br/><br/>
			<span class="glyphicon glyphicon-hand-right" aria-hidden="true"></span>
			<a href="${APP_PATH}/getAllVideo" >点此返回上一页</a>
		</div>
	</div>
</body>
<script type="text/javascript" src="${APP_PATH}/ckplayer/ckplayer.js" charset="utf-8"></script>
<script type="text/javascript">
function play(){
	var flashvars = {
			f : '${APP_PATH}/${path}', //项目的相对路径WebContent下
			c : 0,
			s : 0,
			p : 1,
			code:'gbk2312'
		};
		var video=['${APP_PATH}/${path}->video/mp4'];
		CKobject.embed('${APP_PATH}/ckplayer/ckplayer.swf', 'a1', 'ckplayer_a1',
				'600', '400', false, flashvars, video);
	
}
</script>
</html>