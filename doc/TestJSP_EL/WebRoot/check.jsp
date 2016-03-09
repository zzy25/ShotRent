<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>验证登录信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%
 	//获得登录页面输入的用户名、密码
  	String name = request.getParameter("userName");
  	String pwd = request.getParameter("password");
  	
  	//判断输入的用户名和密码是否正确
  	if("admin".equals(name) && "123".equals(pwd)){
  		//重定向到succ.jsp
		//response.sendRedirect("succ.jsp"); 
		
		//请求转发（带参数）
		//以前的request中存放的变量全部失效，并进入一个新的request作用域;URL地址改变。
	    request.getRequestDispatcher("succ.jsp?loginName=" + name).forward(request, response);
	    
	}else{
		//重定向到error.jsp
		//response.sendRedirect("error.jsp"); 
		
		//将 msgError字符串变量放到request中
		String msgError = "您的用户名密码错误！";
	    request.setAttribute("messErr", msgError);
	    	
	    //请求转发
	    //以前的request中存放的变量不会失效，就像把两个页面拼到了一起;URL地址不变。
	    request.getRequestDispatcher("error.jsp").forward(request, response);
	}

  %>
  </body>
</html>
