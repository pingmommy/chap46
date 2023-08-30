<%@page import="util.Alpha"%>
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

<p>el을 사용하지 않으면 데이터를 읽어서 출력할 때 매우 복잡해 진다. 
</p>

<jsp:useBean id="a" class="util.Alpha"></jsp:useBean>

line = <jsp:getProperty property="line" name="a"/>
colum = <jsp:getProperty property="column" name="a"/>
fg = <jsp:getProperty property="fg" name="a"/>
ch = <jsp:getProperty property="ch" name="a"/>
<h1>1. 표현식사용</h1>
<%=a.getCh() %>
<%=a.getLine() %>
<%=a.getColumn() %>
<%=a.getFg() %>
<%=a.getBg() %>
<hr>

<h1>2. EL로 표현</h1>
${a.line}
${a.column}
${a.bg}
${a.fg}
${a.ch}


<c:set var="b" value="<%=new Alpha() %>"/>



<h1>1-2. 표현식사용</h1>
<p>1과 다른 것은 내장객체의 메소드로 불러왔는데, 이유는 c:set을 썼기 때문이다. c:set은  useBean은 로컬변수이기도 해서 id"a"를 참조하여 메소드를 쓸 수 있지만 </p>
<p> c:set은 pageScope에 저장되는 변수이기 때문에 id'a'를 참조할 수 없다. 따라서 해당내장객체명을 명시하고 메소드를 불러와야 한다.  </p>
<%=((Alpha)(pageContext.getAttribute("b"))).getLine()%>
<%=((Alpha)(pageContext.getAttribute("b"))).getColumn()%>
<%=((Alpha)(pageContext.getAttribute("b"))).getBg()%>
<%=((Alpha)(pageContext.getAttribute("b"))).getFg()%>
<%=((Alpha)(pageContext.getAttribute("b"))).getCh()%>


</body>
</html>

<%-- 
<jsp:useBean id="a" class="util.Alpha"></jsp:useBean> 이건 되지만

<%=a.getCh() %>
<%=a.getLine() %>
<%=a.getColumn() %>
<%=a.getFg() %>
<%=a.getBg() %>

이건 안 된다.
<c:set var="b" value="<%=new Alpha() %>"/>
<%=b.getCh() %>
<%=b.getLine() %>
<%=b.getColumn() %>
<%=b.getFg() %>
<%=b.getBg() %>

--%>