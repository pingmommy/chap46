<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el</title>


</head>
<!-- 1.pageScope -->
<!-- 2.requestScope -->
<!-- 3.sessionScope -->
<!-- 4.applicationScope -->

<body>
<!-- 태그라이브러리로 el변수생성 후 값 삽입 : 아무 조건도 주지 않으면 pageScope에 생성됨.-->
<c:set var ="num2" value ="100"/> 
<c:set var="num2" value="200"  scope="request"/>
<c:set var="num2" value="300"  scope="session"/>
<c:set var="num2" value="400"  scope="application"/>
<hr>
num2 = ${num2}<br>
pageScope.num2 = ${pageScope.num2}<br>
requestScope.num2 = ${requestScope.num2}<br>
sessionScope.num2 = ${sessionScope.num2}<br>
applicationScope.num2 = ${applicationScope.num2}<br>
<hr>

<!-- 스크립틀릿으로 num2값 출력 -->
<%=
pageContext.getAttribute("num2")
%>

<%=
request.getAttribute("num2")
%>

<%=
session.getAttribute("num2")
%>

<%=
application.getAttribute("num2")
%>
</body>
</html>

