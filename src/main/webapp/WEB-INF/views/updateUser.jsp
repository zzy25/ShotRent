<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: zhuoxiong
  Date: 2016/3/17
  Time: 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

    <meta charset="utf-8" />

    <title>Metronic |个人信息修改 </title>

    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <meta content="" name="description" />

    <meta content="" name="author" />

    <!-- BEGIN GLOBAL MANDATORY STYLES -->

    <link href="<%=basePath%>assets/media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    <link href="<%=basePath%>assets/media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

    <link href="<%=basePath%>assets/media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

    <link href="<%=basePath%>assets/media/css/style-metro.css" rel="stylesheet" type="text/css"/>

    <link href="<%=basePath%>assets/media/css/style.css" rel="stylesheet" type="text/css"/>

    <link href="<%=basePath%>assets/media/css/style-responsive.css" rel="stylesheet" type="text/css"/>

    <link href="<%=basePath%>assets/media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

    <link href="<%=basePath%>assets/media/css/uniform.default.css" rel="stylesheet" type="text/css"/>

    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN PAGE LEVEL STYLES -->

    <link rel="stylesheet" type="text/css" href="<%=basePath%>assets/media/css/select2_metro.css" />

    <link rel="stylesheet" type="text/css" href="<%=basePath%>assets/media/css/chosen.css" />

    <!-- END PAGE LEVEL STYLES -->

    <link rel="shortcut icon" href="<%=basePath%>assets/media/image/favicon.ico" />

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-header-fixed">

<!-- BEGIN HEADER -->

<jsp:include page="header.jsp"/>

<!-- END HEADER -->

<!-- BEGIN CONTAINER -->

