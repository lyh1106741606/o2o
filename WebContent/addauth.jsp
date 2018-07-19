<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<title>设置密码</title>
</head>
<body>
	欢迎：${personInfo.name }<br/>
	<img src="head_images/${personInfo.profileImg }" width="100" height="100" /><br/>
	<h2>请设置登录的用户名和密码</h2>
	<form action="auth/add.do" method="post">
用户编号：<input type="text" name="userId" readonly="readonly" value="${personInfo.userId }" /><br/>
登录名称：<input type="text" name="username" /><br/>
登录密码：<input type="password" name="password" /><br/>
 <input type="submit" value="提交" />
	</form>
</body>
</html>