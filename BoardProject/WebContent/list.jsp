<%@page import="kosta.model.ListModel"%>
<%@page import="kosta.model.Search"%>
<%@page import="kosta.model.Board"%>
<%@page import="java.util.List"%>
<%@page import="kosta.model.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
	request.setCharacterEncoding("utf-8");

	String pageNum = request.getParameter("pageNum");
	if(pageNum == null){
		pageNum = "1";
	}
	
	int requestPage = Integer.parseInt(pageNum);
	
   BoardService service = BoardService.getInstance();
   // 파라미터로 requestPage를 통해서 페이지 요청
     ListModel listModel = service.listBoardService(request, requestPage); 

   request.setAttribute("listModel", listModel);
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>

</style>
<body>
   <h3>글목록보기</h3>
   <a href="insertform.jsp">글쓰기</a>
   <table border="1" cellpadding="0" cellspacing="0">
      <tr height="30">
         <th width="50">번호</th>            
         <th width="100">이미지</th>            
         <th width="350">제목</th>
         <th width="150">작성자</th>
         <th width="150">작성일</th>
         <th width="100">조회수</th>    
         엿     
      </tr>
      <c:forEach var="board" items="${listModel.list}">
      <tr height="30">
        <td align="center">${board.b_id }</td>
            <td align="center"><c:if test="${board.b_fname!=null}">
                  <c:set var="head"
                     value="${fn:substring(board.b_fname, 0, fn:length(board.b_fname)-4) }"></c:set>
                  <c:set var="pattern"
                     value="${fn:substring(board.b_fname, fn:length(head)+1, fn:length(board.b_fname)) }"></c:set>

                  <c:choose>
                     <c:when test="${pattern=='jpg' || pattern =='gif' }">
                        <img src="upload/${head }_small.${pattern}">
                     </c:when>
                     <c:otherwise>
                        <c:out value="NO IMAGE"></c:out>
                     </c:otherwise>
                  </c:choose>
               </c:if>
               </td>
         <td align="left">         
            <c:if test="${board.b_level > 0}">
               <c:forEach var="k" begin="0" end="${board.b_level}">
                  &nbsp;&nbsp;
               </c:forEach>
               <img src="images/AnswerLine.gif">
            </c:if>
            <a href="detail.jsp?b_id=${board.b_id }">${board.b_title }</a>      
         </td>
         <td align="center">${board.b_name }</td>
         <td align="center">
            <fmt:formatDate value="${board.b_date }" pattern="yyyy-MM-dd"/>
         </td>
         <td align="center">${board.b_hit }</td>
      </tr>      
      </c:forEach>      
   </table>
   <br><br>
   <!-- 페이지 처리 영역 -->
   <!-- 페이지당 글 개수, 총 글개수, 총 페이지 수, 시작 페이지와 끝 페이지 -->
   <!-- 현재 페이지, start_row, end_row -->
   
   <!-- 이전 -->
   <c:if test="${listModel.startPage > 5 }">
   	<a href="list.jsp?pageNum=${listModel.startPage - 5}" >[이전]</a>
   </c:if>
   <!-- 페이지 목록 -->
   <c:forEach var="pageNo" begin="${listModel.startPage}"
      end="${listModel.endPage }">
      <c:if test="${listModel.requestPage == pageNo}"><b></c:if>
      <a href="list.jsp?pageNum=${pageNo}" >[${pageNo}]</a>
      <c:if test="${listModel.requestPage == pageNo}"></b></c:if>
      
   </c:forEach>
   
   <!-- 이후 -->
   <c:if test="${listModel.endPage < listModel.totalPageCount}">
		<a href="list.jsp?pageNum=${listModel.startPage + 5}">[이후]</a>   
   </c:if>
   <form action="list.jsp" method="post">
       <input type="hidden" name="temp" value="temp"></input>
       <input type="checkbox" name="area" value="b_title">제목</input>
       <input type="checkbox" name="area" value="b_name">작성자</input>
       <input type="text" name="searchKey" size="10"></input>
       <input type="submit" value="검색">
   </form>
   
</body>
</html>

















