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
<title>添加商店</title>
</head>
<body>
<h2>添加商店</h2>
<form action="shop/add.do" method="post" enctype="multipart/form-data" >
商店区域：<select name="areaId">
<c:forEach var="area" items="${areaList }">
<option value="${area.areaId }">${area.areaName }</option>
</c:forEach>
</select><br/>
商店类型：
<select name="shopCategoryId">
<c:forEach var="shopCate" items="${shopCategoryList }">
<option value="${area.areaId }">${shopCate.shopCategoryName }</option>
</c:forEach>
</select><br/>
商店名称：<input type="text" name="shopName" /><br/>
商店地址：<input type="text" name="shopAddr" /><br/>
商店照片：<input type="file" name="image" /><br/>
联系电话：<input type="text" name="phone" /><br/>
商店简介：<textarea name="shopDesc" rows="3" cols="15" ></textarea>
	<input type="submit" value="提交" />
</form>
</body>
</html>