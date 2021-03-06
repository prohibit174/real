<%@page import="kosta.model.Board"%>
<%@page import="kosta.model.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<%
String id = request.getParameter("b_id");
int b_id = 0;


if(id != null){
   b_id = Integer.parseInt(id);
}
BoardService service = BoardService.getInstance();
Board board = service.selectBoardService(b_id);



request.setAttribute("board", board);  //id값, 벨류값
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript">
	function fn_move(){
		location.href = "updateAction.jsp?b_id=${board.b_id }";
	}
	function fn_back(){
		location.href = "list.jsp";
	}
</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"59212",secure:"59221"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc6-6" data-genuitec-path="/BoardTest/WebContent/updateForm.jsp">
   <h1 data-genuitec-lp-enabled="false" data-genuitec-file-id="wc6-6" data-genuitec-path="/BoardTest/WebContent/updateForm.jsp">글작성하기</h1>
   <form action="updateAction.jsp" method="post">
      <input type="hidden" name="b_id" value="<%=b_id %>">
      <table border="1" cellpadding="0" cellspacing="0">
      <tr height="30">
         <td width="80">작성자</td>
         <td width="170">
            <input type="text" name="b_name" size="10" value="<%= board.getB_name()%>">
         </td>
         <td width="80">비밀번호</td>
         <td width="170">
            <input type="password" name="b_pwd" size="10" value="<%= board.getB_pwd()%>">
         </td>      
      </tr>
      <tr height="30">
         <td width="80">제목</td>
         <td align="left" colspan="3">
  				<input type="text" name="b_title" size="10" value="<%= board.getB_title()%>">
         </td>               
      </tr>      
      <tr height="30">         
         <td colspan="4">
            <textarea rows="10" cols="70" name="b_content"></textarea>
         </td>         
      </tr>
      <tr height="30">         
         <td colspan="4" align="center">
            <input type="submit" value="글쓰기" onclick="fn_move()">&nbsp;&nbsp;
            <input type="reset" value="취소" onclick="fn_back()">
         </td>         
      </tr>
   </table>
   </form>
</body>
</html>









