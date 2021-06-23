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
	value 속성만 지정 : <c:out value="Hello World" /><br />
	msg 변수 미설정 : <c:out value="${ msg }" default="msg를 찾을 수 없습니다."/><br />
	<br />
	
	value속성에 태그가 들어있는 경우(escapeXml = true)<br />
	<c:out value="<h1>Hello</h1>" /><br />

	value속성에 태그가 들어있는 경우(escapeXml = false)<br />
	<c:out value="<h1>Hello</h1>" escapeXml="false"/><br />
</body>
</html>