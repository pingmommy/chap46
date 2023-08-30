<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el</title>


</head>

<!-- EL변수의 참조변수 뭘 말하는 거냐.. -->
<body>
<%
 var a=  new Alpha();
pageContext.setAttribute("alpha", a);

var b = pageContext.getAttribute("alpha");

%>
${alpha}

<%

// 4가지의 스코프 오브젝트(el객체) : 각각 스코프가 다르다. el이 변수를 참조하는 순서: pageContext-> request -> session -> application
// pageContext에 el이 찾는 참조변수가 있으면 나머지 오브젝트는 찾지 않는다. 없으면 있을 때까지 순서대로 찾음. 
 


pageContext.setAttribute("num", 100); //scope: 해당 jsp 페이지안에서만 

request.setAttribute("num", 200); //scope: request에 대한 응답이 완료될 때까지 (request요청이 오면 request객체 생성됨.)

session.setAttribute("num", 300); //scope: session은 코드를 삭제되거나 응답이 완료되어도 웹브라우저가 닫히지 않으면 값이 살아 있다. 

application.setAttribute("num", 400);//scope: 웹브라우저가 닫혀도 scope는 살아 있음. 서버가 꺼져야 값이 사라짐. 

%>

${num}<br>
${num2}
<hr>


<!-- 각오브젝트를 명시하여 참조하면 해당값을 찾을 수 있다. 스코프를 지정하지 않으면 순서대로 찾음.  -->

pageScope = ${pageScope.num}<br>
${requestScope.num}
${sessionScope.num}
${applicationScope.num}

</body>
</html>


<%-- ${alpha} - el변수 : 스코프오브젝트에 맵핑된 키. 출력결과는 스코프오브젝트에 맵핑된 키의 값. --%>

<!-- pageContext.setAttribute("alpha", a);(키, 밸류); - 키가 el변수 -->