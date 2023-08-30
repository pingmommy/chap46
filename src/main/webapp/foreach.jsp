<%@page import="java.util.Arrays"%>
<%@page import="java.util.Locale"%>
<%@page import="org.springframework.cglib.core.Local"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>foreach</title>
</head>
<body>
<%
 Locale[] lo = Locale.getAvailableLocales();
 for(var l : lo)	
	 System.out.println(l.getDisplayName()+","+l.getDisplayCountry()+","+l.getISO3Language());
%>

<c:set var="locales" value="<%=Locale.getAvailableLocales() %>"></c:set>

<c:forEach var="l" items="${locales}" varStatus="status">
<c:if test="${l.ISO3Language eq 'kor' }">
 ${status.index} ${status.count}. ${l.displayName} ${l.ISO3Language}<br>
</c:if>
</c:forEach>
</body>
</html>