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
<style type="text/css">


table, th, td{
	border: 5px solid pink;
	border-collapse: collapse;
	font-size: 20pt;
}

table.center{
margin-left: auto;
margin-right: auto;
}

</style>

</head>
<body>
<h2 style="text-align: center; font-size: 25pt">구구단</h2>

<table class="center">
<tbody>
<c:forEach var="i" begin="1" end="9">
<th>${i}단</th>

</c:forEach>
<c:forEach var="i" begin="1" end="9">
	<tr>
   <c:forEach var="j" begin="1" end="9">			
	<td>${j}x ${i} = ${i*j}</td>		
	</c:forEach>   
    </tr> 
   
</c:forEach>
 </tbody>
</table>
</body>
</html>