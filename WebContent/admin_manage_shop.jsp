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
<title>超级管理员</title>
</head>
<body>
欢迎你，超级管理员：${person.name }！
<div>
	<h2>未审核</h2>
	<div>
		<c:forEach var="shop" items="${shop0List }">
				<span >
				<h4> ${shop.shopName } </h4>
				<img src="image/shop/${shop.shopImg }" alt="${shop.shopName }"  width="100" height="100"/>
				</span>	
				<span>
				<a href="shop/adminManageShop.do?shopId=${shop.shopId }&option=1"> 通过 </a>
				
				</span>
		</c:forEach>
	</div>
	
	<h2>已审核</h2>
	<div>
		<c:forEach var="shop" items="${shop1List }">
				<span >
				<h4> ${shop.shopName } </h4>
				<img src="image/shop/${shop.shopImg }" alt="${shop.shopName }"  width="100" height="100"/>
				</span>	
				<span>
				<a href="shop/adminManageShop.do?shopId=${shop.shopId }&option=0"> 冻结 </a>
				</span>
		</c:forEach>
	</div>
	
</div>





</body>
</html>