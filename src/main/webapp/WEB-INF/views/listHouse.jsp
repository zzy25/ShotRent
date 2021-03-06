<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: zhuoxiong
  Date: 2016/3/17
  Time: 2:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>
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

    <meta charset="utf-8"/>

    <title> 短租网 | 房屋管理 </title>


    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

    <meta content="" name="description"/>

    <meta content="" name="author"/>

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

    <link rel="stylesheet" type="text/css" href="<%=basePath%>assets/media/css/select2_metro.css"/>

    <link rel="stylesheet" href="<%=basePath%>assets/media/css/DT_bootstrap.css"/>

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
    <c:set var="menuCurrent" value="0" scope="session"/>
    <jsp:include page="sidebar.jsp"/>

    <!-- END SIDEBAR -->

    <!-- BEGIN PAGE -->

    <div class="page-content">

        <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

        <!--<div id="portlet-config" class="modal hide">-->

        <!--<div class="modal-header">-->

        <!--<button data-dismiss="modal" class="close" type="button"></button>-->

        <!--<h3>配置</h3>-->

        <!--</div>-->

        <!--<div class="modal-body">-->

        <!--<p>这里将是一个配置形式</p>-->

        <!--</div>-->

        <!--</div>-->

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

                            <p>主体颜色</p>

                            <ul class="inline">

                                <li class="color-black current color-default" data-style="default"></li>

                                <li class="color-blue" data-style="blue"></li>

                                <li class="color-brown" data-style="brown"></li>

                                <li class="color-purple" data-style="purple"></li>

                                <li class="color-grey" data-style="grey"></li>

                                <li class="color-white color-light" data-style="light"></li>

                            </ul>

                            <label>

                                <span>布局</span>

                                <select class="layout-option m-wrap small">

                                    <option value="fluid" selected>Fluid</option>

                                    <option value="boxed">Boxed</option>

                                </select>

                            </label>

                            <label>

                                <span>标头</span>

                                <select class="header-option m-wrap small">

                                    <option value="fixed" selected>Fixed</option>

                                    <option value="default">Default</option>

                                </select>

                            </label>

                            <label>

                                <span>侧边栏</span>

                                <select class="sidebar-option m-wrap small">

                                    <option value="fixed">Fixed</option>

                                    <option value="default" selected>Default</option>

                                </select>

                            </label>

                            <label>

                                <span>页脚</span>

                                <select class="footer-option m-wrap small">

                                    <option value="fixed">Fixed</option>

                                    <option value="default" selected>Default</option>

                                </select>

                            </label>

                        </div>

                    </div>

                    <!-- END BEGIN STYLE CUSTOMIZER -->

                    <!-- BEGIN PAGE TITLE & BREADCRUMB-->

                    <h3 class="page-title">

                        房屋管理
                        <small>房屋管理</small>

                    </h3>

                    <ul class="breadcrumb">

                        <li>

                            <i class="icon-home"></i>

                            <a href="index.html">首页</a>

                            <i class="icon-angle-right"></i>

                        </li>

                        <!--<li>-->

                        <!--<a href="#">管理员</a>-->

                        <!--<i class="icon-angle-right"></i>-->

                        <!--</li>-->

                        <li><a href="#">房屋管理</a></li>

                    </ul>

                    <!-- END PAGE TITLE & BREADCRUMB-->

                </div>

            </div>

            <!-- END PAGE HEADER-->

            <!-- BEGIN PAGE CONTENT-->

            <div class="row-fluid">

                <div class="span12">

                    <!-- BEGIN EXAMPLE TABLE PORTLET-->

                    <div class="portlet box light-grey">

                        <div class="portlet-title">

                            <div class="caption"><i class="icon-globe"></i>房屋管理表</div>


                        </div>

                        <div class="portlet-body">


                            <table class="table table-striped table-bordered table-hover" id="">

                                <thead>

                                <tr>


                                    <th class="hidden-480 ">发布者</th>

                                    <th class="hidden-480">房屋地址</th>

                                    <th class="hidden-480">面积（平方米）</th>

                                    <th class="hidden-480 ">单价（元/天）</th>

                                    <th class="hidden-480">详细信息</th>

                                    <th class="hidden-480">审核状态</th>

                                    <th class="hidden-480 ">是否上线</th>

                                    <th class="hidden-480">操作</th>


                                </tr>

                                </thead>

                                <tbody>

                                <c:choose>
                                    <c:when test="${houseList != null and houseList.size() > 0}">
                                        <c:forEach items="${houseList}" var="item" varStatus="status">
                                            <tr class="odd gradeX">

                                                <td>${item.owerName}</td>

                                                <td>${item.address}</td>

                                                <td class="hidden-480">${item.area}</td>

                                                <td class="center hidden-480">${item.price}</td>
                                                <td class="hidden-480"><a href="<%=basePath%>rent/${item.id}.action"
                                                                          target="_blank">具体信息</a></td>

                                                <td class="hidden-480">
                                                    <c:if test="${item.checked == 1}">
                                                        <span class="label label-mini label-success">通过</span>
                                                    </c:if>
                                                    <c:if test="${item.checked == 0}">
                                                        <span class="label label-mini label-important">驳回</span>
                                                    </c:if>
                                                </td>

                                                <td class="hidden-480">
                                                    <c:if test="${item.online == 1}">
                                                        <span class="label label-mini label-success">上线</span>
                                                    </c:if>
                                                    <c:if test="${item.online == 0}">
                                                        <span class="label label-mini label-important">下线</span>
                                                    </c:if>
                                                </td>

                                                <td>
                                                    <c:if test="${item.online == 0}">
                                                        <a class="btn green" onclick="houseCheck(${item.id}, 1)">上线</a>
                                                    </c:if>
                                                    <c:if test="${item.online == 1}">
                                                        <a class="btn red " onclick="houseCheck(${item.id}, 0)">下线</a>
                                                    </c:if>
                                                    <a class="btn " href="/house/update/${item.id}.action">修改</a>
                                                </td>

                                            </tr>
                                        </c:forEach>
                                    </c:when>
                                    <c:when test="${houseList == null || houseList.size() == 0}">
                                        <tr>
                                            <td colspan="12" align="center">暂无数据!!</td>
                                        </tr>
                                    </c:when>
                                </c:choose>

                               <%-- <tr class="odd gradeX">

                                    <td>岳超刚</td>

                                    <td>陕西省西安市</td>

                                    <td class="hidden-480">整租</td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">50</td>
                                    <td class="hidden-480"><a href="<%=basePath%>rent/${item.houseid}" target="_blank">具体信息</a>
                                    </td>

                                    <td>
                                        <button type="button" class="btn green">上线</button>
                                        <button type="button" class="btn red ">下线</button>
                                    </td>

                                </tr>--%>


                                </tbody>

                            </table>

                        </div>


                    </div>

                    <!-- END EXAMPLE TABLE PORTLET-->

                </div>

            </div>

            <div class="row-fluid">

                <div class="span6 responsive" data-tablet="span12 fix-offset" data-desktop="span6">

                    <!-- BEGIN EXAMPLE TABLE PORTLET-->


                    <!-- END EXAMPLE TABLE PORTLET-->

                </div>

                <div class="span6 responsive" data-tablet="span12 fix-offset" data-desktop="span6">

                    <!-- BEGIN EXAMPLE TABLE PORTLET-->


                    <!-- END EXAMPLE TABLE PORTLET-->

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

<!-- BEGIN PAGE LEVEL PLUGINS -->

<script type="text/javascript" src="<%=basePath%>assets/media/js/select2.min.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/jquery.dataTables.js"></script>

<script type="text/javascript" src="<%=basePath%>assets/media/js/DT_bootstrap.js"></script>

<!-- END PAGE LEVEL PLUGINS -->

<!-- BEGIN PAGE LEVEL SCRIPTS -->

<script src="<%=basePath%>assets/media/js/app.js"></script>

<script src="<%=basePath%>assets/media/js/table-managed.js"></script>

<script src="<%=basePath%>assets/media/js/app-script.js"></script>

<script>

    jQuery(document).ready(function () {

        App.init();

        TableManaged.init();

    });

</script>

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