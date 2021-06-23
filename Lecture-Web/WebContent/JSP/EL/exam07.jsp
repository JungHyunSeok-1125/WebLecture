<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
		List<String> names = new ArrayList<String>();
    	names.add("홍길동");
    	names.add("강길동");
    	names.add("고길동");
    	
    	pageContext.setAttribute("names", names);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	첫 번째 이름 : <%= names.get(0) %><br>
	두 번째 이름 : <%= names.get(1) %><br>
	세 번째 이름 : <%= names.get(2) %><br>
	<hr>
	첫 번째 이름 : ${ names[0] }<br>
	두 번째 이름 : ${ names[1] }<br>
	세 번째 이름 : ${ names[2] }<br>
		
</body>
</html>

