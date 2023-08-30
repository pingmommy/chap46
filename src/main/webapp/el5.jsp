<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var ="i" begin="0" end="10">
${i}<br>
${pageScope.i}

<%=pageContext.getAttribute("i") %>
</c:forEach>

</body>
</html>

<%-- 
<c:forEach var ="i" begin="0" end="10">
${i}<br>
</c:forEach>

이 때 i는 pageScope에 저장됨. 

--%>