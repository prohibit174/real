<%@page import="kosta.bean.Board"%>
<%@page import="kosta.bean.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	request.setCharacterEncoding("utf-8");
	%>

<% BoardDao dao = BoardDao.getInstance();
%>
		

<jsp:useBean id="board" class="kosta.bean.Board"></jsp:useBean>
<jsp:setProperty property="*" name="board" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>

				
	 <th>글번호</th>
	 <th>작성자</th>
	 <th>제목</th>
	 <th>내용</th>
	
	</tr>
	
	<tr>
	<% for(int i = 0; i<dao.listBoard().size(); i++){%>
				
	 <td><%=dao.listBoard().get(i).getSeq()%></td>
	 <td><a href="../bean/detail.jsp?seq=<%=dao.listBoard().get(i).getSeq()%>"><%=dao.listBoard().get(i).getWriter()%></a></td>
	 <td><%=dao.listBoard().get(i).getTitle()%></td>
	 <td><%=dao.listBoard().get(i).getContents()%></td>
	
	</tr>
	<% } %>
	
	</table>
</body>
</html>