<div class="page-container row-fluid">

    <!-- BEGIN SIDEBAR MENU -->
    <c:set var="menuCurrent" value="1" scope="session"/>
    <jsp:include page="sidebar.jsp"/>

    <!-- END SIDEBAR MENU -->

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

                    <!-- BEGIN STYLE CUSTOMIZER -->

                    <!--<div class="color-panel hidden-phone">-->

                    <!--<div class="color-mode-icons icon-color"></div>-->

                    <!--<div class="color-mode-icons icon-color-close"></div>-->

                    <!--<div class="color-mode">-->

                    <!--<p>THEME COLOR</p>-->

                    <!--<ul class="inline">-->

                    <!--<li class="color-black current color-default" data-style="default"></li>-->

                    <!--<li class="color-blue" data-style="blue"></li>-->

                    <!--<li class="color-brown" data-style="brown"></li>-->

                    <!--<li class="color-purple" data-style="purple"></li>-->

                    <!--<li class="color-grey" data-style="grey"></li>-->

                    <!--<li class="color-white color-light" data-style="light"></li>-->

                    <!--</ul>-->

                    <!--<label>-->

                    <!--<span>Layout</span>-->

                    <!--<select class="layout-option m-wrap small">-->

                    <!--<option value="fluid" selected>Fluid</option>-->

                    <!--<option value="boxed">Boxed</option>-->

                    <!--</select>-->

                    <!--</label>-->

                    <!--<label>-->

                    <!--<span>Header</span>-->

                    <!--<select class="header-option m-wrap small">-->

                    <!--<option value="fixed" selected>Fixed</option>-->

                    <!--<option value="default">Default</option>-->

                    <!--</select>-->

                    <!--</label>-->

                    <!--<label>-->

                    <!--<span>Sidebar</span>-->

                    <!--<select class="sidebar-option m-wrap small">-->

                    <!--<option value="fixed">Fixed</option>-->

                    <!--<option value="default" selected>Default</option>-->

                    <!--</select>-->

                    <!--</label>-->

                    <!--<label>-->

                    <!--<span>Footer</span>-->

                    <!--<select class="footer-option m-wrap small">-->

                    <!--<option value="fixed">Fixed</option>-->

                    <!--<option value="default" selected>Default</option>-->

                    <!--</select>-->

                    <!--</label>-->

                    <!--</div>-->

                    <!--</div>-->

                    <!-- END BEGIN STYLE CUSTOMIZER -->

                    <h3 class="page-title">

                        短租网

                        <!--<small>form wizard sample</small>-->

                    </h3>

                    <ul class="breadcrumb">

                        <li>

                            <i class="icon-home"></i>

                            <a href="index.html">主页</a>

                            <span class="icon-angle-right"></span>

                        </li>

                        <li>

                            <a href="#">用户管理</a>

                            <span class="icon-angle-right"></span>

                        </li>

                        <li><a href="#">个人信息修改</a></li>

                    </ul>

                </div>

            </div>

            <!-- END PAGE HEADER-->

            <!-- BEGIN PAGE CONTENT-->

            <div class="row-fluid">

                <div class="span12">

                    <div class="portlet box blue" id="form_wizard_1">

                        <div class="portlet-title">

                            <div class="caption">

                                <!--<i class="icon-reorder"></i> Form Wizard - <span class="step-title">Step 1 of 4</span>-->

                            </div>

                            <!--<div class="tools hidden-phone">-->

                            <!--<a href="javascript:;" class="collapse"></a>-->

                            <!--<a href="#portlet-config" data-toggle="modal" class="config"></a>-->

                            <!--<a href="javascript:;" class="reload"></a>-->

                            <!--<a href="javascript:;" class="remove"></a>-->

                            <!--</div>-->

                        </div>

                        <div class="portlet-body form">

                            <form action="#" class="form-horizontal" id="submit_form">

                                <div class="form-wizard">

                                    <div class="navbar steps">

                                        <div class="navbar-inner">

                                            <ul class="row-fluid">

                                                <li class="span3">

                                                    <a href="#tab1" data-toggle="tab" class="step active">

                                                        <!--<span class="number">1</span>-->

                                                        <span class="desc"><i class="icon-ok"></i> 信息修改</span>

                                                    </a>

                                                </li>

                                                <!--<li class="span3">-->

                                                <!--<a href="#tab2" data-toggle="tab" class="step">-->

                                                <!--<span class="number">2</span>-->

                                                <!--<span class="desc"><i class="icon-ok"></i> Profile Setup</span>   -->

                                                <!--</a>-->

                                                <!--</li>-->

                                                <!--<li class="span3">-->

                                                <!--<a href="#tab3" data-toggle="tab" class="step">-->

                                                <!--<span class="number">3</span>-->

                                                <!--<span class="desc"><i class="icon-ok"></i> Billing Setup</span>   -->

                                                <!--</a>-->

                                                <!--</li>-->

                                                <!--<li class="span3">-->

                                                <!--<a href="#tab4" data-toggle="tab" class="step">-->

                                                <!--<span class="number">4</span>-->

                                                <!--<span class="desc"><i class="icon-ok"></i> Confirm</span>   -->

                                                <!--</a> -->

                                                <!--</li>-->

                                            </ul>

                                        </div>

                                    </div>

                                    <div id="bar" class="progress progress-success progress-striped">

                                        <div class="bar"></div>

                                    </div>

                                    <div class="tab-content">

                                        <div class="alert alert-error hide">

                                            <button class="close" data-dismiss="alert"></button>

                                            输入信息有误.

                                        </div>

                                        <div class="alert alert-success hide">

                                            <button class="close" data-dismiss="alert"></button>

                                            成功

                                        </div>

                                        <div class="tab-pane active" id="tab1">

                                            <h3 class="block">输入信息</h3>

                                            <div class="control-group">

                                                <label class="control-label">账户<span class="required">*</span></label>

                                                <div class="controls">

                                                    <input type="text" class="span6 m-wrap" name="username" value="${user.username}"/>

                                                    <span class="help-inline">输入账户</span>

                                                </div>

                                            </div>

                                            <div class="control-group">

                                                <label class="control-label">密码<span class="required">*</span></label>

                                                <div class="controls">

                                                    <input type="password" class="span6 m-wrap" name="password" id="submit_form_password"/>

                                                    <span class="help-inline">输入密码</span>

                                                </div>

                                            </div>

                                            <div class="control-group">

                                                <label class="control-label">确认密码<span class="required">*</span></label>

                                                <div class="controls">

                                                    <input type="password" class="span6 m-wrap" name="rpassword"/>

                                                    <span class="help-inline">确认密码</span>

                                                </div>

                                            </div>

                                            <div class="control-group">

                                                <label class="control-label">邮箱<span class="required">*</span></label>

                                                <div class="controls">

                                                    <input type="text" class="span6 m-wrap" name="email" value="${user.email}"/>

                                                    <span class="help-inline">输入邮箱</span>

                                                </div>

                                            </div>

                                        </div>


                                        <div class="control-group">

                                            <label class="control-label">手机</label>

                                            <div class="controls">

                                                <input type="text" class="span6 m-wrap" name="mobile" value="${user.mobile}"/>

                                                <span class="help-inline">输入手机号</span>

                                            </div>

                                        </div>

                                        <div class="tab-pane" id="tab4">

                                            <h3 class="block">Confirm your account</h3>

                                            <h4 class="form-section">Account</h4>

                                            <div class="control-group">

                                                <label class="control-label">Username:</label>

                                                <div class="controls">

                                                    <span class="text display-value" data-display="username"></span>

                                                </div>

                                            </div>

                                            <div class="control-group">

                                                <label class="control-label">Email:</label>

                                                <div class="controls">

                                                    <span class="text display-value" data-display="email"></span>

                                                </div>

                                            </div>

                                            <h4 class="form-section">Profile</h4>

                                            <div class="control-group">

                                                <label class="control-label">Fullname:</label>

                                                <div class="controls">

                                                    <span class="text display-value" data-display="fullname"></span>

                                                </div>

                                            </div>

                                            <div class="control-group">

                                                <label class="control-label">Gender:</label>

                                                <div class="controls">

                                                    <span class="text display-value" data-display="gender"></span>

                                                </div>

                                            </div>

                                            <div class="control-group">

                                                <label class="control-label">Phone:</label>

                                                <div class="controls">

                                                    <span class="text display-value" data-display="phone"></span>

                                                </div>

                                            </div>

                                            <div class="control-group">

                                                <label class="control-label">Address:</label>

                                                <div class="controls">

                                                    <span class="text display-value" data-display="address"></span>

                                                </div>

                                            </div>

                                            <div class="control-group">

                                                <label class="control-label">City/Town:</label>

                                                <div class="controls">

                                                    <span class="text display-value" data-display="city"></span>

                                                </div>

                                            </div>

                                            <div class="control-group">

                                                <label class="control-label">Country:</label>

                                                <div class="controls">

                                                    <span class="text display-value" data-display="country"></span>

                                                </div>

                                            </div>

                                            <div class="control-group">

                                                <label class="control-label">Remarks:</label>

                                                <div class="controls">

                                                    <span class="text display-value" data-display="remarks"></span>

                                                </div>

                                            </div>

                                            <h4 class="form-section">Billing</h4>

                                            <div class="control-group">

                                                <label class="control-label">Card Holder Name:</label>

                                                <div class="controls">

                                                    <span class="text display-value" data-display="card_name"></span>

                                                </div>

                                            </div>

                                            <div class="control-group">

                                                <label class="control-label">Card Number:</label>

                                                <div class="controls">

                                                    <span class="text display-value" data-display="card_number"></span>

                                                </div>

                                            </div>

                                            <div class="control-group">

                                                <label class="control-label">CVC:</label>

                                                <div class="controls">

                                                    <span class="text display-value" data-display="card_cvc"></span>

                                                </div>

                                            </div>

                                            <div class="control-group">

                                                <label class="control-label">Expiration:</label>

                                                <div class="controls">

                                                    <span class="text display-value" data-display="card_expiry"></span>

                                                </div>

                                            </div>

                                            <div class="control-group">

                                                <label class="control-label">Payment Options:</label>

                                                <div class="controls">

                                                    <span class="text display-value" data-display="payment"></span>

                                                </div>

                                            </div>

                                        </div>

                                    </div>

                                    <div class="form-actions clearfix">

                                        <a href="javascript:;" class="btn button-previous">

                                            <i class="m-icon-swapleft"></i> Back

                                        </a>

                                        <a href="javascript:;" class="btn blue button-next">

                                            确认 <i class="m-icon-swapright m-icon-white"></i>

                                        </a>

                                        <a href="javascript:;" class="btn green button-submit">

                                            确认<i class="m-icon-swapright m-icon-white"></i>

                                        </a>

                                    </div>

                                </div>

                            </form>

                        </div>

                    </div>

                </div>

            </div>

            <!-- END PAGE CONTENT-->

        </div>

        <!-- END PAGE CONTAINER-->

    </div>

    <!-- END PAGE -->

</div>

<!-- END CONTAINER -->

<!-- BEGIN FOOTER -->

<jsp:include page="footer.jsp"/>

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

<script src="<%=basePath%>assets/media/js/jquery.uniform.min.js" type="text/javascript" ></script>

<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL PLUGINS -->

<script type="text/javascript" src="<%=basePath%>assets/media/js/jquery.validate.min.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/additional-methods.min.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/jquery.bootstrap.wizard.min.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/chosen.jquery.min.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/select2.min.js"></script>

<!-- END PAGE LEVEL PLUGINS -->

<!-- BEGIN PAGE LEVEL SCRIPTS -->

<script src="<%=basePath%>assets/media/js/app.js"></script>

<script src="<%=basePath%>assets/media/js/form-wizard.js"></script>

<!-- END PAGE LEVEL SCRIPTS -->

<script>

    jQuery(document).ready(function() {

        // initiate layout and plugins

        App.init();

        FormWizard.init();

    });

</script>

<!-- END JAVASCRIPTS -->

<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script></body>

<!-- END BODY -->

</html>