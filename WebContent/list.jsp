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
    <link href="page/index/index.css" rel="stylesheet" type="text/css" /> 
    <link href="page/common/layout.css" rel="stylesheet" type="text/css" /> 
    <link href="page/common/nav/index.css" rel="stylesheet" type="text/css" /> 
    <link href="page/common/header/index.css" rel="stylesheet" type="text/css" /> 
    <link href="page/common/footer/index.css" rel="stylesheet" type="text/css" /> 
    <link href="page/result/index.css" rel="stylesheet" type="text/css" /> 
    <link href="page/list/index.css" rel="stylesheet" type="text/css" /> 
    <link href="page/detail/index.css" rel="stylesheet" type="text/css" /> 
    <link href="page/pagination/index.css" rel="stylesheet" type="text/css" /> 
<title>商品列表</title>
</head>
<body onload="init();">
<!--  最上面登陆注册购物车模块 -->
<div class="nav">
    <div class="w">
        <div class="user-info">
            <span class="user not-login">
                <span class="link js-login">欢迎你，${person.name }</span>
                <span class="link js-login" ><a class="link" href="login.jsp">退出</a></span>
            </span>
        </div>
        <ul class="nav-list">
            <li class="nav-item">
                <a class="link" href="main/init.do">
                    <i class="fa fa-shopping-cart"></i>
                    购物车(<span class="cart-count">0</span>)
                </a>
            </li>
            <li class="nav-item">
                <a class="link" href="main/init.do">我的订单</a>
            </li>
            <li class="nav-item">
                <a class="link" href="main/init.do">我的BKMall</a>
            </li>
            <li class="nav-item">
                <a class="link" href="main/init.do">关于BKMall</a>
            </li>
        </ul>
    </div>
</div>
<!-- 商城的LOGO与搜索模块 -->
<form action="product/productName.do" method="post" >
<div class="header">
    <div class="w">
        <a class="logo" href="main/init.do">BKMall</a>
        <div class="search-con">
            <input class="search-input" id="productName" name="productName" placeholder="请输入商品名称"/>
            
            <button class="btn search-btn" id="search-btn" type="submit">
            	搜索	
            </button>
      
        </div>
    </div>
</div>
</form>



		<div class="crumb">
            <div class="w">
                <div class="crumb-con">
                    <a class="link" href="main/init.do">MMall</a>
                    <span>></span>
                    <span class="link-text">商品列表</span>
                </div>
            </div>
        </div>
        
<div class="w">
	<!-- 根据选择得到的商品列表  -->
	<div class="floor-wrap">
	   
	       <ul class="floor-list">
	       <c:forEach var="product" items="${productList }">
	           <li class="floor-item">
	                <a href="product/detail.do?productId=${product.productId }">
	                <span class="floor-text">${product.productName }</span>
	                <img class="floor-img" src="image/floor/${product.imgAddr }" alt="${product.productName }" />
	                </a>
	           </li>
	       </c:forEach>
	       </ul>
	</div>
</div>	

<!-- 尾注，友情链接 -->
<div class="footer">
    <div class="w">
        <div class="links">
            <a class="link" href="http://www.imooc.com" target="_blank">慕课网</a> |
            <a class="link" href="https://www.baidu.com" target="_blank">百度</a> |
            <a class="link" href="https://www.taobao.com" target="_blank">淘宝</a> |
            <a class="link" href="https://www.zhihu.com" target="_blank">知乎</a>
        </div>
        <p class="copyright">
            Copyright © 2018 bkmall.com All Right Reserved
        </p>
    </div>
</div>
<script type="text/javascript" src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js
"></script>


</body>
</html>