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
</head>
<body>
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
	
	
	before : ${now}<br>
	after : <fmt:formatDate value="${now}" pattern="yyyy-mm-dd"/><br><br>
	
	before : ${333333333}원<br>
	after : <fmt:formatNumber value="${333333333}" type="currency" currencySymbol="￦"></fmt:formatNumber><br><br>
	
	<fmt:formatNumber value="0.99" type="percent"></fmt:formatNumber>
	<fmt:formatNumber value="3.141592" pattern="#.00"></fmt:formatNumber>
	
</body>
</html>