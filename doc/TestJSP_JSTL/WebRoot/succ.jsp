<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!-- 引入JSTL标签库  -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>JSTL循环标签的简单应用	</title>

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
	<!-- JSTL:JSP标准标签库,要使用JSTL，则必须加载jstl.jar和 standard.jar文件，并引入JSTL标签库-->		
		JSP语法：
		<% 
			//循环输出，将数据写到页面中
			for(int i=0;i<10;i++) 
			{ 
 
       			out.println(i);
       		}
       	%>
		<br>
		forEach标签：
		<%
			//声明List集合并赋值
			List<String> list = new ArrayList<String>();
			list.add("1");
			list.add("2");
			list.add("3");
			list.add("4");
			list.add("5");
			
			request.setAttribute("myList", list);
		%>
		<!-- var:·迭代参数的名称。在迭代体中可以使用的变量的名称，用来表示每一个迭代变量。类型为String。-->
        <!-- items：要进行迭代的集合。 -->
		<c:forEach items="${myList}" var="item" >
			${item}
		</c:forEach>

		<br />
	</body>
</html>
