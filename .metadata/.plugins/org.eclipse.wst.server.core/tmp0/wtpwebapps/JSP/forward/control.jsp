<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<% String selected = request.getParameter("page");
				String name2 = URLEncoder.encode("한글", "utf-8");
	%>
	<jsp:forward page="<%= selected %>">
	<jsp:param value="<%= name2 %>" name="name"/>
	</jsp:forward>
