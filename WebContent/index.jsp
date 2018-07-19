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
    <link href="page/common/layout.css" rel="stylesheet" type="text/css" /> 
    <link href="page/common/nav/index.css" rel="stylesheet" type="text/css" /> 
    <link href="page/common/header/index.css" rel="stylesheet" type="text/css" /> 
    <link href="page/common/footer/index.css" rel="stylesheet" type="text/css" /> 
    <link href="page/index/index.css" rel="stylesheet" type="text/css" /> 
    <style type="text/css">
    ul{padding: 0px; margin: 0px; }
    li{float:left;  }
	</style>
	
<title>主页</title>
</head>
<body>
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
<!-- 商店类型的显示,包括头条  -->
<div class="w" align="center" >
		<div>
	    <ul class="keywords-list">
			<h2>商店类型</h2>
			<c:forEach var="shopCate" items="${shopCategoryList }">
				<li class="keywords-item">
				<a class="link" href="product/shopCategoryId.do?shopCategoryId=${shopCate.shopCategoryId }">${shopCate.shopCategoryName }</a>
				</li>	
			</c:forEach>
		</ul>
		</div>
		<div >
		<style>
		/*清浮动*/
		.clearfix:after{content:"";display:block;clear:both;}
		.clearfix{zoom:1;}
		.banner{width:830px; height:370px; position:relative; overflow:hidden;}
		.banner-btn{ display:none;}
		.banner-btn a{ display:block; line-height:40px; position:absolute;top:120px; width:40px; height:40px;background-color: #000; opacity:0.3; filter:alpha(opacity=30) color: rgb(255, 255, 255);overflow: hidden; z-index:4;}
		.prevBtn{left:5px;}
		.nextBtn{right:5px;}
		.banner-img{ font-size:0; *word-spacing:-1px;/* IE6、7 */ letter-spacing: -3px; position:relative;}
		.banner-img li{ display:inline-block;*display:inline;*zoom:1;/* IE6、7 */ vertical-align: top; letter-spacing: normal;word-spacing: normal; font-size:12px;}
		.banner i{ background:url(http://gtms01.alicdn.com/tps/i1/T1szNBFzlmXXX8QSDI-400-340.png)  no-repeat; width: 15px;height: 23px; cursor:pointer;margin: 8px 0 0 12px; display:block;}
		.banner .nextBtn i{ background-position:-200px -24px;}
		.banner .prevBtn i{ background-position:-200px 0px;}
		
		.banner-circle{ position:absolute; left:50%; bottom: 15px;height: 13px;text-align: center;font-size: 0;border-radius: 10px; background:rgba(255,255,255,0.3); filter:alpha(opacity:30); }
		.banner-circle li{ border-radius: 10px; margin:2px; display: inline-block; display: -moz-inline-stack; vertical-align: middle;zoom: 1; }
		.banner-circle li a{ display: block;padding-top: 9px;width: 9px;height: 0;border-radius: 50%; background: #B7B7B7;overflow: hidden;}
		.banner-circle .selected a{ background:#F40; }
		</style>
		
		<script type="text/javascript" src="./jquery/jquery.min.js"></script>
	
		<script type="text/javascript" src="./image/banner/index.js"></script>
		
		<div align="center" style="width:830px; margin:0 auto; float:left">
		<div class="banner">
			<div class="banner-btn">
				<a href="javascript:;" class="prevBtn"><i></i></a>
				<a href="javascript:;" class="nextBtn"><i></i></a>
			</div>
			<ul class="banner-img">
				<c:forEach var="head" items="${headLineList }">
					<li><a href="main/init.do"><img src="image/banner/${head.lineImg }" width="830px" height="370px"></a></li>
				</c:forEach>
			</ul>
			<ul class="banner-circle"></ul>
		</div>
		</div>
	</div>
</div>



<div class="w" align="center">
    <!-- 商店区域的显示  -->
    <ul class="keywords-list">
	<h2>商店区域</h2>
	<c:forEach var="area" items="${areaList }">
		<li class="keywords-item">
		<a class="link" href="product/areaId.do?areaId=${area.areaId }">${area.areaName }</a>
		</li>	
	</c:forEach>
	</ul>
	<!-- 商品类型的显示  -->
	<ul class="shop-con">
    <ul class="shop-list">
	<h2>商品类型</h2>
	<c:forEach var="prodCate" items="${productCategoryList }">
		<li class="shop-item">
		<a class="link" href="product/cateId.do?productCategoryId=${prodCate.productCategoryId }">${prodCate.productCategoryName }</a>
		</li>	
	</c:forEach>
	</ul>
	</ul>
</div>

<div class="w">
	<!--  所有已审核的商店的显示 -->
	<div class="floor-wrap">
	    <h1 class="floor-title">所有商店</h1>
	       <ul class="floor-list">
	       <c:forEach var="shop" items="${shopList }">
	           <li class="floor-item">
	                <a href="product/shopId.do?shopId=${shop.shopId }">
	                <span class="floor-text">${shop.shopName }</span>
	                <img class="floor-img" src="image/shop/${shop.shopImg }" alt="${shop.shopName }" />
	                </a>
	           </li>
	       </c:forEach>
	       </ul>
	</div>
	 <!--  所有已审核的商品的显示 -->
	 <div class="floor-wrap">
	    <h1 class="floor-title">所有商品</h1>
	       <ul class="floor-list">
	       <c:forEach var="prod" items="${productList }">
	           <li class="floor-item">
	                <a href="product/detail.do?productId=${prod.productId }">
	                <span class="floor-text">${prod.productName }</span>
	                <img class="floor-img" src="image/floor/${prod.imgAddr }" alt="${prod.productName }" />
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