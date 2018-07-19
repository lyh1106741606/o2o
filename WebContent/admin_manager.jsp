<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<title>超级管理员</title>
</head>
<body>
欢迎你，超级管理员：${person.name }！
<div>
	<span>
	<a href="shop/adminManageShopInit.do"> 商店管理 </a>
	</span>
	<span>
	<a href="product/adminManageProductInit.do"> 商品管理 </a>
	</span>
	<span>
	<a href="personInfo/adminManagePersonInit.do"> 用户管理 </a>
	</span>

</div>





</body>
</html>