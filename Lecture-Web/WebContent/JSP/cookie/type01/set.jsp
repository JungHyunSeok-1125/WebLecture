<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    		request.setCharacterEncoding("UTF-8");
    
    String cName = request.getParameter("cName");
    String cValue = request.getParameter("cValue");
    
    Cookie cookie = new Cookie(cName, cValue);
    
    response.addCookie(cookie);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 쿠키 설정 완료 </h2>
	<a href="get.jsp">설정된 쿠키 조회</a>
</body>
</html>