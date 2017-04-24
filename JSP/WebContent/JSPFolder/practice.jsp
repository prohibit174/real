<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int cnt = 0;
		for (int i = 0; i < 101; i++) {
			cnt += i;
		}
	%>

	1부터 100 까지의 합
	<%= cnt %>

	<table border="1">
		<%
			for (int i = 0; i < 3; i++) {
		%>
		<tr>
			<%
				for (int j = 0; j < 2; j++) {
			%>
			<td><%=(i + j)%></td>
			<%
				}
			%>
		</tr>
		<%
			}
		%>



	</table>
</body>
</html>