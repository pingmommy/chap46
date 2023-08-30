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
<tbody>
<c:forEach var="i" begin="1" end="9">
	<tr>
	<h3>${i}단</h3>
	
   <c:forEach var="j" begin="1" end="9">
		<c:choose>
<%-- 		<c:when test="${i*j%3==0}"> --%>
	    <c:when test="${i*j%3 eq 0}">
		<li style="color: red;">${i}x ${j} = ${i*j}<br></li>
		</c:when>
		<c:when test="${i*j%5==0}">
		<li style="color: blue;">${i}x ${j} = ${i*j}<br></li>
		</c:when>
		<c:otherwise>
		<li>${i}x ${j} = ${i*j}<br></li>
		</c:otherwise>
		</c:choose>
	</c:forEach>
   
   </tr> 
   
</c:forEach>
 </tbody>
</table>
</body>
</html>