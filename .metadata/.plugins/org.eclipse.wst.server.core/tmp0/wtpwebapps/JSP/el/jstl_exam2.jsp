<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"59212",secure:"59221"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-29" data-genuitec-path="/JSP/WebContent/el/jstl_exam2.jsp">
	<c:set var="fruit" value="${param.fruit}"></c:set>
	
	<!-- if 조건 출력 -->
	<c:if test="${fruit == 'orange'}">
		<c:out value="${fruit}"></c:out>
	</c:if>
	
	<!-- choose when -->
	<c:choose>
		<c:when test="${fruit == 'orange'}">
			<c:out value="${fruit} : 오렌지"></c:out>
		</c:when>
		<c:when test="${fruit == 'orange'}">
			<c:out value="${fruit} : 사과"></c:out>
		</c:when>
		<c:otherwise>
			<c:out value="${fruit} : 기타과일"></c:out>
		</c:otherwise>
	</c:choose>
	
	
	before : ${now}<br data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-29" data-genuitec-path="/JSP/WebContent/el/jstl_exam2.jsp">
	after : <fmt:formatDate value="${now}" pattern="yyyy-mm-dd"/><br><br>
	
	before : ${333333333}원<br>
	after : <fmt:formatNumber value="${333333333}" type="currency" currencySymbol="￦"></fmt:formatNumber><br><br>
	
	<fmt:formatNumber value="0.99" type="percent"></fmt:formatNumber>
	<fmt:formatNumber value="3.141592" pattern="#.00"></fmt:formatNumber>
	
</body>
</html>