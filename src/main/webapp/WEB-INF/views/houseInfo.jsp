<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: andrew
  Date: 16-3-15
  Time: 下午3:51
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

    <title>Metronic | Pages - Blog Post</title>

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

    <link href="<%=basePath%>assets/media/css/jquery.fancybox.css" rel="stylesheet"/>

    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN PAGE LEVEL STYLES -->

    <link href="<%=basePath%>assets/media/css/blog.css" rel="stylesheet" type="text/css"/>

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
    <c:set var="menuCurrent" value="1" scope="session"/>
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

                        房屋信息详情
                        <small>房屋信息详情</small>

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

                        <li><a href="#">房屋信息详情</a></li>

                    </ul>

                    <!-- END PAGE TITLE & BREADCRUMB-->

                </div>

            </div>

            <!-- END PAGE HEADER-->

            <!-- BEGIN PAGE CONTENT-->

            <div class="row-fluid">

                <div class="span12 blog-page">

                    <div class="row-fluid">

                        <div class="span9 article-block">

                            <h1>${house.owerName}的房子</h1>

                            <div class="blog-tag-data">

                                <div id="myCarousel" class="carousel slide">

                                    <!-- Carousel indicators

                                        <ol class="carousel-indicators">

                                         <li data-target="#myCarousel" data-slide-to="0" class="active"></li>

                                         <li data-target="#myCarousel" data-slide-to="1"></li>

                                         <li data-target="#myCarousel" data-slide-to="2"></li>

                                        </ol>

                                        -->

                                    <!-- Carousel items -->

                                    <div class="carousel-inner">

                                        <div class="active item">

                                            <img src="<%=basePath%>assets/media/image/item_img1.jpg" alt="">

                                            <div class="carousel-caption">

                                                <!--<h4><a href="page_news_item.html">First Thumbnail label</a></h4>-->

                                                <!--<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor.</p>-->

                                            </div>

                                        </div>

                                        <div class="item">

                                            <img src="<%=basePath%>assets/media/image/item_img.jpg" alt="">

                                            <div class="carousel-caption">

                                                <!--<h4><a href="page_news_item.html">Second Thumbnail label</a></h4>

                                                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor.</p>-->

                                            </div>

                                        </div>

                                        <div class="item">

                                            <img src="<%=basePath%>assets/media/image/item_img1.jpg" alt="">

                                            <div class="carousel-caption">

                                                <!--<h4><a href="page_news_item.html">Third Thumbnail label</a></h4>

                                                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor.</p>-->

                                            </div>

                                        </div>

                                    </div>

                                    <!-- Carousel nav -->

                                    <a class="carousel-control left" href="#myCarousel" data-slide="prev">

                                        <i class="m-icon-big-swapleft m-icon-white"></i>

                                    </a>

                                    <a class="carousel-control right" href="#myCarousel" data-slide="next">

                                        <i class="m-icon-big-swapright m-icon-white"></i>

                                    </a>

                                </div>

                                <div class="row-fluid">

                                    <div class="span6">

                                        <ul class="unstyled inline blog-tags">

                                            <li>

                                                <i class="icon-tags"></i>

                                                <a href="#">冰箱</a>
                                                <a href="#">热水器</a>
                                                <a href="#">空调</a>
                                                <a href="#">衣柜</a>
                                                <a href="#">电视</a>
                                                <a href="#">床</a>
                                                <a href="#">洗衣机</a>
                                                <a href="#">宽带</a>
                                                <a href="#">暖气</a>
                                            </li>

                                        </ul>

                                    </div>

                                    <div class="span6 blog-tag-data-inner">

                                        <ul class="unstyled inline">

                                            <li><i class="icon-calendar"></i> <a href="#">
                                                <fmt:formatDate value="${house.updatetime}" pattern="yyyy年MM月dd日"/></a>
                                            </li>

                                            <li><i class="icon-comments"></i> <a href="#">10 点评</a></li>

                                        </ul>

                                    </div>

                                </div>

                            </div>

                            <!--end news-tag-data-->

                            <div>

                                <p>${house.content}</p>

                            </div>

                            <hr>

                            <div class="media">

                                <h3>点评</h3>

                                <a href="#" class="pull-left">

                                    <img alt="" src="<%=basePath%>assets/media/image/9.jpg" class="media-object">

                                </a>

                                <div class="media-body">

                                    <h4 class="media-heading">汪曙生 <span>5 小时以前 <!--/ <a href="#">Reply</a>--></span>
                                    </h4>

                                    <p>这是什么简介，也不知道在哪弄的图片，这就是一骗子，图片是假的</p>

                                    <hr>

                                    <!-- Nested media object -->

                                    <div class="media">

                                        <a href="#" class="pull-left">

                                            <img alt="" src="<%=basePath%>assets/media/image/5.jpg"
                                                 class="media-object">

                                        </a>

                                        <div class="media-body">

                                            <h4 class="media-heading">岳超刚 <span>1 小时前
                                                <!-- / <a href="#">Reply</a>--></span></h4>

                                            <p>大哥，我错了</p>

                                        </div>

                                    </div>

                                    <!--end media-->

                                    <hr>

                                    <!--<div class="media">

                      <a href="#" class="pull-left">

                          <img alt="" src="<%=basePath%>assets/media/image/7.jpg" class="media-object">

                      </a>

                      <div class="media-body">

                          <h4 class="media-heading">Media heading <span>2 days ago / <a href="#">Reply</a></span></h4>

                          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>

                      </div>

                  </div>-->

                                    <!--end media-->

                                </div>

                            </div>

                            <!--end media-->

                            <div class="media">

                                <a href="#" class="pull-left">

                                    <img alt="" src="<%=basePath%>assets/media/image/6.jpg" class="media-object">

                                </a>

                                <div class="media-body">

                                    <h4 class="media-heading">黄志文 <span>2013-01-01 <!--/ <a href="#">Reply</a>--></span>
                                    </h4>

                                    <p>物超所值</p>

                                </div>

                            </div>

                            <!--end media-->

                            <hr>

                            <!--<div class="post-comment">

                                <h3>Leave a Comment</h3>

                                <form>

                                    <label>Name</label>

                                    <input type="text" class="span7 m-wrap">

                                    <label>Email <span class="color-red">*</span></label>

                                    <input type="text" class="span7 m-wrap">

                                    <label>Message</label>

                                    <textarea class="span10 m-wrap" rows="8"></textarea>

                                    <p><button class="btn blue" type="submit">Post a Comment</button></p>

                                </form>

                            </div>-->

                        </div>

                        <!--end span9-->

                        <div class="span3 blog-sidebar">

                            <h2>&nbsp;</h2>

                            <div class="top-news">

                                <a href="<%=basePath%>rent/order/create.action" class="btn green">

                                    <span style=" text-align:center; ">订购</span>

                                    <%--<em>Posted on: April 15, 2013</em>

                                    <em>

                                        Internet, Music, People

                                    </em>

                                    <i class="icon-music top-news-icon"></i>--%>

                                </a>

                            </div>

                            <div class="space20"></div>

                                <h2>最近租客</h2>

                                <ul class="unstyled blog-images">

                                    <li>

                                        <a class="fancybox-button" data-rel="fancybox-button"
                                           title="390 x 220 - keenthemes.com" href="<%=basePath%>assets/media/image/1.jpg">

                                            <img alt="" src="<%=basePath%>assets/media/image/1.jpg">

                                        </a>

                                    </li>

                                    <li><a href="#"><img alt="" src="<%=basePath%>assets/media/image/2.jpg"></a></li>

                                    <li><a href="#"><img alt="" src="<%=basePath%>assets/media/image/3.jpg"></a></li>

                                    <li><a href="#"><img alt="" src="<%=basePath%>assets/media/image/4.jpg"></a></li>

                                    <li><a href="#"><img alt="" src="<%=basePath%>assets/media/image/5.jpg"></a></li>

                                    <li><a href="#"><img alt="" src="<%=basePath%>assets/media/image/6.jpg"></a></li>

                                    <li><a href="#"><img alt="" src="<%=basePath%>assets/media/image/8.jpg"></a></li>

                                    <li><a href="#"><img alt="" src="<%=basePath%>assets/media/image/10.jpg"></a></li>

                                    <li><a href="#"><img alt="" src="<%=basePath%>assets/media/image/11.jpg"></a></li>

                                    <li><a href="#"><img alt="" src="<%=basePath%>assets/media/image/1.jpg"></a></li>

                                    <li><a href="#"><img alt="" src="<%=basePath%>assets/media/image/2.jpg"></a></li>

                                    <li><a href="#"><img alt="" src="<%=basePath%>assets/media/image/7.jpg"></a></li>

                                </ul>

                            <div class="space20"></div>

                            <h2>房屋标签</h2>

                            <ul class="unstyled inline sidebar-tags">

                                <li><a href="#"><i class="icon-tags"></i> 很大</a></li>

                                <li><a href="#"><i class="icon-tags"></i> 很漂亮</a></li>

                                <li><a href="#"><i class="icon-tags"></i> 物超所值</a></li>

                                <li><a href="#"><i class="icon-tags"></i> 有点贵</a></li>

                                <li><a href="#"><i class="icon-tags"></i> 很实惠</a></li>

                                <li><a href="#"><i class="icon-tags"></i> 风景很好</a></li>

                                <li><a href="#"><i class="icon-tags"></i> 屋主很有心</a></li>

                                <li><a href="#"><i class="icon-tags"></i> 屋主很漂亮</a></li>

                                <li><a href="#"><i class="icon-tags"></i> 来很多次了</a></li>

                            </ul>

                            <!--<div class="space20"></div>

                            <h2>Tabs</h2>

                            <div class="tabbable tabbable-custom">

                                <ul class="nav nav-tabs">

                                    <li class="active"><a data-toggle="tab" href="#tab_1_1">Section 1</a></li>

                                    <li class=""><a data-toggle="tab" href="#tab_1_2">Section 2</a></li>

                                    <li class=""><a data-toggle="tab" href="#tab_1_3">Section 3</a></li>

                                </ul>

                                <div class="tab-content">

                                    <div id="tab_1_1" class="tab-pane active">

                                        <p>I'm in Section 1.</p>

                                        <p>

                                            Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.

                                        </p>

                                    </div>

                                    <div id="tab_1_2" class="tab-pane">

                                        <p>Howdy, I'm in Section 2.</p>

                                        <p>

                                            Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Ut wisi enim ad minim veniam, quis nostrud exerci tation.

                                        </p>

                                    </div>

                                    <div id="tab_1_3" class="tab-pane">

                                        <p>Howdy, I'm in Section 3.</p>

                                        <p>

                                            Duis autem vel eum iriure dolor in hendrerit in vulputate.

                                            Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat

                                        </p>

                                    </div>

                                </div>

                            </div>-->

                            <!--<div class="space20"></div>

                            <h2>Recent Twitts</h2>-->

                            <!--<div class="blog-twitter">

                                <div class="blog-twitter-block">

                                    <a href="">@keenthemes</a>

                                    <p>At vero eos et accusamus et iusto odio.</p>

                                    <a href="#"><em>http://t.co/sBav7dm</em></a>

                                    <span>5 hours ago</span>

                                    <i class="icon-twitter blog-twiiter-icon"></i>

                                </div>

                                <div class="blog-twitter-block">

                                    <a href="">@keenthemes</a>

                                    <p>At vero eos et accusamus et iusto odio.</p>

                                    <a href="#"><em>http://t.co/sBav7dm</em></a>

                                    <span>7 hours ago</span>

                                    <i class="icon-twitter blog-twiiter-icon"></i>

                                </div>

                                <div class="blog-twitter-block">

                                    <a href="">@keenthemes</a>

                                    <p>At vero eos et accusamus et iusto odio.</p>

                                    <a href="#"><em>http://t.co/sBav7dm</em></a>

                                    <span>8 hours ago</span>

                                    <i class="icon-twitter blog-twiiter-icon"></i>

                                </div>

                            </div>-->
                            <!--end span3-->
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

<script src="<%=basePath%>assets/media/js/jquery.uniform.min.js" type="text/javascript"></script>

<!-- END CORE PLUGINS -->

<script src="<%=basePath%>assets/media/js/app.js"></script>

<script>

    jQuery(document).ready(function () {

        App.init();

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