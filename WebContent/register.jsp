<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<title>注册</title>
</head>
<body>
<form action="personInfo/add.do" method="post" enctype="multipart/form-data">
姓名：<input type="text" name="name" /><br/>
性别：<input type="radio" name="gender" value="1" checked="checked" />男
 <input type="radio" name="gender" value="0" />女<br/>
邮箱：<input type="text" name="email" /><br/>
头像：<input type="file" name="image" /><br/>
类型：<input type="radio" name="userType" checked="checked" value="1" />普通用户
 <input type="radio" name="userType" value="0" />商店店主<br/>
 <input type="submit" value="提交 " />
</form>

<table border="1" width="100%">
			<tr>
				<td>
					<!-- LOGO部分 -->
					<table width="100%">
						<tr height="40">
							<td>
								<img src="img/index/logo2.png"/>
							</td>
							<td>
								<img src="img/index/header.jpg"/>
							</td>
							<td>
								<a href="#">登录</a>
								<a href="#">注册</a>
								<a href="#">购物车</a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr bgcolor="black" height="30">
				<td>
					<a href="#"><font color="white">首页</font></a>&nbsp;&nbsp;&nbsp;  
					<a href="#"><font color="white">手机数码</font></a>&nbsp;&nbsp;&nbsp;  
					<a href="#"><font color="white">电脑办公</font></a>&nbsp;&nbsp;&nbsp;        
					<a href="#"><font color="white">鞋靴箱包</font></a>&nbsp;&nbsp;&nbsp; 
					<a href="#"><font color="white">鞋靴箱包</font></a>&nbsp;&nbsp;&nbsp;
				</td>
			</tr>
			<tr height="600">
				<td>
					<table width="100%" height="100%" background="img/register/regist_bg.jpg">
						<tr>
							<td align="center">
								<table width="60%" height="80%" border="1" bgcolor="white">
									<tr>
										<td>
											<form>
											<table width="100%" height="100%" border="0" align="center" cellspacing="10">
												<tr>
													<td>用户名</td>
													<td><input type="text" name="username"/></td>
												</tr>
												<tr>
													<td>密码</td>
													<td><input type="password" name="password"/></td>
												</tr>
												<tr>
													<td>确认密码</td>
													<td><input type="password" name="repassword"/></td>
												</tr>
												<tr>
													<td>性别</td>
													<td><input type="radio" name="sex" value="男" checked="checked"/>男<input type="radio" name="sex" value="女"/>女</td>
												</tr>
												<tr>
													<td>Email</td>
													<td><input type="text" name="email"/></td>
												</tr>
												<tr>
													<td>姓名</td>
													<td><input type="text" name="name"/></td>
												</tr>
												<tr>
													<td>生日</td>
													<td><input type="text" name="birthday"/></td>
												</tr>
												<tr>
													<td>验证码</td>
													<td><input type="text" name="checkcode" size="10"/></td>
												</tr>
												<tr>
													<td colspan="2"><input type="submit" value="注册"/></td>
												</tr>
											</table>
											</form>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<img src="/img/index/footer.jpg" width="100%"/>
				</td>
			</tr>
			<tr>
				<td align="center">
				    <a href="..">关于我们</a>
				    <a href="">联系我们</a>
				    <a href="">招贤纳士</a>
				    <a href="">法律声明</a>
				    <a href="..">友情链接</a>
				    <a href="">支付方式</a>
				    <a href="">配送方式</a>
				    <a href="">服务声明</a>
				    <a href="">广告声明</a>
					<br/>
					Copyright © 2005-2016 传智商城 版权所有 
				</td>
			</tr>
		</table>


</body>
</html>