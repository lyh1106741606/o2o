<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<title>店家</title>
</head>
<body>
欢迎你，店家：${person.name }！
<div>
	<h2>你的店铺</h2>
	<div>
		<c:forEach var="shop" items="${shopList }">
				<span >
				<a href="shop/detail.do?shopId=${shop.shopId }">
				<h4> ${shop.shopName } </h4>
				</a>
				<img src="image/shop/${shop.shopImg }" alt="${shop.shopName }"  width="100" height="100"/>
				</span>	
				<span>
				<a href="shop/ownerManageShop.do?shopId=${shop.shopId }&option=0"> 关闭店铺 </a>
				</span>
		</c:forEach>
	</div>
	
</div>





</body>
</html>