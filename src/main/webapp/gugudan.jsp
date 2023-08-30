<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="jakarta.tags.core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugudan</title>
</head>
<body>
<h2>구구단</h2>

<table>
<c:forEach var="i" begin="1" end="9">
	<h3>${i}단</h3>
	<ul>
  <c:forEach var="j" begin="1" end="9">
	<c:if test="${j%2==0}">
	<li style="color: red;">${i}x ${j} = ${i*j}<br></li>
	</c:if>
	
	<c:if test="${j%2==1}">
	<li style="color: blue;">${i}x ${j} = ${i*j}<br></li>
	</c:if>
	</c:forEach>
    </ul>
    <hr>
</c:forEach>
</table>
</body>
</html>