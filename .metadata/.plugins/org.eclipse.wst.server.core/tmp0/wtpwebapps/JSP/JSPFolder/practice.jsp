<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"59212",secure:"59221"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-5" data-genuitec-path="/JSP/WebContent/JSPFolder/practice.jsp">
	<%
		int cnt = 0;
		for (int i = 0; i < 101; i++) {
			cnt += i;
		}
	%>

	1부터 100 까지의 합
	<%= cnt %>

	<table border="1" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-5" data-genuitec-path="/JSP/WebContent/JSPFolder/practice.jsp">
		<%
			for (int i = 0; i < 3; i++) {
		%>
		<tr>
			<%
				for (int j = 0; j < 2; j++) {
			%>
			<td><%=(i + j)%></td>
			<%
				}
			%>
		</tr>
		<%
			}
		%>



	</table>
</body>
</html>