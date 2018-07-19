<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<title>注册</title>
</head>
<body>
<form action="personInfo/add.do" method="post" enctype="multipart/form-data">
姓名：<input type="text" name="name" /><br/>
性别：<input type="radio" name="gender" value="1" checked="checked" />男
 <input type="radio" name="gender" value="0" />女<br/>
邮箱：<input type="text" name="email" /><br/>
头像：<input type="file" name="image" /><br/>
类型：<input type="radio" name="userType" checked="checked" value="1" />普通用户
 <input type="radio" name="userType" value="0" />商店店主<br/>
 <input type="submit" value="提交 " />
</form>

</body>
</html>