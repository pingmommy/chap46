<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
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
<h2>EL 산술연산</h2>
1+2=${1+2}<br>
1*2=${1*2}<br>
1/2=${1/2}<br>
1-2=${1-2}<br>

<h2>EL 배열, 리스트</h2>
<%
String[] lang ={"j","p","s"};
pageContext.setAttribute("L", lang);

var list = new ArrayList<Integer>();
list.add(500);
list.add(300);
list.add(700);
pageContext.setAttribute("li", list);

var map = new HashMap<String, Integer>();
map.put("j",1000);
map.put("a",2000);
map.put("b",3000);
pageContext.setAttribute("map", map);

%>

${L[0]}<br>
${li[0]}<br>
${map["j"]}<br>

<h2>EL 논리연산</h2>
true&&true =${true&&true} ${true and true }<br>
true || false =${true || false } ${true or false }<br>
!true = ${!true} ${not true}<br>
${10>5?"true":"false"}<br>

<h2>EL 관계연산</h2>
3<5 = ${3<5}<br>
3>5 = ${3>5}<br>
3!=5 = ${3!=5}<br>
3==5 = ${3 eq 5}<br>
3==5 = ${3 == 5}<br>

</body>
</html>