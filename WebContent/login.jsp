<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">  
    <link rel="stylesheet" type="text/css" href="page/user-login/default.css">
	<link rel="stylesheet" type="text/css" href="page/user-login/styles.css">
<title>用户登录</title>
</head>
<body>
<form action="auth/login.do" method="post" >
<div class="panel-lite">
  <div class="thumbur">
	<div class="icon-lock"></div>
  </div>
  <h4>用户登录</h4>
  <div class="form-group">
	<input required="required" class="form-control" name="username" id="username"/>
	<label class="form-label">用户名    </label>
  </div>
  <div class="form-group">
	<input type="password" required="required" class="form-control" name="password" id="password"/>
	<label class="form-label">密　码</label>
  </div><a href="register.jsp"> 注册  </a>
  <button class="floating-btn" type="submit"><i class="icon-arrow"></i></button>
</div>
</form>

</body>
</html>