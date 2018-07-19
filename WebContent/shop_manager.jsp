<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<title>商店店主</title>
</head>
<body>
欢迎你，商店店主：${person.name }！<br/>
<img alt="" src="image/person/${person.profileImg }" width="100" height="100" />
<h2><a href="shop/addInit.do">我要开店</a></h2>
<h2><a href="shop/ownerManageShopInit.do">管理店铺</a></h2>
</body>
</html>