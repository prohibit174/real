<%@page import="kosta.bean.Board"%>
<%@page import="kosta.bean.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    String seq = request.getParameter("seq"); 
    int seq2 = 1;
    if(seq != null){
    	seq2 = Integer.parseInt(seq);
    }
    
    BoardDao dao = BoardDao.getInstance();
    Board board = dao.detailBoard(seq2);
    //dao.getBoard(seq2);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <ul>
 	<li>글번호 : <%= board.getSeq() %></li>
 	<li>제목 : <%= board.getTitle() %></li>
 	<li>작성자 : <%= board.getWriter() %></li>
 	<li>내용 : <%= board.getContents() %></li>
 ㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜ
 
 </ul>
</body>
</html>