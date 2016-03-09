<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>EL表达式的简单应用</title>

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
		<!-- EL 表达式：为了在 JSP 中简化表达式的 写法-->
		<!-- 1、语法结构:${expression}
				没有指定哪一个范围的变量值（例如：messSucc），会依序从Page、Request、Session、Application范围查找。
                                                                   假如途中找到messErr，就直接回传，不再继续找下去，但是假如全部的范围都没有找到时，就回传null，
                                                                   但是不会在页面上显示null
			 2、[ ]与.运算符:
			    EL 提供“.“和“[ ]“两种运算符来存取数据。例如：
                                           当要存取的属性名称中包含一些特殊字符，如 . 或 - 等并非字母或数字的符号，就一定要使用“[ ]“ 例如：
             3、要取得session中储存一个属性username的值，可以利用下列方法：session.getAttribute("username") 取得username的值，
                                         在EL中则使用下列方法: ${sessionScope.username} 
             pageScope：访问一个 JSP 中页面范围的对象
             requestScope：访问一个 JSP请求范围的对象
             sessionScope：访问会话范围的对象
             applicationScope：访问应用程序范围的对象
             4、将请求参数名称映射到单个字符串参数值：${param.属性名}
		-->
		EL表达式：${param. loginName}
		<br/>
		JSP语法：<%=request.getParameter("loginName") %>
		<br/>
	</body>
</html>
