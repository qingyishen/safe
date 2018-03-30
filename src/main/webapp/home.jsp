<%@ page language="java" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
      <meta charset="utf-8">
	  <title>Secured主页</title>
	  <link href="static/img/secured.jpg" rel="shortcut icon">
	  <link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
	  <script src="static/js/jquery-3.3.1.min.js"></script>
	  <script src="static/bootstrap/js/bootstrap.min.js"></script>
	  <style type="text/css">
	  	/*设置body，不要让导航条（默认50px）压到下面的内容*/
		   body { padding-top: 70px; }
		
		   /*下拉菜单颜色*/
		  .dropdowncolor {
			  background-color: #202020;
			  color: white;
			  font-weight: bold;
		  }
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
                        <li class="dropdown">
                            <a class="dropdown-toggle"  id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                技术博客
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu dropdowncolor" aria-labelledby="dropdownMenu1">
                                <li><a href="#">GIS</a></li><!--下拉菜单项-->
                                <li><a href="#">.NET基础</a></li>
                                <li><a href="#">Asp .NET MVC</a></li>
                                <li><a href="#">前端</a></li>
                            </ul>
                        </li>
                        <li><a href="#">我的生活</a></li>
                        <li><a href="#">教程</a></li>
                        <li><a href="#">电脑小知识</a></li>
                        <li><a href="#">留言板</a></li>
                        <li><a href="#">关于我</a></li>
                    </ul>
                    <!--搜索表单-->
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <button type="submit" class="btn navbar-btn">搜索</button>
                    </form>
                    <c:if test="${username==null }">
	                    <!--导航栏右部，一般的登录 注册-->
	                    <ul class="nav navbar-nav navbar-right">
	                        <li><a href="login.jsp">登录</a></li>
	                        <li><a href="register.jsp">注册</a></li>
	                    </ul>
                    </c:if>
                    <c:if test="${username!=null }">
	                    <!--导航栏右部，一般的登录 注册-->
	                    <ul class="nav navbar-nav navbar-right">
	                        <li><a href="#">欢迎你${username }</a></li>
	                        <li><a href="logout">退出登陆</a></li>
	                    </ul>
                    </c:if>
                </div>
            </div><!-- /.container-fluid -->
        </nav>
       <!------------------------------------------导航条结束-------------------------------->
       
          <!--------------------------------------------------轮播开始-------------------------------------------->
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
                    <img src="static/img/1.jpg" alt="风景1">
                    <div class="carousel-caption">
                        <!--h4中的内容显示到图片上面，-->
                        <h4>真正的才智是刚毅的志向。 —— 拿破仑</h4>
                    </div>
                </div>
                <div class="item">
                    <img src="static/img/2.jpg" alt="风景2">
                    <div class="carousel-caption">
                        <h4>志向不过是记忆的奴隶，生气勃勃地降生，但却很难成长。 —— 莎士比亚</h4>
                    </div>
                </div>
                <div class="item">
                    <img src="static/img/3.jpg" alt="风景3">
                    <div class="carousel-caption">
                        <h4>志向和热爱是伟大行为的双翼。 —— 歌德</h4>
                    </div>
                </div>
                <div class="item">
                    <img src="static/img/4.jpg" alt="风景4">
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
       <!--------------------------------------------------轮播结束-------------------------------------------->
        <!---------主体 container居中------------------>
       <div class="container">
           <!--声明行-->
           <div class="row">
               <h2>我的作品</h2>
           </div>
           <div class="row">
               <!--为3的栅格系统，相对于一行放四个-->
               <div class="col-sm-3">
                   <!--img-thumbnail 方形加外边框-->
                   <img src="../static/img/八镜台.jpg"  class="img-thumbnail" alt="八镜台"/>
                   <h3>八镜台</h3>
                   <p>八境台坐落在江西省赣州市北八境公园内，章江和贡江在这里汇合，为省级重点风景名胜区。</p>
                   <p><a href="#" class="btn btn-success" role="button">详细</a></p>
               </div>
               <div class="col-sm-3">
                   <img src="../static/img/标建2.jpg" class="img-thumbnail" alt="标建" />
                   <h3>商场</h3>
                   <p>赣州第一条真正意义上的步行街。餐饮，购物都挺多商户的。可惜没有什么大的品牌进驻，购物群体也多是学生什么的.</p>
                   <p><a href="#" class="btn btn-success" role="button">详细</a></p>
               </div>
               <div class="col-sm-3">
                   <img src="../static/img/标建4.jpg" class="img-thumbnail" alt="标建2"/>  
                   <h3>仿古建筑</h3>
                   <p>如佛所谓“赣州文清路，模特满大街，豪车如流水，摩人挤掉鞋”。正是今天赣州文清路极尽繁华的真实写照。</p>
                   <p><a href="#" class="btn btn-success" role="button">详细</a></p>
               </div>
               <div class="col-sm-3">
                   <img src="../static/img/城墙2.jpg" class="img-thumbnail" alt="标建2"/>  
                   <h3>古城墙</h3>
                   <p>赣州古城墙，始建于汉代，距今已有二千年的历史，后来经过南宋、元、明、清、民国，历时900多年的不断修缮、加固</p>
                   <p><a href="#" class="btn btn-success" role="button">详细</a></p>
               </div>
           </div>
           <div class="row">
               <div class="col-sm-3">
                   <!--img-cricle 圆形图框-->
                   <img src="../static/img/郁孤台.jpg"  class="img-circle" alt="八镜台"/>
                   <h3>郁孤台</h3>
                   <p>郁孤台位于赣州城区西北部贺兰山顶，海拔131米，是城区的制高点，赣州宋代古城墙自台下逶迤而过，市级文物保护单位</p>
                   <p><a href="#" class="btn btn-success" role="button">详细</a></p>
               </div>
               <div class="col-sm-3">
                   <img src="../static/img/高层2.jpg" class="img-circle" alt="标建" />
                   <h3>高层建筑</h3>
                   <p>高层建筑，建筑高度大于27米的住宅和建筑高度大于24m的非单层厂房、仓库和其他民用建筑。</p>
                   <p><a href="#" class="btn btn-success" role="button">详细</a></p>
               </div>
               <div class="col-sm-3">
                   <img src="../static/img/公园.jpg" class="img-circle" alt="标建2"/>  
                   <h3>赣州公园</h3>
                   <p>赣州公园是赣州城区最早的一个综合性公园，总面积2.97公顷。公园位于赣州市老城区文清路64号。</p>
                   <p><a href="#" class="btn btn-success" role="button">详细</a></p>
               </div>
               <div class="col-sm-3">
                   <img src="../static/img/蒋经国故居.jpg" class="img-circle" alt="标建2"/>  
                   <h3>蒋经国故居</h3>
                   <p>现保存较好的主要是在章江古城墙处，故居是1940年蒋经国主持兴建的仿俄式砖木结构建筑，面积为170多平方米。</p>
                   <p><a href="#" class="btn btn-success" role="button">详细</a></p>
               </div>
           </div>
           <!-------------------------标签页开始----------------------------->
           <div>
               <div class="row">
                   <h2>技术分类</h2>
               </div>
               <!-- Nav tabs页签 -->
               <ul class="nav nav-tabs" role="tablist">
                   <!--注意这里的#home与下面的div role="tabpanel" class="tab-pane active" id="home" 的id对应实现页签-->
                   <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">GIS基础</a></li>
                   <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">.NET基础</a></li>
                   <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Asp.net MVC</a></li>
                   <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Web GIS</a></li>
               </ul>

               <!-- Tab panes -->
               <div class="tab-content">
                   <!--active当前选中项-->
                   <div role="tabpanel" class="tab-pane active" id="home">
                       <div class="row">
                           <div class="col-sm-8">
                               <h3>GIS基础介绍</h3>
                               <p style="font-size:14px">地理信息系统（Geographic Information System或 Geo－Information system，GIS）有时又称为“地学信息系统”。它是一种特定的十分重要的空间信息系统。它是在计算机硬、软件系统支持下，
                                   对整个或部分地球表层（包括大气层）空间中的有关地理分布数据进行采集、储存、管理、运算、分析、显示和描述的技术系统。</p>
                               <p>位置与地理信息既是LBS的核心，也是LBS的基础。一个单纯的经纬度坐标只有置于特定的地理信息中，代表为某个地点、标志、方位后，才会被用户认识和理解。用户在通过相关技
                                   术获取到位置信息之后，还需要了解所处的地理环境，查询和分析环境信息，从而为用户活动提供信息支持与服务。</p>
                               <p><a href="#" class="btn btn-success" role="button">详细了解</a></p>
                           </div>
                           <div class="col-sm-4">
                               <img src="static/img/net.jpg" class="img-thumbnail" alt="GIS基础"/> 
                           </div>
                       </div> 
                   </div>
                   <div role="tabpanel" class="tab-pane" id="profile">
                       <div class="row">
                           <div class="col-sm-8">
                               <h3>.Net基础介绍</h3>
                               <p style="font-size:14px">.NET是 Microsoft XML Web services 平台。XML Web services 允许应用程序通过 Internet 进行通讯和共享数据，而不管所采用的是哪种操作
                                   系统、设备或编程语言。Microsoft .NET 平台提供创建 XML Web services 并将这些服务集成在一起之所需。对个人用户的好处是无缝的、吸引人的体验。</p>
                               <p><a href="#" class="btn btn-success" role="button">详细了解</a></p>
                           </div>
                           <div class="col-sm-4">
                               <img src="../static/img/.Net.jpg" class="img-thumbnail" alt=".net"/> 
                           </div>
                       </div> 
                   </div>
                   <div role="tabpanel" class="tab-pane" id="messages">
                       <div class="row">
                           <div class="col-sm-8">
                               <h3>Asp .net MVC介绍</h3>
                               <p style="font-size:14px">ASP.NET MVC 4已经正式发布，并内置于Visual Studio 2012，
                                   新版本ASP.NET MVC版本新增了手机模版、单页应用程序，Web API等模版，更新了一些 javascript 库，其中示例页面也使用了jquery的AJAX登录，
                                   并增加了OAuth认证/Entity Framework5的支持。同时也增强了对HTML5、AsyncController等的支持。</p>
                               <p><a href="#" class="btn btn-success" role="button">详细了解</a></p>
                           </div>
                           <div class="col-sm-4">
                               <img src="../static/img/MVC.jpg" class="img-thumbnail" alt="MVC"/> 
                           </div>
                       </div> 
                   </div>
                   <div role="tabpanel" class="tab-pane" id="settings">
                       <div class="row">
                           <div class="col-sm-8">
                               <h3>Web GIS基础介绍</h3>
                               <p style="font-size:14px">Web GIS是Internet技术应用于GIS开发的产物，是现代GIS技术的重要组成部分。常见的Web GIS开发软件有超擎图形。
                                   是一个交互式的、分布式的、动态的地理信息系统，是由多个主机、多个数据库的无线终端，并由客户机与服务器（HTTP服务器及应用服务器）相连所组成的。
                                   GIS通过WWW功能得以扩展，真正成为一种大众使用的工具。
                                   从WWW的任意一个节点，Internet用户可以浏览WebGIS站点中的空间数据、制作专题图，以及进行各种空间检索和空间分析，从而使GIS进入千家万户。</p>
                               <p><a href="#" class="btn btn-success" role="button">详细了解</a></p>
                           </div>
                           <div class="col-sm-4">
                               <img src="../static/img/webgis.jpg" class="img-thumbnail" alt="GIS基础"/> 
                           </div>
                       </div> 
                   </div>
               </div>

           </div>
           <!-------------------------标签页结束----------------------------->
       </div>
       <div  id="copyright">
           <p style="margin-top:10px">2016@共享  All Rights Reserved. </p>
           <p> 工信部备案号： 晋ICP备16003670号-1 </p>
            <p> 联系方式：qq:2627484291    邮箱：2627484291@qq.com</p>
       </div>
  </body>
</html>
