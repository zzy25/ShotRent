<!DOCTYPE html>
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
                                                       placeholder="请输入地点" name="addressContain"value="${houseVo.addressContain}">

                                            </div>

                                        </div>

                                        <div class="clearfix margin-bottom-20">


                                            <div class="span6">
                                                <div class="control-group pull-left margin-right-20">

                                                    <label class="control-label">房屋面积：</label>

                                                    <div class="controls">

                                                        <input type="text" id="minArea" name="minArea"
                                                               class="m-wrap span6" placeholder="请输入最小面积" value="${houseVo.minArea}">
                                                        <input type="text" id="maxArea" name="maxArea"
                                                               class="m-wrap span6" placeholder="请输入最大面积" value="${houseVo.maxArea}">

                                                    </div>
                                                </div>

                                            </div>
                                            <div class="span6">
                                                <div class="control-group pull-left">

                                                    <label class="control-label">房屋价格：</label>

                                                    <div class="controls">

                                                        <input type="text" id="mixPrice" name="minArea"
                                                               class="m-wrap span6" placeholder="请输入最低价格" value="${houseVo.minPrice}">
                                                        <input type="text" id="maxPrice" name="maxArea"
                                                               class="m-wrap span6" placeholder="请输入最高价格" value="${houseVo.maxPrice}">
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

                                        <button type="submit" class="btn blue btn-block" >查找 <i
                                            class="m-icon-swapright m-icon-white"<%-- id="findHousesearch"--%>></i></button>

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
                                                                        href="<%=basePath%>rent/${houseList[status.index+1].id}.action">查看更多</a></p>

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