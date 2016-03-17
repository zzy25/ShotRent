<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: zhuoxiong
  Date: 2016/3/17
  Time: 16:42
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

    <title>短租网 | 订单生成</title>

    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <meta content="" name="description" />

    <meta content="" name="author" />

    <!-- BEGIN GLOBAL MANDATORY STYLES -->

    <link href="<%=basePath%>assets/media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    <link href="<%=basePath%>assets/media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" media="screen"/>

    <link href="<%=basePath%>assets/media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

    <link href="<%=basePath%>assets/media/css/style-metro.css" rel="stylesheet" type="text/css"/>

    <link href="<%=basePath%>assets/media/css/style.css" rel="stylesheet" type="text/css"/>

    <link href="<%=basePath%>assets/media/css/style-responsive.css" rel="stylesheet" type="text/css" />

    <link href="<%=basePath%>assets/media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

    <link href="<%=basePath%>assets/media/css/uniform.default.css" rel="stylesheet" type="text/css"/>

    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN PAGE LEVEL STYLES -->

    <link href="<%=basePath%>assets/media/css/invoice.css" rel="stylesheet" type="text/css"/>

    <link href="<%=basePath%>assets/media/css/print.css" rel="stylesheet" type="text/css" media="print"/>

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
    <c:set var="menuCurrent" value="3" scope="session"/>
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

            <div class="row-fluid hidden-print">

                <div class="span12">

                    <!-- END BEGIN STYLE CUSTOMIZER -->

                    <!-- BEGIN PAGE TITLE & BREADCRUMB-->

                    <h3 class="page-title">

                        订单管理
                    </h3>

                    <ul class="breadcrumb">

                        <li>

                            <i class="icon-home"></i>

                            <a href="index.html">首页</a>

                            <i class="icon-angle-right"></i>

                        </li>

                        <li>

                            <a href="#">租赁管理</a>

                            <i class="icon-angle-right"></i>

                        </li>

                        <li><a href="#">订单管理</a></li>

                    </ul>

                    <!-- END PAGE TITLE & BREADCRUMB-->

                </div>

            </div>

            <!-- END PAGE HEADER-->

            <!-- BEGIN PAGE CONTENT-->

            <div class="row-fluid invoice">

                <hr />

                <!--<div class="" &lt;!&ndash;class="row-fluid"&ndash;&gt;>-->
                <div class="">
                    <table class="table table-striped table-hover">

                        <thead>

                        <tr>

                            <th>ID</th>
                            <!--<output username="text" >王铎雄</output>-->

                            <th>户主ID</th>

                            <!--<th class="hidden-480">描述</th>-->
                            <th class="hidden-480">地址</th>
                            <th class="hidden-480">开始时间</th>
                            <th class="hidden-480">结束时间</th>
                            <th class="hidden-480">价格</th>
                            <!--<th class="hidden-480">单价</th>-->


                            <!--<th>总计</th>-->

                        </tr>

                        </thead>

                        <tbody>

                        <tr>

                            <!--<td>1</td>-->
                            <!--<td><output username="text" >owerdid</output><td>-->
                            <!--<td>主卧</td>-->
                            <td class="hidden"><span name="customerId">${user.id}</span></td>
                            <td class="hidden-480"><span name="houseId">${house.id}</span></td>
                            <td class="hidden-480"><span name="owerId"> ${house.owerid}</span></td>
                            <td class="hidden-480"><span name="address"> ${house.address}</span></td>

                            <!--<td class="hidden-480">双人床，衣柜</td>-->
                            <td class="hidden-480">
                                <input name="beginTime" placeholder="2016/02/22"/>
                            </td>
                            <td class="hidden-480">
                                <input name="endTime" placeholder="2016/03/07"/>
                            </td>
                            <!--<td class="hidden-480">32</td>-->
                            <td class="hidden-480">
                                <input name="amount" value="222">
                            </td>
                            <!--<td class="hidden-480">$75</td>-->
                            <!--<td class="hidden-480">21</td>-->
                            <!--<td>$2152</td>-->

                        </tr>

                        <tr>

                            <!--<td>2</td>-->

                            <!--<td>家具</td>-->

                            <!--<td class="hidden-480">洗衣机，冰箱，空调</td>-->

                            <!--<td class="hidden-480">15</td>-->

                            <!--<td class="hidden-480">$169</td>-->

                            <!--<td>$4169</td>-->

                        </tr>

                        <!--<tr>-->

                        <!--<td>3</td>-->

                        <!--<td>物业费</td>-->

                        <!--<td class="hidden-480">按季度上缴</td>-->

                        <!--&lt;!&ndash;<td class="hidden-480">69</td>&ndash;&gt;-->

                        <!--<td class="hidden-480">$49</td>-->

                        <!--<td>$1260</td>-->

                        <!--</tr>-->

                        <!--<tr>-->

                        <!--<td>3</td>-->

                        <!--<td>Software</td>-->

                        <!--<td class="hidden-480">Payment for Jan 2013</td>-->

                        <!--&lt;!&ndash;<td class="hidden-480">149</td>&ndash;&gt;-->

                        <!--<td class="hidden-480">$12</td>-->

                        <!--<td>$866</td>-->

                        <!--</tr>-->

                        </tbody>

                    </table>

                </div>

                <div class="row-fluid">

                    <div class="span4">

                        <!--<div class="well">-->

                        <!--<address>-->

                        <!--<strong>Loop, Inc.</strong><br />-->

                        <!--795 Park Ave, Suite 120<br />-->

                        <!--San Francisco, CA 94107<br />-->

                        <!--<abbr title="Phone">P:</abbr> (234) 145-1810-->

                        <!--</address>-->

                        <!--<address>-->

                        <!--<strong>Full Name</strong><br />-->

                        <!--<a href="mailto:#">first.last@email.com</a>-->

                        <!--</address>-->

                        <!--</div>-->

                    </div>

                    <div class="span8 invoice-block">

                        <!--<ul class="unstyled amounts">-->

                        <!--<li><strong>Sub - Total amount:</strong> $9265</li>-->

                        <!--<li><strong>Discount:</strong> 12.9%</li>-->

                        <!--<li><strong>VAT:</strong> -&#45;&#45;&#45;&#45;</li>-->

                        <!--<li><strong>Grand Total:</strong> $12489</li>-->

                        <!--</ul>-->

                        <br />

                        <!--<a class="btn blue big hidden-print" onclick="javascript:window.print();">Print <i class="icon-print icon-big"></i></a>-->

                        <a class="btn green big hidden-print" id="createOrderSubmit">提交订单<i class="m-icon-big-swapright m-icon-white"></i></a>

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

<script type="text/javascript" src="<%=basePath%>assets/media/js/bootstrap-datepicker.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/bootstrap-datetimepicker.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/clockface.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/date.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/daterangepicker.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/bootstrap-colorpicker.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/bootstrap-timepicker.js"></script>

<!-- END CORE PLUGINS -->

<script src="<%=basePath%>assets/media/js/app.js"></script>

<script src="<%=basePath%>assets/media/js/form-components.js"></script>

<script src="<%=basePath%>assets/media/js/app-script.js"></script>

<script>

    jQuery(document).ready(function() {

        App.init();

        FormComponents.init();
    });

</script>

<!-- END JAVASCRIPTS -->

<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script></body>

<!-- END BODY -->

</html>
