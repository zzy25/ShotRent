<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: andrew
  Date: 16-3-9
  Time: 上午11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>

<!--[if IE 8]>
<html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]>
<html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!-->
<html lang="en"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

    <meta charset="utf-8"/>

    <title>短租网 - 搜索房屋</title>

    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

    <meta content="" name="description"/>

    <meta content="" name="author"/>

    <!-- BEGIN GLOBAL MANDATORY STYLES -->

    <link href="<%=basePath%>assets/media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    <link href="<%=basePath%>assets/media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

    <link href="<%=basePath%>assets/media/css/font-awesome.css" rel="stylesheet" type="text/css"/>

    <link href="<%=basePath%>assets/media/css/style-metro.css" rel="stylesheet" type="text/css"/>

    <link href="<%=basePath%>assets/media/css/style.css" rel="stylesheet" type="text/css"/>

    <link href="<%=basePath%>assets/media/css/style-responsive.css" rel="stylesheet" type="text/css"/>

    <link href="<%=basePath%>assets/media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

    <link href="<%=basePath%>assets/media/css/uniform.default.css" rel="stylesheet" type="text/css"/>

    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN PAGE LEVEL STYLES -->

    <link rel="stylesheet" type="text/css" href="<%=basePath%>assets/media/css/datepicker.css"/>

    <link href="<%=basePath%>assets/media/css/jquery.fancybox.css" rel="stylesheet"/>

    <link href="<%=basePath%>assets/media/css/search.css" rel="stylesheet" type="text/css"/>

    <!-- END PAGE LEVEL STYLES -->

    <link rel="shortcut icon" href="<%=basePath%>assets/media/image/favicon.ico"/>

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-header-fixed">

<!-- BEGIN HEADER -->

