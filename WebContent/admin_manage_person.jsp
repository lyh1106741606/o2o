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
	<h2>已冻结用户</h2>
	<div>
		<c:forEach var="person" items="${person0List }">
				<span >
				<h4> ${person.name } </h4>
				<img src="image/person/${person.profileImg }" alt="${person.name }"  width="100" height="100"/>
				</span>	
				<span>
				<a href="personInfo/adminManagePerson.do?userId=${person.userId }&option=1"> 激活 </a>
				
				</span>
		</c:forEach>
	</div>
	
	<h2>正常用户</h2>
	<div>
		<c:forEach var="person" items="${person1List }">
				<span >
				<h4> ${person.name } </h4>
				<img src="image/person/${person.profileImg }" alt="${person.name }"  width="100" height="100"/>
				</span>	
				<span>
				<a href="personInfo/adminManagePerson.do?userId=${person.userId }&option=0"> 冻结 </a>
				</span>
		</c:forEach>
	</div>
	
</div>





</body>
</html>