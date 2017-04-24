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
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"59212",secure:"59221"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-15" data-genuitec-path="/JSP/WebContent/bean/detail.jsp">
 <ul data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-15" data-genuitec-path="/JSP/WebContent/bean/detail.jsp">
 	<li>글번호 : <%= board.getSeq() %></li>
 	<li>제목 : <%= board.getTitle() %></li>
 	<li>작성자 : <%= board.getWriter() %></li>
 	<li>내용 : <%= board.getContents() %></li>
 
 
 </ul>
</body>
</html>