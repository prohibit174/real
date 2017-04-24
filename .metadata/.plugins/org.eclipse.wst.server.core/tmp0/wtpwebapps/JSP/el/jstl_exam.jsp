<%@page import="java.util.ArrayList"%>
<%@page import="kosta.bean.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"59212",secure:"59221"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-28" data-genuitec-path="/JSP/WebContent/el/jstl_exam.jsp">
	<%
		String hello = "Hello";
	%>
	
	<c:set var="msg" value="Hello2"></c:set>
	<c:out value="${msg}"></c:out>
	
	<!-- 구구단 4단 출력 -->
	<ul data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-28" data-genuitec-path="/JSP/WebContent/el/jstl_exam.jsp">
		<c:forEach var="i" begin="1" end="9">
			<li>4 * ${i} = ${4*i}</li>
		</c:forEach>
	</ul>
	
	<%
		List<Member> list = new ArrayList<Member>();
		list.add(new Member("aa", "aa", "홍길동", 10));
		list.add(new Member("bb", "bb", "박길동", 20));
		list.add(new Member("cc", "cc", "조길동", 30));
		
		request.setAttribute("list", list);
	%>
	
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>나이</th>
		</tr>
		
		<c:forEach var="m" items="${list}">
			<tr>
				<td>${m.id}</td>
				<td>${m.pass}</td>
				<td>${m.name}</td>
				<td>${m.age}</td>
			</tr>
		</c:forEach>
	</table>
	
	<c:redirect url="jstl_exam2.jsp">
		<c:param name="fruit" value="orange"></c:param>
	</c:redirect>
</body>
</html>