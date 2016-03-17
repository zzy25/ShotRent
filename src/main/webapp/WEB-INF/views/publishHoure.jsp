<!DOCTYPE html>
<%--<%@ page trimDirectiveWhitespaces="true" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: andrew
  Date: 16-3-16
  Time: 下午4:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!-->
<html lang="en"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

    <meta charset="utf-8" />

    <title>短租网 | 房屋管理 - 房屋信息发布</title>

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

    <link rel="stylesheet" type="text/css" href="<%=basePath%>assets/media/css/bootstrap-fileupload.css"/>

    <link rel="stylesheet" type="text/css" href="<%=basePath%>assets/media/css/jquery.gritter.css"/>

    <link rel="stylesheet" type="text/css" href="<%=basePath%>assets/media/css/chosen.css"/>

    <link rel="stylesheet" type="text/css" href="<%=basePath%>assets/media/css/select2_metro.css"/>

    <link rel="stylesheet" type="text/css" href="<%=basePath%>assets/media/css/jquery.tagsinput.css"/>

    <link rel="stylesheet" type="text/css" href="<%=basePath%>assets/media/css/clockface.css"/>

    <link rel="stylesheet" type="text/css" href="<%=basePath%>assets/media/css/bootstrap-wysihtml5.css"/>

    <link rel="stylesheet" type="text/css" href="<%=basePath%>assets/media/css/datepicker.css"/>

    <link rel="stylesheet" type="text/css" href="<%=basePath%>assets/media/css/timepicker.css"/>

    <link rel="stylesheet" type="text/css" href="<%=basePath%>assets/media/css/colorpicker.css"/>

    <link rel="stylesheet" type="text/css" href="<%=basePath%>assets/media/css/bootstrap-toggle-buttons.css"/>

    <link rel="stylesheet" type="text/css" href="<%=basePath%>assets/media/css/daterangepicker.css"/>

    <link rel="stylesheet" type="text/css" href="<%=basePath%>assets/media/css/datetimepicker.css"/>

    <link rel="stylesheet" type="text/css" href="<%=basePath%>assets/media/css/multi-select-metro.css"/>

    <link href="<%=basePath%>assets/media/css/bootstrap-modal.css" rel="stylesheet" type="text/css"/>

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

    <!-- BEGIN SIDEBAR -->

    <jsp:include page="sidebar.jsp"/>

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

                    <!-- BEGIN STYLE CUSTOMIZER -->

                    <div class="color-panel hidden-phone">

                        <div class="color-mode-icons icon-color"></div>

                        <div class="color-mode-icons icon-color-close"></div>

                        <div class="color-mode">

                            <p>THEME COLOR</p>

                            <ul class="inline">

                                <li class="color-black current color-default" data-style="default"></li>

                                <li class="color-blue" data-style="blue"></li>

                                <li class="color-brown" data-style="brown"></li>

                                <li class="color-purple" data-style="purple"></li>

                                <li class="color-grey" data-style="grey"></li>

                                <li class="color-white color-light" data-style="light"></li>

                            </ul>

                            <label>

                                <span>Layout</span>

                                <select class="layout-option m-wrap small">

                                    <option value="fluid" selected>Fluid</option>

                                    <option value="boxed">Boxed</option>

                                </select>

                            </label>

                            <label>

                                <span>Header</span>

                                <select class="header-option m-wrap small">

                                    <option value="fixed" selected>Fixed</option>

                                    <option value="default">Default</option>

                                </select>

                            </label>

                            <label>

                                <span>Sidebar</span>

                                <select class="sidebar-option m-wrap small">

                                    <option value="fixed">Fixed</option>

                                    <option value="default" selected>Default</option>

                                </select>

                            </label>

                            <label>

                                <span>Footer</span>

                                <select class="footer-option m-wrap small">

                                    <option value="fixed">Fixed</option>

                                    <option value="default" selected>Default</option>

                                </select>

                            </label>

                        </div>

                    </div>

                    <!-- END BEGIN STYLE CUSTOMIZER -->

                    <h3 class="page-title">

                        房屋信息发布

                        <small>房屋详情登记</small>

                    </h3>

                    <ul class="breadcrumb">

                        <li>

                            <i class="icon-home"></i>

                            <a href="../../metronic/index.html">短租网</a>

                            <span class="icon-angle-right"></span>

                        </li>

                        <li>

                            <a href="#">房屋管理</a>

                            <span class="icon-angle-right"></span>

                        </li>

                        <li><a href="#">房屋信息发布</a></li>

                    </ul>

                </div>

            </div>

            <!-- END PAGE HEADER-->

            <!-- BEGIN PAGE CONTENT-->

            <div class="row-fluid">

                <div class="span12">

                    <!-- BEGIN SAMPLE FORM PORTLET-->

                    <div class="portlet box blue">

                        <div class="portlet-title">

                            <div class="caption"><i class="icon-reorder"></i>信息填写表</div>

                        </div>

                    </div>

                    <div class="portlet-body form">

                        <!-- BEGIN FORM-->

                        <form action="#" class="form-horizontal">

                            <div class="control-group">

                                <label class="control-label">房屋简介</label>

                                <div class="controls">

                                    <textarea class="span6 m-wrap" rows="3" name="content">${house.content}</textarea>

                                    <span class="help-inline">介绍您要出租的房屋</span>

                                </div>

                            </div>


                            <div class="control-group">

                                <label class="control-label">联系方式</label>

                                <div class="controls">

                                    <input type="text" name="mobile" value="${house.mobile}" class="span6 m-wrap popovers" data-trigger="hover" data-content="方便我们向您核实房屋信息，以及租房者跟您联系" data-original-title="重要~" />

                                    <span class="help-inline">填写手机号</span>
                                </div>

                            </div>

                            <div class="control-group">

                                <label class="control-label">固话</label>

                                <div class="controls">

                                    <input type="text" name="tel" value="${house.tel}" class="span6 m-wrap tooltips" data-trigger="hover" data-original-title="请填写紧急联系人保证我们可以找到您" />

                                    <span class="help-inline">填写座机号</span>
                                </div>

                            </div>

                                <div class="control-group">

                            <div class="control-group">

                                <label class="control-label">房屋面积</label>

                                <div class="controls">

                                    <div class="input-icon left">

                                        <i class="icon-envelope"></i>


                                        <input class="m-wrap "name="area" ${house.area} type="text" placeholder="" />

                                    </div>

                                </div>

                            </div>

                            <div class="control-group">

                                <label class="control-label">租金</label>

                                <div class="controls">

                                    <div class="input-prepend">

                                        <span class="add-on">元</span><input class="m-wrap " type="text" name="price" value="${house.price}" />

                                    </div>

                                </div>

                            </div>

                            <div class="control-group">

                                <label class="control-label">备选房型</label>

                                <div class="controls">

                                    <select class="span6 m-wrap" data-placeholder="Choose a Category" tabindex="1" name="houseType">

                                        <option value="0">选择</option>

                                        <option value="0">普通</option>

                                        <option value="1">高层</option>

                                        <option value="2">别墅</option>

                                        <option value="3">跃层</option>

                                    </select>

                                </div>

                            </div>

                            <div class="control-group">

                                <label class="control-label">屋内家具</label>

                                <div class="controls">

                                    <div class="row-fluid">

                                        <div class="span3">

                                            <label class="checkbox line">

                                                <input type="checkbox" value="" /> 冰箱

                                            </label>

                                            <label class="checkbox line">

                                                <input type="checkbox" value="" /> 洗衣机

                                            </label>

                                            <label class="checkbox line">

                                                <input type="checkbox" value="" /> 空调

                                            </label>

                                            <label class="checkbox line">

                                                <input type="checkbox" value="" /> 电视

                                            </label>

                                        </div>
                                            <div class="span3" >

                                        <div class="span3">

                                            <label class="checkbox line">

                                                <input type="checkbox" value="" /> 单人床

                                            </label>

                                            <label class="checkbox line">

                                                <input type="checkbox" value="" /> 双人床

                                            </label>

                                            <label class="checkbox line">

                                                <input type="checkbox" value="" /> 沙发

                                            </label>

                                            <label class="checkbox line">

                                                <input type="checkbox" value="" /> 餐桌

                                            </label>

                                        </div>

                                    </div>

                                </div>

                            </div>

                            <div class="control-group">

                                <label class="control-label">房屋地址</label>

                                <div class="controls">

                                    <input class="span6 m-wrap" rows="3" name="address" value="${house.address}">

                                </div>

                                <div class="form-actions">

                                    <button type="button" class="btn blue" id="publishHourefabu">发布~快来住！</button>

                                    <button type="button" class="btn" id="publishHouredengji">登记。先不租...</button>

                                </div>

                            </form>

                            <!-- END FORM-->

                        </div>

                    </div>

                </div>

                <!-- END SAMPLE FORM PORTLET-->

            </div>

        </div>


        </form>

        <!-- END FORM-->

    </div>

