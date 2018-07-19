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
	
<title>商店详情</title>
</head>
<body>

        
        <div >
			<div >
			<h1>${shop.shopName }</h1>
			</div >
			<div >
			<img alt="${shop.shopName }" src="image/shop/${shop.shopImg }" width="100" height="100" />
			</div>
			<div >
			<h2>产品描述：${shop.shopDesc }</h2>
			</div>
			<div>
			商店地址：${shop.shopAddr } <br />
			联系电话：${shop.phone }
			</div>
        </div>
        
<div>
	<h2>该店铺下在售商品列表</h2>
	<div>
		<c:forEach var="product" items="${productList }">
				<span >
				<h4> ${product.productName } </h4>
				<img src="image/floor/${product.imgAddr }" alt="${product.productName }"  width="100" height="100"/>
				</span>	
				<span>
				<a href="product/ownerDeleteProduct.do?productId=${product.productId }&option=0" > 停止出售 </a>
				</span>
		</c:forEach>
	</div>
	
</div>

</body>
</html>























