<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="stylesheet" href="page/user-register/demo.css">
		<link rel="stylesheet" href="page/user-register/sky-forms.css">
		<script src="jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
		<script src="jquery/jquery.validate.min.js" type="text/javascript"></script>
<title>注册</title>
</head>
<body class="bg-cyan">

		<div class="body body-s">		
			<form action="auth/add.do" method="post" enctype="multipart/form-data" id="sky-form" class="sky-form">
				<header>用户名和密码设置</header>
				
				<fieldset>					
					<section>
						<label class="input">
							<i class="icon-append icon-user"></i>
							<input type="text" name="userId" readonly="readonly" value="${personInfo.userId }" />
						</label>
					</section>

				</fieldset>

				<fieldset>					
					<section>
						<label class="input">
							<i class="icon-append icon-envelope-alt"> </i>
							<input type="text" name="username" placeholder="用户登录名" /> 
						</label>
					</section>
					<section>
						<label class="input">
							<i class="icon-append icon-envelope-alt"> </i>
							<input input type="password" name="password" placeholder="用户密码" /> 
						</label>
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
				// Validation		
				$("#sky-form").validate(
				{					
					// Rules for form validation
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
					
					// Messages for form validation
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
					
					// Do not change code below
					errorPlacement: function(error, element)
					{
						error.insertAfter(element.parent());
					}
				});
			});			
		</script>


</body>
</html>