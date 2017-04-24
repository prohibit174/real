<%@page import="kosta.model.Board"%>
<%@page import="kosta.model.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	request.setCharacterEncoding("utf-8");
%>
 
<%
String num = request.getParameter("b_id");
int seq = 1;

//seq값이 없으면 넘버포멘 익셉션이 발생할수 있음
if (num != null) {
   seq = Integer.parseInt(num);
}
BoardDao dao = BoardDao.getInstance();
Board board = dao.detailBoard(seq);

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="updateAction.jsp" method="post">
		글번호 : <input type="text" name="seq" value="<%=board.getSeq()%>"><br>
		작성자 : <input type="text" name="writer" value="<%=board.getWriter()%>"><br> 
		제목 : <input type="text" name="title" value="<%=board.getTitle()%>">
		<br> <input type="submit" value="수정" >
	</form>
</body>
</html>