<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="a" class="util.Alpha"/>
<jsp:useBean id="b" class="util.Alpha" scope="request"/>
<hr>

a = ${a}<br>
pageScope.a = ${pageScope.a}<br>

<%= 
pageContext.getAttribute("a")
%>
<hr>

b = ${b}<br>
requestScope.b =${requestScope.b}<br>
<%= 
request.getAttribute("b")
%>

</body>
</html>

<%-- <jsp:useBean id="a" class="util.Alpha"/> 
id="a" ->a는 el 변수
스코프를 지정하지 않았기 때문에 pageContext객체에 저장됨. 태그라이브러리를 쓸 때 만드는 변수도 default인 pageScope에 저장됨. 


--%>