<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새글 등록</title>
<script src="/Mission-Web/resources/js/jquery-3.6.0.min.js"></script>
<script>
	
</script>
</head>
<body>
<c:set var ="id" value="hong" scope="request"/>
		msg : <%= msg %><br>
	<h2>인클루드 전</h2>
		<c:import url="one.jsp" />
	<h2>인클루드 후</h2>
		<c:import url="one.jsp">
			<c:param name="name" value="hong, gil-dong" />
		</c:import>
</body>
</html>