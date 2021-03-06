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
    <link href="page/detail/index.css" rel="stylesheet" type="text/css" /> 
    
	<script type="text/javascript" src="page/index/index.js" ></script>
	<script type="text/javascript" src="page/detail/index.js" ></script>
	
<title>管理员</title>
</head>
<body>
<!--  最上面登陆注册购物车模块 -->
<div class="nav">
    <div class="w">
        <div class="user-info">
            <span class="user not-login">
                <span class="link js-login">欢迎你，超级管理员：${person.name }</span>
                <span class="link js-login" ><a class="link" href="login.jsp">退出</a></span>
            </span>
        </div>
        <ul class="nav-list">
            <li class="nav-item">
            </li>
            <li class="nav-item">             
            </li>
            <li class="nav-item">
            </li>
            <li class="nav-item">
            </li>
        </ul>
    </div>
</div>
<!-- 商城的LOGO与搜索模块 -->
<form action="product/productName.do" method="post" >
<div class="header">
    <div class="w">
        <a class="logo" href="admin_manager.jsp">BKMall 管理界面</a>
        <div class="search-con">   
 
        </div>
        <div class="search-con">   
 
        </div>
    </div>
</div>
</form>
		<div class="crumb">
            <div class="w">
                <div class="crumb-con">
                    <a class="link" href="main/init.do">BKMall</a>
                    <span>|</span>
                    <a class="link" href="shop/adminManageShopInit.do">商店管理</a>
                    <span>|</span>
                    <a class="link" href="product/adminManageProductInit.do">商品管理</a>
                    <span>|</span>
                    <a class="link" href="personInfo/adminManagePersonInit.do">用户管理</a>
                </div>
            </div>
        </div>
        
        <div class="page-wrap w">
			<div class="w">
				<!--  功能 -->
				<div class="floor-wrap" >
				    <h1 class="floor-title">请选择功能</h1>
				       <ul class="floor-list" >
				       
				           <li class="floor-item">
				                <a href="shop/adminManageShopInit.do">
				                <span class="floor-text">商店管理</span>
				                <img class="floor-img" src="image/shop/13.jpg"  />
				                </a>
				           </li>
				           
				           <li class="floor-item">
				                <a href="product/adminManageProductInit.do">
				                <span class="floor-text">商品管理</span>
				                <img class="floor-img" src="image/shop/13.jpg"  />
				                </a>
				           </li>
				           
				           <li class="floor-item">
				                <a href="personInfo/adminManagePersonInit.do">
				                <span class="floor-text">用户管理</span>
				                <img class="floor-img" src="image/shop/13.jpg"  />
				                </a>
				           </li>
				           
				       
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
