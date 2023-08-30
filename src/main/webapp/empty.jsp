<%@page import="java.util.HashSet"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="jakarta.tags.core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>empty</title>
</head>
<body>
<c:set var="v1"/>
<c:set var="v1" value="${null}"/>
<c:set var="v2" value="${3}"/>
<c:set var="v3" value=""/>
<c:set var="v4" value="<%=new ArrayList<Integer>() %>"/>
<c:set var="v5" value="<%=new HashSet<Integer>() %>"/>
<c:set var="v6" value="<%=new HashMap<Integer,Integer>() %>"/>
<%-- <c:set var="v7" value="<%=new int[0] %>"/> --%>
<c:set var="v8" value="0"/>

v1 = ${empty v1}<br>
v2 = ${empty v2}<br>
v3= ${empty v3}<br>
v4= ${empty v4}<br>
v5= ${empty v5}<br>
v6= ${empty v6}<br>
v7= ${empty v7}<br>
v0= ${empty v8}<br>

<p>값이 있냐없냐를 확인할 때</p>
name = ${empty param.name}<br>


<c:if test="${!empty param.name}"></c:if>
name = ${empty param.name}
</body>
</html>