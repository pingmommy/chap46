<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ attribute name="line" required="true"%>
<%@ attribute name="column" required="true"%>

<%-- 속성설정 :<%@ attribute name="line" required="true"%> --%>


<table>
	<c:forEach var ="i" begin="0" end="${line-1}">
	 <tr>
		<c:forEach var ="i" begin="0" end="${column-1}"> 
			<jsp:useBean id="a" class="util.Alpha"></jsp:useBean>
			<td style="color:${a.fg}; background:${a.bg}">${a.ch}</td>
			<c:remove var="a"/>
		</c:forEach>
	 </tr>
	</c:forEach>
</table>
