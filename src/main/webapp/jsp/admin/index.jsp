<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MES平台</title>
    <!--Bootstrap-->
    <link href="Content/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Font Awesome -->
    <link href="Content/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!--[if IE 7]>
    <link href="/Content/font-awesome/css/font-awesome-ie7.min.css" rel="stylesheet" />
    <![endif]-->
    <link href="Content/sidebar-menu/sidebar-menu.css" rel="stylesheet" />
    <link href="Content/ace/css/ace-rtl.min.css" rel="stylesheet" />
    <link href="Content/ace/css/ace-skins.min.css" rel="stylesheet" />
    <link href="Content/toastr/toastr.min.css" rel="stylesheet" />

    <script src="Content/jquery-1.9.1.min.js"></script>
    <script src="Content/bootstrap/js/bootstrap.min.js"></script>
    <script src="Content/sidebar-menu/sidebar-menu.js"></script>
    <script src="Content/bootstrap/js/bootstrap-tab.js"></script>
    <!--[if lt IE 9]>
    <script src="/Scripts/html5shiv.js"></script>
    <script src="/Scripts/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        body {
            font-size: 12px;
        }

        .nav > li > a {
            padding: 5px 10px;
        }

        .tab-content {
            padding-top: 3px;
        }
    </style>
</head>
<body>
    <div class="navbar navbar-default" id="navbar">
        <div class="navbar-container" id="navbar-container">
            <div class="navbar-header pull-left">
                <a href="#" class="navbar-brand">
                    <small>
                        <i class="icon-leaf"></i>
                       	信息安全与理论精品课程网站后台管理系统
                    </small>
                </a>
            </div>

            <div class="navbar-header pull-right" role="navigation">
		    <div style="background-color: #579ec8 !important; color: #fff; height:45px; line-height:45px; margin-right: 50px;">
			  欢迎光临,${aname }
			    <a href="/Home/Logout" style="color: #fff;">
                                    <i class="icon-off"></i>
                                    退出
                                </a>
		    </div>
            </div>
		<div class="navbar-header ace-settings-container" id="ace-settings-container" style="float:right;top:15px;">
                <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                    <i class="icon-cog bigger-150"></i>
                </div>
                <div class="ace-settings-box" id="ace-settings-box">
                    <div>
                        <div class="pull-left">
                            <select id="skin-colorpicker" class="hide">
                                <option data-skin="default" value="#438EB9">#438EB9</option>
                                <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                                <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                                <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                            </select>
                        </div>
                        <span>&nbsp; 选择皮肤</span>
                    </div>
                    <div>
                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
                        <label class="lbl" for="ace-settings-navbar"> 固定导航条</label>
                    </div>
                    <div>
                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
                        <label class="lbl" for="ace-settings-sidebar"> 固定滑动条</label>
                    </div>
                    <div>
                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
                        <label class="lbl" for="ace-settings-breadcrumbs">固定面包屑</label>
                    </div>

                    <div>
                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
                        <label class="lbl" for="ace-settings-rtl">切换到左边</label>
                    </div>

                    <div>
                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
                        <label class="lbl" for="ace-settings-add-container">
                            切换窄屏
                            <b></b>
                        </label>
                    </div>
                </div>
            </div>
        </div>
	    
    </div>
    <div class="main-container" id="main-container">
        <div class="main-container-inner">
            <a class="menu-toggler" id="menu-toggler" href="#">
                <span class="menu-text"></span>
            </a>
            <div class="sidebar" id="sidebar">
                <ul class="nav nav-list" id="menu"></ul>
                <div class="sidebar-collapse" id="sidebar-collapse">
                    <i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
                </div>
            </div>
            <div class="main-content">
                <div class="page-content">
                    <div class="row">
                        <div class="col-xs-12" style="padding-left:5px;">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="active"><a href="#Index" role="tab" data-toggle="tab">首页</a></li>
                            </ul>
                            <div class="tab-content" style="height:865px">
                                <div role="tabpanel" class="tab-pane active" id="Index" style="height:100%">
					<h2>欢迎进入后台管理系统</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
        <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
            <i class="icon-double-angle-up icon-only bigger-110"></i>
        </a>
    </div>
    <script type="text/javascript">
        //toastr.options.positionClass = 'toast-bottom-right';
        $(function () {
            $('#menu').sidebarMenu({
                data: [{
                    id: '1',
                    text: '系统设置',
                    icon: 'icon-cog',
                    url: '',
                    menus: [{
                        id: '11',
                        text: '编码管理',
                        icon: 'icon-glass',
                        url: '/CodeType/Index'
                    }]
                }, {
                    id: '2',
                    text: '基础数据',
                    icon: 'icon-leaf',
                    url: '',
                    menus: [{
                        id: '21',
                        text: '基础特征',
                        icon: 'icon-glass',
                        url: '/BasicData/BasicFeature/Index'
                    }, {
                        id: '22',
                        text: '特征管理',
                        icon: 'icon-glass',
                        url: '/BasicData/Features/Index'
                    }, {
                        id: '23',
                        text: '物料维护',
                        icon: 'icon-glass',
                        url: '/Model/Index'
                    }, {
                        id: '24',
                        text: '站点管理',
                        icon: 'icon-glass',
                        url: '/Station/Index'
                    }]
                }, {
                    id: '3',
                    text: '权限管理',
                    icon: 'icon-user',
                    url: '',
                    menus: [{
                        id: '31',
                        text: '用户管理',
                        icon: 'icon-user',
                        url: '/safe/jsp/admin/SystemSetting/User.jsp'
                    }, {
                        id: '32',
                        text: '角色管理',
                        icon: 'icon-apple',
                        url: '/SystemSetting/Role'
                    }, {
                        id: '33',
                        text: '菜单管理',
                        icon: 'icon-list',
                        url: '/SystemSetting/Menu'
                    }, {
                        id: '34',
                        text: '部门管理',
                        icon: 'icon-glass',
                        url: '/SystemSetting/Department'
                    }]
                }, {
                    id: '4',
                    text: '订单管理',
                    icon: 'icon-envelope',
                    url: '',
                    menus: [{
                        id: '41',
                        text: '订单查询',
                        icon: 'icon-glass',
                        url: '/Order/Query'
                    }, {
                        id: '42',
                        text: '订单排产',
                        icon: 'icon-glass',
                        url: '/Order/PLANTPRODUCT'
                    }, {
                        id: '43',
                        text: '订单撤排',
                        icon: 'icon-glass',
                        url: '/Order/cancelPRODUCT'
                    }, {
                        id: '44',
                        text: '订单HOLD',
                        icon: 'icon-glass',
                        url: '/Order/hold'
                    }, {
                        id: '45',
                        text: '订单删除',
                        icon: 'icon-glass',
                        url: '/Order/delete'
                    }, {
                        id: '47',
                        text: '订单插单',
                        icon: 'icon-glass',
                        url: '/Order/insertorder'
                    }, {
                        id: '48',
                        text: '订单导入',
                        icon: 'icon-glass',
                        url: '/Order/Import'
                    }]
                }]
            });
        });
    </script>
    <script src="Content/ace/js/ace-extra.min.js"></script>
    <script src="Content/ace/js/ace.min.js"></script>
</body>
</html>