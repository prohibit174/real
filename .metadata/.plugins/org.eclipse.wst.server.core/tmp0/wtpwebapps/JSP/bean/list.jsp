<%@page import="kosta.bean.Board"%>
<%@page import="kosta.bean.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	request.setCharacterEncoding("utf-8");
	%>

<% BoardDao dao = BoardDao.getInstance();
%>
		

<jsp:useBean id="board" class="kosta.bean.Board"></jsp:useBean>
<jsp:setProperty property="*" name="board" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"59212",secure:"59221"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-18" data-genuitec-path="/JSP/WebContent/bean/list.jsp">
	<table border="1" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-18" data-genuitec-path="/JSP/WebContent/bean/list.jsp">
		<tr>

				
	 <th>글번호</th>
	 <th>작성자</th>
	 <th>제목</th>
	 <th>내용</th>
	
	</tr>
	
	<tr>
	<% for(int i = 0; i<dao.listBoard().size(); i++){%>
				
	 <td><%=dao.listBoard().get(i).getSeq()%></td>
	 <td><a href="../bean/detail.jsp?seq=<%=dao.listBoard().get(i).getSeq()%>"><%=dao.listBoard().get(i).getWriter()%></a></td>
	 <td><%=dao.listBoard().get(i).getTitle()%></td>
	 <td><%=dao.listBoard().get(i).getContents()%></td>
	
	</tr>
	<% } %>
	
	</table>
</body>
</html>