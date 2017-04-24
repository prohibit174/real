<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"59212",secure:"59221"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-3" data-genuitec-path="/JSP/WebContent/JSPFolder/form.jsp">
	<form action="/JSP/FormServlet" method="post" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-3" data-genuitec-path="/JSP/WebContent/JSPFolder/form.jsp">
		이름 : <input type="text" name="name" size="20"><br> 
		주소 : 	<input type="text" name="address" size="20"><br> 
		관심사항 : <input type="checkbox" name="symbol" value="Java">JAVA
		  <input type="checkbox" name="symbol" value="JSP">JSP
		  <input type="checkbox" name="symbol" value="DB">DB
			<br>
		<input type="submit" value="전송">
	</form>
	
	<%= application.getRealPath("/form.jsp")%>
</body>
</html>