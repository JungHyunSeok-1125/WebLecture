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

<%--
	ifTagExam.jsp?type=xxx or ifTagExam.jsp?type=S	
	http://localhost:9999/Lecture-Web/JSP/JSTL/core/ifTagExam.jsp?type=S
 --%>
 
 <c:if test="${ param.type == 'S' }">
	<h2>관리자님 환영합니다.</h2>
 </c:if>
 
 <c:if test="${ param.type == 'U' }">
	<h2>일반 사용자님 환영합니다.</h2>
 </c:if>
 
</body>
</html>
