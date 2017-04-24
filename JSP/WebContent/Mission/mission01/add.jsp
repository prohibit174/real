<%@page import="java.util.ArrayList"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

String selected = request.getParameter("product");
ArrayList<String> fruit = (ArrayList) session.getAttribute("fruit");


if(fruit == null){
	fruit = new ArrayList<String>();
	session.setAttribute("fruit", fruit);
}

	fruit.add(selected);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="selProduct.jsp" onclick="history.go(-1); return false;"> 이전페이지 </a>
</body>
</html>