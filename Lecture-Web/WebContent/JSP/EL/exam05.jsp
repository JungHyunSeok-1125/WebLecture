<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    Map<String, String> board = new HashMap<String, String>();
    board.put("no", "1");
    board.put("title","test");
    
    pageContext.setAttribute("boardVO", board);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	no : <%= board.get("no") %><br>
	title : <%= board.get("title") %>
	
	el no : ${ boardVO.no } <br>
	el title : ${ boardVO.title }<br>

	
</body>
</html>

