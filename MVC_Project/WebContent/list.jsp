<%@page import="kosta.model.Search"%>
<%@page import="kosta.model.Board"%>
<%@page import="kosta.model.BoardDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
	왜 안돼 짜증나게jjkjklkl
<!-- 다오가 리스트 객체를 가지고 잇으므로 다오로부터 리스트객체를 가져오기 위해 다오를 가지고 있어야 한다. -->
<%
	
	request.setCharacterEncoding("utf-8");
    BoardDao dao = BoardDao.getInstance();
	Search search = new Search();
	search.setArea(request.getParameterValues("area"));
	search.setSearchKey("%"+request.getParameter("searchKey")+"%");
   List<Board> list = dao.listBoard(search);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <table width="500" border="1" cellpadding="0" cellspacing="0">
      <tr>
         <th>글번호</th>
         <th>제목</th>
         <th>작성자</th>
         <th>작성일자</th>
         <th>조회수</th>
      </tr>
      <%for(int i=0 ; i<list.size() ; i++){
         Board board = list.get(i);
         %>
      <tr>
         <td><%=board.getSeq() %></td>
         <td><a href = "detailAction.do?seq=<%=board.getSeq() %>"><%=board.getTitle() %></td>
         <td><%=board.getWriter() %></td>
         <td><%=board.getDate() %></td>
         <td><%=board.getHitcount() %></td>
      </tr>
      <% }%>
   </table>
   
   <form action="list.jsp" method="post">
   	<input type="checkbox" name="area" value="title">제목</input>
   	<input type="checkbox" name="area" value="writer">작성자</input>
   	<input type="text" name="searchKey" size="10"></input>
   	<input type="submit" value="검색"></input>
   </form>
</body>
</html>