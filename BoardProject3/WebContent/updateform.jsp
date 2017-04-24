<%@page import="kosta.model.Board"%>
<%@page import="kosta.model.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String id = request.getParameter("b_id"); //b_id 파라미터값 가져오기 
	int b_id = 0;
	if (id != null) {
		b_id = Integer.parseInt(id);
	}
	BoardService service = BoardService.getInstance();
	Board board = service.selectBoardService(b_id);

	//el태크 사용시 꼭 넣으세요.
	request.setAttribute("board", board);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>글작성하기</h1>
	<form action="updateOk.jsp?b_id=${board.b_id }" method="post">

		<table border="1" cellpadding="0" cellspacing="0">
			<tr height="30">
				<td width="80">작성자</td>
				<td width="170"><input type="text" name="b_name" size="10"  value="${board.b_name }">
				</td>
				<td width="80">비밀번호</td>
				<td width="170"><input type="password" name="b_pwd" size="10">
				</td>
			</tr>
			<tr height="30">
				<td width="80">제목</td>
				<td align="left" colspan="3">
					<input type="text" name="b_title" size="50" value="${board.b_title }"></td>
			</tr>
			<tr height="30">
				<td colspan="4"><textarea rows="10" cols="70" name="b_content"  >${board.b_content }</textarea>
				</td>
			</tr>
			<tr height="30">
				<td colspan="4" align="center"><input type="submit" value="글쓰기">&nbsp;&nbsp;
					<input type="reset" value="취소"></td>
			</tr>
		</table>
	</form>
</body>
</html>

