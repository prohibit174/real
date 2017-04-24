<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"59212",secure:"59221"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-4" data-genuitec-path="/JSP/WebContent/JSPFolder/index.jsp">
	<h1 data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-4" data-genuitec-path="/JSP/WebContent/JSPFolder/index.jsp">머리말</h1>
	
	<%
		Calendar date = Calendar.getInstance();
		SimpleDateFormat today  = new SimpleDateFormat("yyyy년 MM월 dd일");
	%>	
	
	오늘은 <%= today.format(date.getTime()) %>
	<h2>꼬리말</h2>
</body>
</html>