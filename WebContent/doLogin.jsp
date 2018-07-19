<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//设置编码格式
request.setCharacterEncoding("UTF-8");
//获取用户的表单数据
String userid = request.getParameter("userid");
String pwd = request.getParameter("pwd");
//判断用户名和密码是否正确
if("handy".equals(userid) && "handy1998".equals(pwd)){
	//跳转到主页index.jsp
	request.setAttribute("userid", userid);
	request.getRequestDispatcher("main.jsp").forward(request, response);
}else{
	request.setAttribute("msg", "用户名或密码错误");
	request.getRequestDispatcher("index.jsp").forward(request, response);
}
%>