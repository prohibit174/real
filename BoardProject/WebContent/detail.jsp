<%@page import="kosta.model.Board"%>
<%@page import="kosta.model.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<%
	String id = request.getParameter("b_id");
	int b_id = 0;
	if(id != null){
		b_id = Integer.parseInt(id);
	}
	boolean answer = false;
	BoardService service = BoardService.getInstance();
	Board board = service.selectBoardService(b_id, answer);
	
	request.setAttribute("board", board);
	
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function fn_reply(){
		location.href = "insertform.jsp?b_id=${board.b_id }";
	}
	
	function fn_update(){
		location.href ="updateForm.jsp?b_id=${board.b_id}";
	}
</script>
</head>
<body>
	<h3>글세부보기</h3>
	<table border="1">
		<tr height="30">
			<td width="150">글번호</td>
			<td width="150">${board.b_id }</td>
			<td width="150">조회수</td>
			<td width="150">${board.b_hit }</td>
		</tr>
		<tr height="30">
			<td width="150">작성자</td>
			<td width="150">${board.b_name }</td>
			<td width="150">작성일</td>
			<td width="150">
				<fmt:formatDate value="${board.b_date }" pattern="yyyy-MM-dd"/>
			</td>
		</tr>			
		<tr height="30">
			<td width="150">파일</td>
			<td colspan="3">
				<a href="download.jsp?filename=${board.b_fname }">${board.b_fname }</a>
			</td>			
		</tr>
		<tr height="30">
			<td width="150">제목</td>
			<td colspan="3">${board.b_title }</td>			
		</tr>
		<tr height="30">			
			<td colspan="4">${board.b_content }</td>			
		</tr>
		<tr height="30">			
			<td colspan="4">
				<input type="button" value="답변글" onclick="fn_reply()">
				<input type="button" value="수정" onclick="fn_update()" >
			</td>			
		</tr>
	</table>
</body>
</html>






