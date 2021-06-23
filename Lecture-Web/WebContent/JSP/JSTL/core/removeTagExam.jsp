<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	1값을 가지는 변수 cnt를 공유영역에 등록(page)<br>
	<c:set var="cnt" value="1"/>
		
	공유영역에 등록된 변수 cnt 출력<br />
	cnt : ${ cnt } <br>

	cnt 변수에 1을 더한 후 cnt값을 출력<br>
	
	<c:set var="cnt" value="${cnt+1}" scope="request" />
	cnt : ${ cnt } <br>
	request cnt : ${requestScope.cnt}<br>
	
	request공유영역에 등록된 cnt변수 삭제<br>
	<%-- <c:remove var="cnt" scope="request" /> --%>
	<c:remove var="cnt"/> <!-- 모든 영역에 있는 값을 다 지운다. -->
	
	cnt 삭제 후<br>
	cnt : ${ cnt }<br>
	request cnt : ${ requestScope.cnt }<br>
	
</body>
</html>

<%--
------------------------------------------------------------
	JSP 공유영역 		EL 공유영역 			JSTL 공유영역
------------------------------------------------------------
	pageContex		PageScope			page
	request			requestScope		request
	session			sessionScope		session
	application		applicationScope	application
------------------------------------------------------------
	
--%> 