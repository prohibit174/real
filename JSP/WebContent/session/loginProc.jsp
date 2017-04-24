<%@page import="org.apache.catalina.Session"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <%
    	String id = request.getParameter("id");
    	String pass = request.getParameter("pass");
    	
    	String m_id = "kosta";
    	String m_pass = "1234";
    	String name ="홍길동";
    	
    	if(id.equals(m_id) && pass.equals(m_pass)){
    		session.setAttribute("name", name);
    		response.sendRedirect("../session/main/main.jsp");
    	}else{
    		response.sendRedirect("../session/loginForm.jsp");
    	}
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>