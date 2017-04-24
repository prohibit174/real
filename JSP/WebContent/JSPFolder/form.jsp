<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/JSP/FormServlet" method="post">
		이름 : <input type="text" name="name" size="20"><br> 
		주소 : 	<input type="text" name="address" size="20"><br> 
		관심사항 : <input type="checkbox" name="symbol" value="Java">JAVA
		  <input type="checkbox" name="symbol" value="JSP">JSP
		  <input type="checkbox" name="symbol" value="DB">DB
			<br>
		<input type="submit" value="전송">
	</form>
	
	<%= application.getRealPath("/form.jsp")%>
</body>
</html>