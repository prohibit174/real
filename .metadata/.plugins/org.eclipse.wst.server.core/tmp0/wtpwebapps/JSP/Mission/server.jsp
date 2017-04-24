<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"59212",secure:"59221"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-13" data-genuitec-path="/JSP/WebContent/Mission/server.jsp">
<% 		

String basic_id = "asdf";
String basic_pwd = "asdf";

String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String str;

if((basic_id).equals(id)  & (basic_pwd).equals(pwd)){
	RequestDispatcher re = request.getRequestDispatcher("/Mission/success.jsp");
	str = "입력하신 아이디 : " + id + "비밀번호 : " + pwd;
	request.setAttribute("message1", str);
	re.forward(request, response);
}else{
	   String message= URLEncoder.encode("아이디 또는 비밀번호가 일치하지 않습니다.","UTF-8");
	   response.sendRedirect("fail.jsp?message=" + message);
}
	
%>
</body>
</html>