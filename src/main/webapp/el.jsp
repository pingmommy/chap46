<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el</title>


</head>
<body>
<%
 pageContext.setAttribute("xxx", 1000);
 pageContext.setAttribute("a", null);

 	int num =200;

%>

${xxx}

<!-- a가 null인지 확인하는 EL메소드 -->
${a eq null} 

<!-- null이지만 에러나지 않음 : EL의 특징 -->
${a}

<!-- EL 안의 변수는 int num과 같은 로컬변수가 아니다. 로컬변수는 읽히지 않음. 맵객체 안의 변수를 읽는다. -->
${num}

</body>
</html>

<!-- el은 읽기 전용 -->
<!-- el 변수만드는 법  -->
<!-- 1. 태그라이브러리사용 c:set -->
<!-- 2. 내장객체명.setattribute  -->