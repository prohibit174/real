<%@page import="kosta.model.Board"%>
<%@page import="kosta.model.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String num = request.getParameter("seq");
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	int seq = 1;

	//seq값이 없으면 넘버포멘 익셉션이 발생할수 있음
	if (num != null) {
	   seq = Integer.parseInt(num);
	}
	BoardDao dao = BoardDao.getInstance();
	Board board = dao.detailBoard(seq);
	board.setTitle(title);
	board.setWriter(writer);
	
	dao.updateBoard(board);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
수정되었습니다..<a href="list.jsp" >돌아가기</a>
</body>
</html>