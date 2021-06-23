<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String[] names={"홍길동","강길동","윤길동","박길동"};

	int size=names.length;
	pageContext.setAttribute("names",names);
	pageContext.setAttribute("size",size);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	"hello world"문자열 길이 : ${fn:length("hello world")}<br>
	배열의 요소 개수 : ${fn:length(names)}<br>
	
	first : index : count : last<br>
	<c:forEach items="${names}" var="name" varStatus="loop">
		${loop.first} : ${loop.index} : ${loop.count} : ${loop.last} <br>
		
	</c:forEach>
	<br><hr>
	
	<c:forEach items="${names}" var="name" varStatus="loop">
<%-- 		<c:if test="${loop.index ne 0}"> --%>
<%-- 		<c:if test="${loop.count ne 0}"> --%>
		<c:if test="${not loop.first}">
		,
		</c:if>
		${name}
	</c:forEach>
	<br><hr>
	<c:forEach items="${names}" var="name" varStatus="loop">
		${name}
		<c:if test="${not loop.last}">
		,
		</c:if>
	</c:forEach>
	<br><hr>
	
	<c:forEach begin="0" end="${size-1}" var="i">
			<c:if test="${i ne 0}">
			,
			</c:if>
		${names[i]}
	</c:forEach>
	<br><hr>
	<c:forEach begin="0" end="${fn:length(names)-1}" var="i">
			<c:if test="${i ne 0}">
			,
			</c:if>
		${names[i]}
	</c:forEach>
	<br><hr>
	
	<c:remove var="cnt" scope="page" />
	
	<c:set var="cnt" value="0"/>
	
	<c:forEach items="${names}" var="name">
		${name}
		<c:set var="cnt" value="${cnt+1}" />
			<c:if test="${cnt != size}">
			,
			</c:if>
	</c:forEach>
	<br><hr>
	
	<c:set var="cnt" value="0"/>
	
	<c:forEach items="${names}" var="name">
			<c:if test="${cnt != 0}">
			,
			</c:if>
		${name}
		<c:set var="cnt" value="${cnt+1}" />
	</c:forEach>
	<br><hr>
	
	<c:forEach items="${names}" var="name">
		${name}
	</c:forEach>
	<hr>
	<h2> 1 ~ 10 사이의 정수 출력</h2>
	<c:forEach begin="1" end="10" var="i">
		${ i } <br>
	</c:forEach>
		
		<select>
			<c:forEach begin="1000" end="2021" var="year" step="5">
				<option>${year}</option>
			</c:forEach>
		</select>
</body>
</html>