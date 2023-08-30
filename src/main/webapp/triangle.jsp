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
<title>triangle</title>
<style type="text/css">
th{
font-size: 15pt;
color:red;
}
</style>

</head>
<body>
<table>
<tr><th>1</th></tr>
<c:forEach var ="i" begin="0" end="4">
<tr>
  <c:forEach var ="j" begin="1" end="${i+1}">	
	<td>*</td>
  </c:forEach>	
</tr>
</c:forEach>

<tr><th>2</th></tr>


<c:forEach var="i" begin="0" end="4">
<tr>
	<c:forEach var="j" begin="1" end="${5-i}" >
		<td>*</td>
	</c:forEach>	
</tr>
</c:forEach>

<tr><th>3</th></tr>

<c:forEach var="i" begin="0" end="5">
<tr>
	<c:forEach var="j" begin="0" end="5">
		<c:choose>
			<c:when test="${i<j}">
			<td>*</td>
			</c:when>
			<c:otherwise>
			<td> </td>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</tr>
</c:forEach>

<tr><th>4</th></tr>

<c:forEach var="i" begin="0" end="4">
<tr>
	<c:forEach var="j" begin="0" end="5">
		<c:choose>
			<c:when test="${i+j>4}">
			<td>*</td>
			</c:when>
			<c:otherwise>
			<td> </td>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</tr>
</c:forEach>

</table>
</body>
</html>