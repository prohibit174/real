<%@page import="kosta.model.Board"%>
<%@page import="kosta.model.BoardDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!-- 다오가 리스트 객체를 가지고 잇으므로 다오로부터 리스트객체를 가져오기 위해 다오를 가지고 있어야 한다. -->
<%
   String num = request.getParameter("seq");
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
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"59212",secure:"59221"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc4-1" data-genuitec-path="/myBatis/WebContent/detail.jsp">
   <ul data-genuitec-lp-enabled="false" data-genuitec-file-id="wc4-1" data-genuitec-path="/myBatis/WebContent/detail.jsp">
      <li>글번호:<%=board.getSeq()%></li>
      <li>제목:<%=board.getTitle()%></li>
      <li>작성자:<%=board.getWriter()%></li>
      <li>내용:<%=board.getContents()%></li>
      
      
   </ul>
  <a href ="updateForm.jsp?seq=<%=board.getSeq()%>"> 수정하기</a>
  <a href ="deleteForm.jsp?seq=<%=board.getSeq()%>"> 삭제하기</a>
</body>
</html>