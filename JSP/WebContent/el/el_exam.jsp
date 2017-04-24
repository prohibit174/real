<%@page import="java.util.ArrayList"%>
<%@page import="kosta.bean.Member"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
   	request.setAttribute("name", "kosta");
 
	HashMap<String, String> map = new HashMap<String, String>();
	map.put("samsung", "이승엽");
	request.setAttribute("baseball", map);
	
	Member m = new Member();
	m.setName("홍길동");
	request.setAttribute("member", m);
   %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="el_result.jsp"></jsp:forward>
	<jsp:param value="apple" name="fruit"/>
	
</body>
</html>