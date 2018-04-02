<%@ page language="java" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
      <meta charset="utf-8">
	  <title>Secured主页</title>
	  <link href="${APP_PATH}/static/img/secured.jpg" rel="shortcut icon">
	  <link rel="stylesheet" href="${APP_PATH}/static/bootstrap/css/bootstrap.min.css">
	  <script src="${APP_PATH}/static/js/jquery-3.3.1.min.js"></script>
	  <script src="${APP_PATH}/static/bootstrap/js/bootstrap.min.js"></script>
	  <style type="text/css">
	  	/*设置body，不要让导航条（默认50px）压到下面的内容*/
		   body { padding-top: 70px; }
		
		  /*轮播图片设置大小*/
		  .carousel-inner .item img {
			  height: 400px;
			  width: 100%;
		  }
		  /*调整圆角图片大小*/
		  .img-circle {
			  width: 250px;  
		  }
		  /*版权信息*/
		  #copyright {
			  background-color: #202020;
			  height: 100px;
			  color: #524f4f;
			  text-align: center;
			  font-size: 10px;
			  padding-top: 6px;
		  }
	  </style>
  </head>
   <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="adlogin.jsp">Secured</a>
				</div>
                <div>					
                    <ul class="nav navbar-nav">                        
                        <li><a href="${APP_PATH}">首页</a></li>
                        <li><a href="#">教程</a></li>
                        <li><a href="#">资料下载</a></li>
                        <li><a href="#">留言板</a></li>
                        <li><a href="about.jsp">关于</a></li>
                    </ul>
                    <c:if test="${username==null }">
	                    <ul class="nav navbar-nav navbar-right">
	                        <li><a href="login.jsp">登录</a></li>
	                        <li><a href="register.jsp">注册</a></li>
	                    </ul>
                    </c:if>
                    <c:if test="${username!=null }">
	                    <ul class="nav navbar-nav navbar-right">
	                        <li><a href="update.jsp">欢迎你${username }</a></li>
	                        <li><a href="logout">退出登陆</a></li>
	                    </ul>
                    </c:if>
                </div>
            </div><!-- /.container-fluid -->
        </nav>
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- ol指示器  ol标签与ul标签不同 ol为是有序列表 ul为是无序列表 -->
            <ol class="carousel-indicators">
                  <!-- 指示器 -->
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
            </ol>

            <!-- 包装的轮播图片-->
            <div class="carousel-inner" role="listbox">
                <!--图片-->
                <div class="item active">
                    <img src="${APP_PATH}/static/img/1.jpg" alt="风景1">
                    <div class="carousel-caption">
                        <!--h4中的内容显示到图片上面，-->
                        <h4>真正的才智是刚毅的志向。 —— 拿破仑</h4>
                    </div>
                </div>
                <div class="item">
                    <img src="${APP_PATH}/static/img/2.jpg" alt="风景2">
                    <div class="carousel-caption">
                        <h4>志向不过是记忆的奴隶，生气勃勃地降生，但却很难成长。 —— 莎士比亚</h4>
                    </div>
                </div>
                <div class="item">
                    <img src="${APP_PATH}/static/img/3.jpg" alt="风景3">
                    <div class="carousel-caption">
                        <h4>志向和热爱是伟大行为的双翼。 —— 歌德</h4>
                    </div>
                </div>
                <div class="item">
                    <img src="${APP_PATH}/static/img/4.jpg" alt="风景4">
                    <div class="carousel-caption">
                        <h4>生活有度，人生添寿。 —— 书摘</h4>
                    </div>
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
       <div class="container">
       		<div class="row clearfix">
       			<div class="col-md-3 column">
					<h2>
						教学团队
					</h2>
					<p>
						&nbsp;&nbsp;网络安全理论与技术教学队伍9人全部具有博士学位。
						具有高级职称者6人， 40岁至60岁2人，30岁至40岁4人，20岁至30岁3人。
						年龄结构合理，发展平稳且可持续性好，具有很强的战斗力，形成了骨干教师
						承担教学重任，青年教师承担教学重任，青年教师在梯队中培养锻炼的格局。
						同时还请高年级优秀的硕士研究生参加课程辅导，从而使得辅导教师与学生的
						师生比例达到学校的要求……<a class="btn" href="#">更多 »</a>
					</p>
					<h2>
						网络
					</h2>
					<p>
						<img src="${APP_PATH}/static/img/net.jpg" height="200" width="300" />
					</p>
					<h2>
						联系我们
					</h2>
					<p>
						电话：028-88888888<br/>
						邮箱：2627484291@qq.com
					</p>
				</div>
				<div class="col-md-7 col-md-offset-2 main">
					<h3 class="text-info">最新文章</h3>
					<c:forEach items="${pageInfo.list }" var="news">
						<ul><li>
							<a href="${APP_PATH }/selectNewsById?id=<c:out value="${news.id}"/>"><c:out value="${news.title}"/></a>
							---------------------------------发布时间：<c:out value="${news.time}"/>
							<a href="${APP_PATH }/selectNewsById?id=<c:out value="${news.id}"/>"><i>阅读全文»»</i></a>
						</li></ul>
					</c:forEach>
					<ul class="pagination">
						<li>
							<c:if test="${pageInfo.hasPreviousPage}">
								<a href="${APP_PATH }/page/${pageInfo.pageNum-1}">Previous page</a>
							</c:if>
						</li>
						<li>
							<c:if test="${pageInfo.hasNextPage}">
								<a href="${APP_PATH }/page/${pageInfo.pageNum+1}">Next page</a>
							</c:if>
						</li>
					</ul>
				</div>
			</div>
	   </div>
       <div  id="copyright">
           <p style="margin-top:10px">2018@All Rights Reserved. </p>
           <p> 工信部备案号： 晋ICP备16003670号-1 </p>
            <p> 联系方式：qq:2627484291    邮箱：2627484291@qq.com</p>
       </div>
  </body>
</html>
