<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="control.jsp" method="get">
		보고 싶은 페이지 : 
		<select name="page">
			<option value="a.jsp">A 페이지</option>
			<option value="b.jsp">B 페이지</option>
			<option value="c.jsp">C 페이지</option>
		</select>
		<input type="submit" value="이동">
	</form>
</body>
</html>