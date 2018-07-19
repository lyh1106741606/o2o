<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<title>管理界面</title>
</head>
<frameset rows="150,*,100" frameborder="no">
	<frame src="shop_manager.jsp" noresize="noresize" />
	<frameset cols="150,*" frameborder="no">
		<frame src="owner_manage_shop.jsp" noresize="noresize" name="leftFrame"/>	
		<frame src="shop_detail.jsp" name="centerFrame"/>	
	</frameset>
	<frame src="#" noresize="noresize" />
</frameset>

</html>