<div class="header navbar navbar-inverse navbar-fixed-top">

    <!-- BEGIN TOP NAVIGATION BAR -->

    <div class="navbar-inner">

        <div class="container-fluid">

            <!-- BEGIN LOGO -->

            <a class="brand" href="index.html">

                <img src="<%=basePath%>assets/media/image/logo.png" alt="logo"/>

            </a>

            <!-- END LOGO -->

            <!-- BEGIN RESPONSIVE MENU TOGGLER -->

            <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">

                <img src="<%=basePath%>assets/media/image/menu-toggler.png" alt=""/>

            </a>

            <!-- END RESPONSIVE MENU TOGGLER -->

            <!-- BEGIN TOP NAVIGATION MENU -->

            <ul class="nav pull-right">

                <!-- BEGIN NOTIFICATION DROPDOWN -->

                <li class="dropdown" id="header_notification_bar">

                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">

                        <i class="icon-warning-sign"></i>

                        <span class="badge">6</span>

                    </a>

                    <ul class="dropdown-menu extended notification">

                        <li>

                            <p>You have 14 new notifications</p>

                        </li>

                        <li>

                            <a href="#">

                                <span class="label label-success"><i class="icon-plus"></i></span>

                                New user registered.

                                <span class="time">Just now</span>

                            </a>

                        </li>

                        <li>

                            <a href="#">

                                <span class="label label-important"><i class="icon-bolt"></i></span>

                                Server #12 overloaded.

                                <span class="time">15 mins</span>

                            </a>

                        </li>

                        <li>

                            <a href="#">

                                <span class="label label-warning"><i class="icon-bell"></i></span>

                                Server #2 not respoding.

                                <span class="time">22 mins</span>

                            </a>

                        </li>

                        <li>

                            <a href="#">

                                <span class="label label-info"><i class="icon-bullhorn"></i></span>

                                Application error.

                                <span class="time">40 mins</span>

                            </a>

                        </li>

                        <li>

                            <a href="#">

                                <span class="label label-important"><i class="icon-bolt"></i></span>

                                Database overloaded 68%.

                                <span class="time">2 hrs</span>

                            </a>

                        </li>

                        <li>

                            <a href="#">

                                <span class="label label-important"><i class="icon-bolt"></i></span>

                                2 user IP blocked.

                                <span class="time">5 hrs</span>

                            </a>

                        </li>

                        <li class="external">

                            <a href="#">See all notifications <i class="m-icon-swapright"></i></a>

                        </li>

                    </ul>

                </li>

                <!-- END NOTIFICATION DROPDOWN -->

                <!-- BEGIN INBOX DROPDOWN -->

                <li class="dropdown" id="header_inbox_bar">

                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">

                        <i class="icon-envelope"></i>

                        <span class="badge">5</span>

                    </a>

                    <ul class="dropdown-menu extended inbox">

                        <li>

                            <p>You have 12 new messages</p>

                        </li>

                        <li>

                            <a href="inbox.html?a=view">

                                <span class="photo"><img src="<%=basePath%>assets/media/image/avatar2.jpg"
                                                         alt=""/></span>

								<span class="subject">

								<span class="from">Lisa Wong</span>

								<span class="time">Just Now</span>

								</span>

								<span class="message">

								Vivamus sed auctor nibh congue nibh. auctor nibh

								auctor nibh...

								</span>

                            </a>

                        </li>

                        <li>

                            <a href="inbox.html?a=view">

                                <span class="photo"><img src="./media/image/avatar3.jpg" alt=""/></span>

								<span class="subject">

								<span class="from">Richard Doe</span>

								<span class="time">16 mins</span>

								</span>

								<span class="message">

								Vivamus sed congue nibh auctor nibh congue nibh. auctor nibh

								auctor nibh...

								</span>

                            </a>

                        </li>

                        <li>

                            <a href="inbox.html?a=view">

                                <span class="photo"><img src="./media/image/avatar1.jpg" alt=""/></span>

								<span class="subject">

								<span class="from">Bob Nilson</span>

								<span class="time">2 hrs</span>

								</span>

								<span class="message">

								Vivamus sed nibh auctor nibh congue nibh. auctor nibh

								auctor nibh...

								</span>

                            </a>

                        </li>

                        <li class="external">

                            <a href="inbox.html">See all messages <i class="m-icon-swapright"></i></a>

                        </li>

                    </ul>

                </li>

                <!-- END INBOX DROPDOWN -->

                <!-- BEGIN TODO DROPDOWN -->

                <li class="dropdown" id="header_task_bar">

                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">

                        <i class="icon-tasks"></i>

                        <span class="badge">5</span>

                    </a>

                    <ul class="dropdown-menu extended tasks">

                        <li>

                            <p>You have 12 pending tasks</p>

                        </li>

                        <li>

                            <a href="#">

								<span class="task">

								<span class="desc">New release v1.2</span>

								<span class="percent">30%</span>

								</span>

								<span class="progress progress-success ">

								<span style="width: 30%;" class="bar"></span>

								</span>

                            </a>

                        </li>

                        <li>

                            <a href="#">

								<span class="task">

								<span class="desc">Application deployment</span>

								<span class="percent">65%</span>

								</span>

								<span class="progress progress-danger progress-striped active">

								<span style="width: 65%;" class="bar"></span>

								</span>

                            </a>

                        </li>

                        <li>

                            <a href="#">

								<span class="task">

								<span class="desc">Mobile app release</span>

								<span class="percent">98%</span>

								</span>

								<span class="progress progress-success">

								<span style="width: 98%;" class="bar"></span>

								</span>

                            </a>

                        </li>

                        <li>

                            <a href="#">

								<span class="task">

								<span class="desc">Database migration</span>

								<span class="percent">10%</span>

								</span>

								<span class="progress progress-warning progress-striped">

								<span style="width: 10%;" class="bar"></span>

								</span>

                            </a>

                        </li>

                        <li>

                            <a href="#">

								<span class="task">

								<span class="desc">Web server upgrade</span>

								<span class="percent">58%</span>

								</span>

								<span class="progress progress-info">

								<span style="width: 58%;" class="bar"></span>

								</span>

                            </a>

                        </li>

                        <li>

                            <a href="#">

								<span class="task">

								<span class="desc">Mobile development</span>

								<span class="percent">85%</span>

								</span>

								<span class="progress progress-success">

								<span style="width: 85%;" class="bar"></span>

								</span>

                            </a>

                        </li>

                        <li class="external">

                            <a href="#">See all tasks <i class="m-icon-swapright"></i></a>

                        </li>

                    </ul>

                </li>

                <!-- END TODO DROPDOWN -->

                <!-- BEGIN USER LOGIN DROPDOWN -->

                <li class="dropdown user">

                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">

                        <img alt="" src="<%=basePath%>assets/media/image/avatar1_small.jpg"/>

                        <span class="username">Bob Nilson</span>

                        <i class="icon-angle-down"></i>

                    </a>

                    <ul class="dropdown-menu">

                        <li><a href="extra_profile.html"><i class="icon-user"></i> My Profile</a></li>

                        <li><a href="page_calendar.html"><i class="icon-calendar"></i> My Calendar</a></li>

                        <li><a href="inbox.html"><i class="icon-envelope"></i> My Inbox(3)</a></li>

                        <li><a href="#"><i class="icon-tasks"></i> My Tasks</a></li>

                        <li class="divider"></li>

                        <li><a href="extra_lock.html"><i class="icon-lock"></i> Lock Screen</a></li>

                        <li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>

                    </ul>

                </li>

                <!-- END USER LOGIN DROPDOWN -->

            </ul>

            <!-- END TOP NAVIGATION MENU -->

        </div>

    </div>

    <!-- END TOP NAVIGATION BAR -->

