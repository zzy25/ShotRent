<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: andrew
  Date: 16-3-16
  Time: 下午3:39
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

    <meta charset="utf-8"/>

    <title>短租网| 登录</title>

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

    <link href="<%=basePath%>assets/media/css/login.css" rel="stylesheet" type="text/css"/>

    <!-- END PAGE LEVEL STYLES -->

    <link rel="shortcut icon" href="<%=basePath%>assets/media/image/favicon.ico"/>

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="login">

<!-- BEGIN LOGO -->

<div class="logo">

    <img src="<%=basePath%>assets/media/image/logo-big.png" alt=""/>

</div>

<!-- END LOGO -->

<!-- BEGIN LOGIN -->

<div class="content">

    <!-- BEGIN LOGIN FORM -->
    <%--<jsp:useBean id="result" scope="page" type="edu.xiyou.shortrent.model.vo.ResultVo"/>--%>
    <c:if test="${result != null and !result.approved}">
        <script>
            alert(${result.msg});
        </script>
    </c:if>

    <form class="form-vertical login-form" >

        <h3 class="form-title">登录您的账户</h3>

        <div class="alert alert-error hide">

            <button class="close" data-dismiss="alert"></button>

            <span>输入账户和密码</span>

        </div>

        <div class="control-group">

            <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->

            <label class="control-label visible-ie8 visible-ie9">账户</label>

            <div class="controls">

                <div class="input-icon left">

                    <i class="icon-user"></i>

                    <input class="m-wrap placeholder-no-fix" type="text" placeholder="账户" name="username"/>

                </div>

            </div>

        </div>

        <div class="control-group">

            <label class="control-label visible-ie8 visible-ie9">密码</label>

            <div class="controls">

                <div class="input-icon left">

                    <i class="icon-lock"></i>

                    <input class="m-wrap placeholder-no-fix" type="password" placeholder="密码" name="password"/>

                </div>

            </div>

        </div>

        <div class="form-actions">

            <label class="checkbox">

                <input type="checkbox" name="remember" value="1"/> 记住

            </label>

            <button type="button" class="btn green pull-right" id="loginSubmit">

                登录<i class="m-icon-swapright m-icon-white"></i>

            </button>

        </div>

        <div class="forget-password">

            <h4>忘记密码</h4>

            <p>

                点击<a href="#" class="" 　>这里</a>

                重置密码.

            </p>

        </div>

        <div class="create-account">

            <p>

                没有账户&nbsp;

                <a href="<%=basePath%>user/addUser.action" class="">创建账户</a>

            </p>

        </div>

    </form>

    <!-- END LOGIN FORM -->


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

    <script src="<%=basePath%>assets/media/js/jquery.validate.min.js" type="text/javascript"></script>

    <!-- END PAGE LEVEL PLUGINS -->

    <!-- BEGIN PAGE LEVEL SCRIPTS -->

    <script src="<%=basePath%>assets/media/js/app.js" type="text/javascript"></script>

    <script src="<%=basePath%>assets/media/js/login.js" type="text/javascript"></script>
    <script src="<%=basePath%>assets/media/js/app-script.js" type="text/javascript"></script>

    <!-- END PAGE LEVEL SCRIPTS -->

    <script>

        jQuery(document).ready(function () {

            App.init();

            Login.init();

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
</div>
</body>

<!-- END BODY -->

</html>