<%@page import="kosta.model.Board"%>
<%@page import="kosta.model.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	request.setCharacterEncoding("utf-8");
%>
 
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
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-6" data-genuitec-path="/MVC_Project/WebContent/updateForm.jsp">
	<form action="updateAction2.do" method="post" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-6" data-genuitec-path="/MVC_Project/WebContent/updateForm.jsp">
		글번호 : <input type="text" name="seq" value="<%=board.getSeq()%>"><br>
		작성자 : <input type="text" name="writer" value="<%=board.getWriter()%>"><br> 
		제목 : <input type="text" name="title" value="<%=board.getTitle()%>">
		<br> <input type="submit" value="수정" >
	</form>
</body>
</html>