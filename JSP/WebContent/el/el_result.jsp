<%@page import="kosta.bean.Member"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	before : <%= request.getAttribute("name") %><br>
	after : ${name}<br><br>
	
	before : <%= ((HashMap)request.getAttribute("baseball")).get("samsung") %><br>
	after : ${baseball.samsung} <br><br>
	
	before : <%= ((Member)request.getAttribute("member")).getName() %><br>
	after : ${member.getName()} <br><br>
	
	before : <%= request.getParameter("fruit") %>
	after : ${param.fruit}
</body>
</html>