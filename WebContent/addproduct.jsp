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
	
	<link rel="stylesheet" href="page/user-register/demo.css">
	<link rel="stylesheet" href="page/user-register/sky-forms.css">
	<script src="jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="jquery/jquery.validate.min.js" type="text/javascript"></script>
	
<title>添加商品</title>
</head>
<body>
<!--  最上面登陆注册购物车模块 -->
<div class="nav">
    <div class="w">
        <div class="user-info">
            <span class="user not-login">
                <span class="link js-login">欢迎你，商店店主：${person.name }</span>
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
        <a class="logo" href="shop_manager.jsp">BKMall 管理界面</a>
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
                    <a class="link" href="shop/addInit.do">我要开店</a>
                    <span>|</span>
                    <a class="link" href="shop/ownerManageShopInit.do">管理店铺</a>
                </div>
            </div>
        </div>
        
        <div class="page-wrap w">

		<div class="body body-s">		
			<form action="product/add.do" method="post" enctype="multipart/form-data" id="sky-form" class="sky-form">
				<header>店铺：${shop.shopName }|添加商品</header>
				

				<fieldset>	
					<section>
						<label class="select">
							<select name="productCategoryId">
								<option value="0" selected disabled>商品类型</option>
								<c:forEach var="productcate" items="${productcategoryList }">
								<option value="${productcate.productCategoryId }">${productcate.productCategoryName }</option>
								</c:forEach>
							</select>
							<i></i>
						</label>
					</section>
				</fieldset>

				<fieldset>
					<section>
						<label class="input">
							<i class="icon-append icon-user"></i>
							<input type="text" name="productName" placeholder="商品名称">
						</label>
					</section>
					<section>
						<label class="input">
							<i class="icon-append icon-user"></i>
							<input type="text" name="normalPrice" placeholder="商品价格">
						</label>
					</section>
					<section>
						<label class="input">
							<i class="icon-append icon-user"></i>
							<input type="text" name="promotionPrice" placeholder="促销价格">
						</label>
					</section>
				
				</fieldset>
				<fieldset>						
					<section>
						请选择头像图片上传：
						<label class="input">
							<i class="icon-append icon-envelope-alt"> </i>
							<input type="file" name="image" placeholder="商品图片" /> 
						</label>
					</section>
				</fieldset>
					
				<fieldset>	
					<section>
							请输入商品简介：
							<textarea name="productDesc" rows="3" cols="50"/></textarea>

					</section>

				</fieldset>
				
				<footer>
					<button type="submit" class="button">提交</button>
				</footer>
			</form>			
		</div>
		
		<script type="text/javascript">
			$(function()
			{
				
				$("#sky-form").validate(
				{					
					
					rules:
					{
						username:
						{
							required: true
						},
						email:
						{
							required: true,
							email: true
						},
						password:
						{
							required: true,
							minlength: 3,
							maxlength: 20
						},
						passwordConfirm:
						{
							required: true,
							minlength: 3,
							maxlength: 20,
							equalTo: '#password'
						},
						firstname:
						{
							required: true
						},
						lastname:
						{
							required: true
						},
						gender:
						{
							required: true
						},
						terms:
						{
							required: true
						}
					},
					
					
					messages:
					{
						login:
						{
							required: 'Please enter your login'
						},
						email:
						{
							required: 'Please enter your email address',
							email: 'Please enter a VALID email address'
						},
						password:
						{
							required: 'Please enter your password'
						},
						passwordConfirm:
						{
							required: 'Please enter your password one more time',
							equalTo: 'Please enter the same password as above'
						},
						firstname:
						{
							required: 'Please select your first name'
						},
						lastname:
						{
							required: 'Please select your last name'
						},
						gender:
						{
							required: 'Please select your gender'
						},
						terms:
						{
							required: 'You must agree with Terms and Conditions'
						}
					},					
					
					
					errorPlacement: function(error, element)
					{
						error.insertAfter(element.parent());
					}
				});
			});			
		</script>
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
