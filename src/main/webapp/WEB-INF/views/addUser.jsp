<%--
  Created by IntelliJ IDEA.
  User: andrew
  Date: 16-3-16
  Time: 下午4:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!--> < lang="en"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

  <meta charset="utf-8" />

  <title>短租网| 创建用户</title>

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

  <link href="<%=basePath%>assets/media/css/login.css" rel="stylesheet" type="text/css"/>

  <!-- END PAGE LEVEL STYLES -->

  <link rel="shortcut icon" href="<%=basePath%>assets/media/image/favicon.ico" />

</head>
< class="login">

<!-- BEGIN LOGO -->

<div class="logo">

  <img src="<%=basePath%>assets/media/image/logo-big.png" alt="" />

</div>

<!-- END LOGO -->

<!-- BEGIN LOGIN -->

<div class="content">

  <!-- BEGIN LOGIN FORM -->

  <form class="form-vertical login-form" action="index.html">

    <c:if test="${result != null and !result.approved}">
      <script>

        alert(${result.msg});

      </script>
    </c:if>

    <form class="form-vertical register-form" action="<%=basePath%>user/postUser.action" method="post">

      <h3 class="">创建</h3>

      <!--<p>Enter your account details below:</p>-->
      <p>输入您的信息:</p>

      <div class="control-group">

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

            <input class="m-wrap placeholder-no-fix" type="password" id="register_password" placeholder="密码" name="password"/>

          </div>

        </div>

      </div>

      <div class="control-group">

        <label class="control-label visible-ie8 visible-ie9">确认密码</label>

        <div class="controls">

          <div class="input-icon left">

            <i class="icon-ok"></i>

            <input class="m-wrap placeholder-no-fix" type="password" placeholder="确认密码" name="rpassword"/>

          </div>

        </div>

      </div>

      <div class="control-group">

        <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->

        <label class="control-label visible-ie8 visible-ie9">邮箱</label>

        <div class="controls">

          <div class="input-icon left">

            <i class="icon-envelope"></i>

            <input class="m-wrap placeholder-no-fix" type="text" placeholder="邮箱" name="email"/>

          </div>

        </div>

      </div>

      <div class="control-group">

        <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->

        <label class="control-label visible-ie8 visible-ie9">手机</label>

        <div class="controls">

          <div class="input-icon left">

            <i class="icon-phone"></i>

            <input class="m-wrap placeholder-no-fix" type="text" placeholder="手机" name="mobile"/>

          </div>

        </div>

      </div>


      <div class="control-group">

        <div class="controls">

          <label class="checkbox">

            <input type="checkbox" name="tnc"/>我同意 <a href="#">服务条件</a> 和 <a href="#">相关法律</a>

          </label>

          <div id="register_tnc_error"></div>

        </div>

      </div>

      < class="form-actions">

        <button id="register-back-btn" type="button" class="btn">

          <i class="m-icon-swapleft"></i> 返回

        </button>

        <button type="submit" id="register-submit-btn" class="btn green pull-right">

          创建 <i class="m-icon-swapright m-icon-white"></i>

        </button>

    </form>

    <!-- END REGISTRATION FORM -->
    </form>

</div>

<!-- END LOGIN -->

<!-- BEGIN COPYRIGHT -->

<div class="copyright">

  2013 &copy; Metronic. Admin Dashboard Template.

</div>

<!-- END COPYRIGHT -->

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

<script src="<%=basePath%>assets/media/js/jquery.validate.min.js" type="text/javascript"></script>

<!-- END PAGE LEVEL PLUGINS -->

<!-- BEGIN PAGE LEVEL SCRIPTS -->

<script src="<%=basePath%>assets/media/js/app.js" type="text/javascript"></script>

<script src="<%=basePath%>assets/media/js/login.js" type="text/javascript"></script>

<!-- END PAGE LEVEL SCRIPTS -->

<script>

  jQuery(document).ready(function() {

    App.init();

    Login.init();

  });

</script>

<!-- END JAVASCRIPTS -->

<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script></body>

<!-- END BODY -->

</html>