</div>

<!-- END EXTRAS PORTLET-->

</div>

</div>

<!-- END PAGE CONTENT-->

</div>

<!-- END PAGE CONTAINER-->

</div>

<!-- END PAGE -->

                      &lt;!&ndash; BEGIN FORM&ndash;&gt;

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

<script src="<%=basePath%>assets/media/js/jquery.uniform.min.js" type="text/javascript" ></script>

<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL PLUGINS -->

<script type="text/javascript" src="<%=basePath%>assets/media/js/ckeditor.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/bootstrap-fileupload.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/chosen.jquery.min.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/select2.min.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/wysihtml5-0.3.0.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/bootstrap-wysihtml5.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/jquery.tagsinput.min.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/jquery.toggle.buttons.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/bootstrap-datepicker.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/bootstrap-datetimepicker.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/clockface.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/date.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/daterangepicker.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/bootstrap-colorpicker.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/bootstrap-timepicker.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/jquery.inputmask.bundle.min.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/jquery.input-ip-address-control-1.0.min.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/jquery.multi-select.js"></script>

<script src="<%=basePath%>assets/media/js/bootstrap-modal.js" type="text/javascript" ></script>

<script src="<%=basePath%>assets/media/js/bootstrap-modalmanager.js" type="text/javascript" ></script>

<!-- END PAGE LEVEL PLUGINS -->

<!-- BEGIN PAGE LEVEL SCRIPTS -->

<script src="<%=basePath%>assets/media/js/app.js"></script>

<script src="<%=basePath%>assets/media/js/form-components.js"></script>

<!-- END PAGE LEVEL SCRIPTS -->

<script>

    jQuery(document).ready(function() {

        // initiate layout and plugins

        App.init();

        FormComponents.init();

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
