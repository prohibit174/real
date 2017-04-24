<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String body = request.getParameter("body");
    if(body == null){
    	body = "../main.jsp";
    }
    
    String body2 = request.getParameter("body2");
    if(body2 == null){
    	body2 = "../main.jsp";
    }
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

		<jsp:include page="header.jsp"/>
	<hr>
		<jsp:include page="menu.jsp"/>
	<hr>
		<jsp:include page="<%= body %>"/>
	<hr>
		<jsp:include page="<%= body2 %>"/>
	<hr>
		<jsp:include page="footer.jsp"/>

</body>
</html>