<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
//request.getContextPath():获取站点的根路径，也就是项目的名字
//request.getServerName():获取服务器的名字
//request.getServerPort():获取服务器端的端口
//request.getScheme():获取协议名称,默认是http

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页面</title>
    
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
  		<!-- 提交form表单的输入数据到check.jsp -->
    	<form action="check.jsp" method="post">
			<table align="center">
				<tr>
					<td>
						用户名：
					</td>
					<td>
						<input type="text" name="userName">
					</td>
				</tr>
				<tr>
					<td>
						密码：
					</td>
					<td>
						<input type="password" name="password">
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="提交">
					</td>
					<td>
						<input type="reset" value="重置">
					</td>
				</tr>
			</table>
		</form>
  </body>
</html>
