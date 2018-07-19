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
	<h2>已冻结商品</h2>
	<div>
		<c:forEach var="product" items="${product0List }">
				<span >
				<h4> ${product.productName } </h4>
				<img src="image/floor/${product.imgAddr }" alt="${product.productName }"  width="100" height="100"/>
				</span>	
				<span>
				<a href="product/adminManageProduct.do?productId=${product.productId }&option=1"> 激活 </a>
				
				
				</span>
		</c:forEach>
	</div>
	
	<h2>正常状态商品</h2>
	<div>
		<c:forEach var="product" items="${product1List }">
				<span >
				<h4> ${product.productName } </h4>
				<img src="image/floor/${product.imgAddr }" alt="${product.productName }"  width="100" height="100"/>
				</span>	
				<span>
				<a href="product/adminManageProduct.do?productId=${product.productId }&option=0"> 冻结 </a>
				</span>
		</c:forEach>
	</div>
	
</div>





</body>
</html>