</div>

<!-- END HEADER -->

<!-- BEGIN CONTAINER -->

<div class="page-container row-fluid">

    <!-- BEGIN SIDEBAR -->

    <div class="page-sidebar nav-collapse collapse">

        <!-- BEGIN SIDEBAR MENU -->

        <ul class="page-sidebar-menu">

            <li>

                <!-- BEGIN SIDEBAR TOGGLER BUTTON -->

                <div class="sidebar-toggler hidden-phone"></div>

                <!-- BEGIN SIDEBAR TOGGLER BUTTON -->

            </li>

            <li>

                <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->

                <form class="sidebar-search">

                    <div class="input-box">

                        <a href="javascript:;" class="remove"></a>

                        <input type="text" placeholder="Search..."/>

                        <input type="button" class="submit" value=" "/>

                    </div>

                </form>

                <!-- END RESPONSIVE QUICK SEARCH FORM -->

            </li>

            <li class="start ">

                <a href="index.html">

                    <i class="icon-home"></i>

                    <span class="title">Dashboard</span>

                </a>

            </li>

            <li class="">

                <a href="javascript:;">

                    <i class="icon-cogs"></i>

                    <span class="title">Layouts</span>

                    <span class="arrow "></span>

                </a>

                <ul class="sub-menu">

                    <li>

                        <a href="layout_horizontal_sidebar_menu.html">

                            Horzontal & Sidebar Menu</a>

                    </li>

                    <li>

                        <a href="layout_horizontal_menu1.html">

                            Horzontal Menu 1</a>

                    </li>

                    <li>

                        <a href="layout_horizontal_menu2.html">

                            Horzontal Menu 2</a>

                    </li>

                    <li>

                        <a href="layout_promo.html">

                            Promo Page</a>

                    </li>

                    <li>

                        <a href="layout_email.html">

                            Email Templates</a>

                    </li>

                    <li>

                        <a href="layout_ajax.html">

                            Content Loading via Ajax</a>

                    </li>

                    <li>

                        <a href="layout_sidebar_closed.html">

                            Sidebar Closed Page</a>

                    </li>

                    <li>

                        <a href="layout_blank_page.html">

                            Blank Page</a>

                    </li>

                    <li>

                        <a href="layout_boxed_page.html">

                            Boxed Page</a>

                    </li>

                    <li>

                        <a href="layout_boxed_not_responsive.html">

                            Non-Responsive Boxed Layout</a>

                    </li>

                </ul>

            </li>

            <li class="">

                <a href="javascript:;">

                    <i class="icon-bookmark-empty"></i>

                    <span class="title">UI Features</span>

                    <span class="arrow "></span>

                </a>

                <ul class="sub-menu">

                    <li>

                        <a href="ui_general.html">

                            General</a>

                    </li>

                    <li>

                        <a href="ui_buttons.html">

                            Buttons</a>

                    </li>

                    <li>

                        <a href="ui_modals.html">

                            Enhanced Modals</a>

                    </li>

                    <li>

                        <a href="ui_tabs_accordions.html">

                            Tabs & Accordions</a>

                    </li>

                    <li>

                        <a href="ui_jqueryui.html">

                            jQuery UI Components</a>

                    </li>

                    <li>

                        <a href="ui_sliders.html">

                            Sliders</a>

                    </li>

                    <li>

                        <a href="ui_tiles.html">

                            Tiles</a>

                    </li>

                    <li>

                        <a href="ui_typography.html">

                            Typography</a>

                    </li>

                    <li>

                        <a href="ui_tree.html">

                            Tree View</a>

                    </li>

                    <li>

                        <a href="ui_nestable.html">

                            Nestable List</a>

                    </li>

                </ul>

            </li>

            <li class="">

                <a href="javascript:;">

                    <i class="icon-table"></i>

                    <span class="title">Form Stuff</span>

                    <span class="arrow "></span>

                </a>

                <ul class="sub-menu">

                    <li>

                        <a href="form_layout.html">

                            Form Layouts</a>

                    </li>

                    <li>

                        <a href="form_samples.html">

                            Advance Form Samples</a>

                    </li>

                    <li>

                        <a href="form_component.html">

                            Form Components</a>

                    </li>

                    <li>

                        <a href="form_wizard.html">

                            Form Wizard</a>

                    </li>

                    <li>

                        <a href="form_validation.html">

                            Form Validation</a>

                    </li>

                    <li>

                        <a href="form_fileupload.html">

                            Multiple File Upload</a>

                    </li>

                    <li>

                        <a href="form_dropzone.html">

                            Dropzone File Upload</a>

                    </li>

                </ul>

            </li>

            <li class="">

                <a href="javascript:;">

                    <i class="icon-briefcase"></i>

                    <span class="title">Pages</span>

                    <span class="arrow "></span>

                </a>

                <ul class="sub-menu">

                    <li>

                        <a href="page_timeline.html">

                            <i class="icon-time"></i>

                            Timeline</a>

                    </li>

                    <li>

                        <a href="page_coming_soon.html">

                            <i class="icon-cogs"></i>

                            Coming Soon</a>

                    </li>

                    <li>

                        <a href="page_blog.html">

                            <i class="icon-comments"></i>

                            Blog</a>

                    </li>

                    <li>

                        <a href="page_blog_item.html">

                            <i class="icon-font"></i>

                            Blog Post</a>

                    </li>

                    <li>

                        <a href="page_news.html">

                            <i class="icon-coffee"></i>

                            News</a>

                    </li>

                    <li>

                        <a href="page_news_item.html">

                            <i class="icon-bell"></i>

                            News View</a>

                    </li>

                    <li>

                        <a href="page_about.html">

                            <i class="icon-group"></i>

                            About Us</a>

                    </li>

                    <li>

                        <a href="page_contact.html">

                            <i class="icon-envelope-alt"></i>

                            Contact Us</a>

                    </li>

                    <li>

                        <a href="page_calendar.html">

                            <i class="icon-calendar"></i>

                            Calendar</a>

                    </li>

                </ul>

            </li>

            <li class="active ">

                <a href="javascript:;">

                    <i class="icon-gift"></i>

                    <span class="title">Extra</span>

                    <span class="selected"></span>

                    <span class="arrow open"></span>

                </a>

                <ul class="sub-menu">

                    <li>

                        <a href="extra_profile.html">

                            User Profile</a>

                    </li>

                    <li>

                        <a href="extra_lock.html">

                            Lock Screen</a>

                    </li>

                    <li>

                        <a href="extra_faq.html">

                            FAQ</a>

                    </li>

                    <li>

                        <a href="inbox.html">

                            Inbox</a>

                    </li>

                    <li class="active">

                        <a href="extra_search.html">

                            Search Results</a>

                    </li>

                    <li>

                        <a href="extra_invoice.html">

                            Invoice</a>

                    </li>

                    <li>

                        <a href="extra_pricing_table.html">

                            Pricing Tables</a>

                    </li>

                    <li>

                        <a href="extra_image_manager.html">

                            Image Manager</a>

                    </li>

                    <li>

                        <a href="extra_404_option1.html">

                            404 Page Option 1</a>

                    </li>

                    <li>

                        <a href="extra_404_option2.html">

                            404 Page Option 2</a>

                    </li>

                    <li>

                        <a href="extra_404_option3.html">

                            404 Page Option 3</a>

                    </li>

                    <li>

                        <a href="extra_500_option1.html">

                            500 Page Option 1</a>

                    </li>

                    <li>

                        <a href="extra_500_option2.html">

                            500 Page Option 2</a>

                    </li>

                </ul>

            </li>

            <li>

                <a class="active" href="javascript:;">

                    <i class="icon-sitemap"></i>

                    <span class="title">3 Level Menu</span>

                    <span class="arrow "></span>

                </a>

                <ul class="sub-menu">

                    <li>

                        <a href="javascript:;">

                            Item 1

                            <span class="arrow"></span>

                        </a>

                        <ul class="sub-menu">

                            <li><a href="#">Sample Link 1</a></li>

                            <li><a href="#">Sample Link 2</a></li>

                            <li><a href="#">Sample Link 3</a></li>

                        </ul>

                    </li>

                    <li>

                        <a href="javascript:;">

                            Item 1

                            <span class="arrow"></span>

                        </a>

                        <ul class="sub-menu">

                            <li><a href="#">Sample Link 1</a></li>

                            <li><a href="#">Sample Link 1</a></li>

                            <li><a href="#">Sample Link 1</a></li>

                        </ul>

                    </li>

                    <li>

                        <a href="#">

                            Item 3

                        </a>

                    </li>

                </ul>

            </li>

            <li>

                <a href="javascript:;">

                    <i class="icon-folder-open"></i>

                    <span class="title">4 Level Menu</span>

                    <span class="arrow "></span>

                </a>

                <ul class="sub-menu">

                    <li>

                        <a href="javascript:;">

                            <i class="icon-cogs"></i>

                            Item 1

                            <span class="arrow"></span>

                        </a>

                        <ul class="sub-menu">

                            <li>

                                <a href="javascript:;">

                                    <i class="icon-user"></i>

                                    Sample Link 1

                                    <span class="arrow"></span>

                                </a>

                                <ul class="sub-menu">

                                    <li><a href="#"><i class="icon-remove"></i> Sample Link 1</a></li>

                                    <li><a href="#"><i class="icon-pencil"></i> Sample Link 1</a></li>

                                    <li><a href="#"><i class="icon-edit"></i> Sample Link 1</a></li>

                                </ul>

                            </li>

                            <li><a href="#"><i class="icon-user"></i> Sample Link 1</a></li>

                            <li><a href="#"><i class="icon-external-link"></i> Sample Link 2</a></li>

                            <li><a href="#"><i class="icon-bell"></i> Sample Link 3</a></li>

                        </ul>

                    </li>

                    <li>

                        <a href="javascript:;">

                            <i class="icon-globe"></i>

                            Item 2

                            <span class="arrow"></span>

                        </a>

                        <ul class="sub-menu">

                            <li><a href="#"><i class="icon-user"></i> Sample Link 1</a></li>

                            <li><a href="#"><i class="icon-external-link"></i> Sample Link 1</a></li>

                            <li><a href="#"><i class="icon-bell"></i> Sample Link 1</a></li>

                        </ul>

                    </li>

                    <li>

                        <a href="#">

                            <i class="icon-folder-open"></i>

                            Item 3

                        </a>

                    </li>

                </ul>

            </li>

            <li class="">

                <a href="javascript:;">

                    <i class="icon-user"></i>

                    <span class="title">Login Options</span>

                    <span class="arrow "></span>

                </a>

                <ul class="sub-menu">

                    <li>

                        <a href="login.html">

                            Login Form 1</a>

                    </li>

                    <li>

                        <a href="login_soft.html">

                            Login Form 2</a>

                    </li>

                </ul>

            </li>

            <li class="">

                <a href="javascript:;">

                    <i class="icon-th"></i>

                    <span class="title">Data Tables</span>

                    <span class="arrow "></span>

                </a>

                <ul class="sub-menu">

                    <li>

                        <a href="table_basic.html">

                            Basic Tables</a>

                    </li>

                    <li>

                        <a href="table_responsive.html">

                            Responsive Tables</a>

                    </li>

                    <li>

                        <a href="table_managed.html">

                            Managed Tables</a>

                    </li>

                    <li>

                        <a href="table_editable.html">

                            Editable Tables</a>

                    </li>

                    <li>

                        <a href="table_advanced.html">

                            Advanced Tables</a>

                    </li>

                </ul>

            </li>

            <li class="">

                <a href="javascript:;">

                    <i class="icon-file-text"></i>

                    <span class="title">Portlets</span>

                    <span class="arrow "></span>

                </a>

                <ul class="sub-menu">

                    <li>

                        <a href="portlet_general.html">

                            General Portlets</a>

                    </li>

                    <li>

                        <a href="portlet_draggable.html">

                            Draggable Portlets</a>

                    </li>

                </ul>

            </li>

            <li class="">

                <a href="javascript:;">

                    <i class="icon-map-marker"></i>

                    <span class="title">Maps</span>

                    <span class="arrow "></span>

                </a>

                <ul class="sub-menu">

                    <li>

                        <a href="maps_google.html">

                            Google Maps</a>

                    </li>

                    <li>

                        <a href="maps_vector.html">

                            Vector Maps</a>

                    </li>

                </ul>

            </li>

            <li class="last ">

                <a href="charts.html">

                    <i class="icon-bar-chart"></i>

                    <span class="title">Visual Charts</span>

                </a>

            </li>

        </ul>

        <!-- END SIDEBAR MENU -->

    </div>

    <!-- END SIDEBAR -->

    <!-- BEGIN PAGE -->

    <div class="page-content">

        <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

        <div id="portlet-config" class="modal hide">

            <div class="modal-header">

                <button data-dismiss="modal" class="close" type="button"></button>

                <h3>portlet Settings</h3>

            </div>

            <div class="modal-body">

                <p>Here will be a configuration form</p>

            </div>

        </div>

        <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

        <!-- BEGIN PAGE CONTAINER-->

        <div class="container-fluid">

            <!-- BEGIN PAGE HEADER-->

            <div class="row-fluid">

                <div class="span12">

                    <!-- BEGIN PAGE TITLE & BREADCRUMB-->

                    <h3 class="page-title">

                        搜索结果
                        <small>搜索结果</small>

                    </h3>

                    <ul class="breadcrumb">

                        <li>

                            <i class="icon-home"></i>

                            <a href="index.html">短租网</a>

                            <i class="icon-angle-right"></i>

                        </li>

                        <li>

                            <a href="#">租赁管理</a>

                            <i class="icon-angle-right"></i>

                        </li>

                        <li><a href="#">搜索結果</a></li>

                    </ul>

                    <!-- END PAGE TITLE & BREADCRUMB-->

                </div>

            </div>

            <!-- END PAGE HEADER-->

            <!-- BEGIN PAGE CONTENT-->

            <div class="row-fluid">

                <div class="tabbable tabbable-custom tabbable-full-width">

                    <!-- <ul class="nav nav-tabs">

                         <li class="active"><a data-toggle="tab" href="#tab_2_2">Booking Search 1</a></li>

                     </ul>-->

                    <div class="tab-content">

                        <div id="tab_2_2" class="tab-pane active">

                            <div class="row-fluid">

                                <div class="span8 booking-search">

                                    <form action="<%=basePath%>rent/findHouses.action" method="post" id="conditionForm">

                                        <div class="clearfix margin-bottom-10">

                                            <label>地点</label>

                                            <div class="input-icon left">

                                                <i class="icon-map-marker"></i>

                                                <input class="m-wrap span12" type="text"
                                                       placeholder="请输入地点" name="addressContain">

                                            </div>

                                        </div>

                                        <div class="clearfix margin-bottom-20">


                                            <div class="span6">
                                                <div class="control-group pull-left margin-right-20">

                                                    <label class="control-label">房屋面积：</label>

                                                    <div class="controls">

                                                        <input type="text" id="minArea" name="minArea"
                                                               class="m-wrap span6" placeholder="请输入最小面积">
                                                        <input type="text" id="maxArea" name="maxArea"
                                                               class="m-wrap span6" placeholder="请输入最大面积">

                                                    </div>
                                                </div>

                                            </div>
                                            <div class="span6">
                                                <div class="control-group pull-left">

                                                    <label class="control-label">房屋价格：</label>

                                                    <div class="controls">

                                                        <input type="text" id="mixPrice" name="minArea"
                                                               class="m-wrap span6" placeholder="请输入最低价格">
                                                        <input type="text" id="maxPrice" name="maxArea"
                                                               class="m-wrap span6" placeholder="请输入最高价格">
                                                    </div>

                                                </div>
                                            </div>

                                        </div>

                                        <%--<div class="clearfix margin-bottom-10">

                                            <div class="pull-left margin-right-20">

                                                <div class="control-group booking-option">

                                                    <label class="control-label">允许最低租金</label>

                                                    <div class="controls controls-uniform">

                                                        <label class="input-info">

                                                            <input type="text" name="optionsRadios2" value=""/>

                                                        </label>


                                                    </div>

                                                </div>

                                            </div>

                                            <div class="pull-left">

                                                <div class="control-group booking-option">

                                                    <label class="control-label"><span>允许最高租金</span></label>

                                                    <div class="controls controls-uniform">

                                                        <label class="input-info">

                                                            <input type="text" name="optionsRadios2" value=""/>

                                                        </label>

                                                    </div>

                                                </div>

                                            </div>

                                        </div>--%>

                                        <input type="submit" class="btn blue btn-block" value="查找"><%--查找--%> <i
                                            class="m-icon-swapright m-icon-white"></i></input>

                                    </form>

                                </div>

                                <!--end booking-search-->

                            </div>

                            <!--end row-fluid-->

                            <div class="space40"></div>

                            <div class="row-fluid" id="houstList">
                                <c:choose>
                                    <c:when test="${houseList != null && houseList.size() > 0}">
                                        <c:forEach items="${houseList}" var="item" step="2" varStatus="status">
                                            <div class="row-fluid margin-bottom-20">

                                                <div class="span6 booking-blocks">

                                                    <div class="pull-left booking-img">

                                                        <img src="<%=basePath%>assets/media/image/image4.jpg" alt="">

                                                        <ul class="unstyled">

                                                            <li><i class="icon-money"></i> ￥${item.price}</li>

                                                            <li>
                                                                <i class="icon-map-marker"></i>${fn:substring(item.address,0, 10)}
                                                            </li>

                                                        </ul>

                                                    </div>

                                                    <div style="overflow:hidden;">

                                                        <ul class="unstyled inline">

                                                            <li><i class="icon-star"></i></li>

                                                            <li><i class="icon-star"></i></li>

                                                            <li><i class="icon-star"></i></li>

                                                            <li><i class="icon-star"></i></li>

                                                            <li><i class="icon-star-empty"></i></li>

                                                        </ul>

                                                        <p>${fn:substring(item.content,0, 30)}. <a
                                                                href="<%=basePath%>rent/${item.id}.action">查看更多</a></p>

                                                    </div>

                                                </div>
                                                <c:if test="${status.index + 1 < houseList.size()}">
                                                    <div class="span6 booking-blocks">

                                                        <div class="pull-left booking-img">

                                                            <img src="<%=basePath%>assets/media/image/image5.jpg"
                                                                 alt="">

                                                            <ul class="unstyled">

                                                                <li><i class="icon-money"></i>
                                                                    ￥${houseList[status.index+1].price}</li>

                                                                <li>
                                                                    <i class="icon-map-marker"></i>${fn:substring(houseList[status.index+1].address,0, 10)}
                                                                </li>

                                                            </ul>

                                                        </div>

                                                        <div style="overflow:hidden;">


                                                            <ul class="unstyled inline">

                                                                <li><i class="icon-star"></i></li>

                                                                <li><i class="icon-star"></i></li>

                                                                <li><i class="icon-star"></i></li>

                                                                <li><i class="icon-star"></i></li>

                                                                <li><i class="icon-star"></i></li>

                                                            </ul>

                                                            <p>${fn:substring(houseList[status.index+1].content,0, 30)}.
                                                                <a
                                                                        href="<%=basePath%>rent/${houseList[status.index+1].id}.action/">查看更多</a></p>

                                                        </div>

                                                    </div>
                                                </c:if>

                                            </div>
                                        </c:forEach>
                                    </c:when>
                                    <c:when test="${houseList == null || houseList.size() == 0 }">
                                        <tr><td colspan="12" align="center" >暂无数据！</td></tr>
                                    </c:when>

                                </c:choose>

                            </div>

                            <div class="spac40"></div>

                            <div class="pagination pagination-centered">

                                <ul>

                                    <li><a href="#">上一页</a></li>

                                    <li class="active"><a href="#">1</a></li>

                                    <li><a href="#">下一页</a></li>

                                </ul>

                            </div>

                        </div>

                    </div>

                </div>

                <!--end tabbable-->

            </div>

            <!-- END PAGE CONTENT-->

        </div>

        <!-- END PAGE CONTAINER-->

    </div>

    <!-- END PAGE -->

