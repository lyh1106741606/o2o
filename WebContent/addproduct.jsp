<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
商店名称:${shop.shopName }
	<h2>添加商品</h2>
	<form action="product/add.do" method="post" enctype="multipart/form-data">
商品类型：<select name="productCategoryId">
	<c:forEach var="productcate" items="${productcategoryList }">
	<option value="${productcate.productCategoryId }">${productcate.productCategoryName }</option>
	</c:forEach>
	</select><br/>
商品名称：<input type="text" name="productName"/><br/>
商品照片：<input type="file" name="image"/><br/>
商品价格：<input type="text" name="normalPrice"/><br/>
促销价格：<input type="text" name="promotionPrice"/><br/>
商品简介：<textarea name="productDesc" rows="3" cols="15"/></textarea><br/>
	<input type="submit" value="提交"/>
	</form>
</body>
</html>