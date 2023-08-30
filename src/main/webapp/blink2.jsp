<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
 
 <%@ taglib prefix="c" uri="jakarta.tags.core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>blink.jsp</title>
<style type="text/css">
table {
	font-family: monospace;
	font-size: 3em;
	border-collapse: collapse;
}
</style>
<script type="text/javascript">
/*
 * 만든이 : 조아라
 * 작성일 : 2023/08/28
 * 과 목 : Spring boot 응용
 */


class Blink{ 
	
	tid =[];
	a;
	
	constructor(ch){
		
		this.a = ch;
		
	}
	
	run() {
		console.log("run.."+Math.random())	
		
		let table = document.querySelector('table')
		
		for(let tr of table.rows){
			for(let td of tr.cells){
			 
				if(td.innerHTML== this.a){
				let id = setInterval(function() {
					if(td.style.visibility =='hidden')
						td.style.visibility ='visible'
					else
						td.style.visibility='hidden'
				}, Math.random()*500+10);
			  
			  this.tid.push(id)
			}
		}
	}
			
 }
	
	clear() {
		console.log("clear.."+Math.random())	
		console.log(this.tid)	
		for(let id of this.tid){
			 clearInterval(id)
		}
		
	}
	
}


window.onload = function() {
	let td = document.querySelector('table');
	let start = document.querySelectorAll('button')[0];
	let select = document.querySelector('select');
	let stop = document.querySelectorAll('button')[1];
	let show = document.querySelectorAll('button')[2];
	let hide = document.querySelectorAll('button')[3];
	
	start.disabled = false;
	select.disabled=false;
	stop.disabled = true;
	
	
	
	start.onclick = function(){
		
		start.disabled = true;
		select.disabled= true;
		stop.disabled = false;
	    let a = select.options[select.selectedIndex].value
		
		
		blink = new Blink(a);   
		blink.run();
		
	}
	
	
	stop.onclick = function(){
		
		start.disabled = false;
		select.disabled = false;
		stop.disabled = true;
		
		blink.clear();
		
	}
	
	
	hide.onclick = function(){
		for(let tr of td.rows){
			for(let tdd of tr.cells){
				if(tdd.style.visibility =='visible')
					tdd.style.visibility ='hidden'
				else
					tdd.style.visibility='hidden'
			}
		}
		
			 
	}
	
	show.onclick = function(){
		for(let tr of td.rows){
			for(let tdd of tr.cells){
				if(tdd.style.visibility =='hidden')
					tdd.style.visibility ='visible'
				else
					tdd.style.visibility='hidden'
			}
		}
	}
}


</script>
</head>
<body>
<h1>Alpha blink</h1>
<button>start</button>
<select>
	<c:forEach var ="i" begin="0" end="25">
	<c:set var ="ch" value="<%=(char)((Integer)pageContext.getAttribute(\"i\")+'A')%>"/>
	<option>${ch}</option>
	</c:forEach>
</select>

<select>
	<

	<c:set var="alphas" value="ABCDEFGHIJKLMNopqrstuvwxyz"/>
	<c:forEach var ="i" begin="0" end="25">
	<option>${alphas.charAt(i)}</option>
	</c:forEach>
</select>

<%-- <option>${alphas.charAt(i)}</option> alphas가 String이니까 String클래스가 가지고 있는 CharAt()메소드를 호출한다. --%>

<button>stop</button>
<button>show</button>
<button>hide</button>
<hr>
<table>
	<tbody>
	<c:forEach var = "i" begin="0" end="19">
	<tr>
	 <c:forEach var = "j" begin="0" end="39">
		<jsp:useBean id="a" class="util.Alpha"/>
		<td style="background:${a.fg}; color:${a.bg}">${a.ch}</td>
	 <c:remove var="a"/>
	</c:forEach>
	</tr>
	</c:forEach>
	</tbody>
</table>

</body>
</html>