</div>

<!-- END CONTAINER -->

<!-- BEGIN FOOTER -->

<div class="footer">

    <div class="footer-inner">

        2013 &copy; Metronic by keenthemes.

    </div>

    <div class="footer-tools">

			<span class="go-top">

			<i class="icon-angle-up"></i>

			</span>

    </div>

</div>

<!-- END FOOTER -->

<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

<!-- BEGIN CORE PLUGINS -->

<script src="<%=basePath%>assets/media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

<script src="<%=basePath%>assets/media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

<script src="<%=basePath%>assets/media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>

<script src="<%=basePath%>assets/media/js/bootstrap.min.js" type="text/javascript"></script>

<!--[if lt IE 9]>

<script src="<%=basePath%>assets/media/js/excanvas.min.js"></script>

<script src="<%=basePath%>assets/media/js/respond.min.js"></script>

<![endif]-->

<script src="<%=basePath%>assets/media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

<script src="<%=basePath%>assets/media/js/jquery.blockui.min.js" type="text/javascript"></script>

<script src="<%=basePath%>assets/media/js/jquery.cookie.min.js" type="text/javascript"></script>

<script src="<%=basePath%>assets/media/js/jquery.uniform.min.js" type="text/javascript"></script>

<!-- END CORE PLUGINS -->

<script type="text/javascript" src="<%=basePath%>assets/media/js/bootstrap-datepicker.js"></script>

<script src="<%=basePath%>assets/media/js/jquery.fancybox.pack.js"></script>

<script src="<%=basePath%>assets/media/js/app.js"></script>

<script src="<%=basePath%>assets/media/js/search.js"></script>

<script>

    jQuery(document).ready(function () {

        App.init();

        Search.init();

    });

</script>

<!-- END JAVASCRIPTS -->

<script type="text/javascript">  var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-37564768-1']);
_gaq.push(['_setDomainName', 'keenthemes.com']);
_gaq.push(['_setAllowLinker', true]);
_gaq.push(['_trackPageview']);
(function () {
    var ga = document.createElement('script');
    ga.type = 'text/javascript';
    ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(ga, s);
})();</script>
</body>

<!-- END BODY -->

</html>