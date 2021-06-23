<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	//객체 틍록 : 공유영역명.setAttribute(이름, 값)
	//객체 조회 : 공유영역명.getAttrubute(이름)
	//공유영역 4가지 : pageContext,request, session, application
 	//https://blog.naver.com/javaking75/140181686711
 	
 	pageContext.setAttribute("msg","pageContext영역에 등록");

	String message = (String)pageContext.getAttribute("msg");

	//request영역에 id라는 이름으로 hong값을 등록
	request.setAttribute("id","hong");
	request.setAttribute("msg","request영역에 객체 등록");
 %>

	empty msg : ${ empty msg} <br>
	msg : <%= message %><br>
	msg : <%= pageContext.getAttribute("msg") %><br>
	
	<%--
		el 공유영역 4가지 : pageScope, requestScope, sessionScope, applicationScope
	 --%>
	
	el msg : ${ msg }<br>
	request msg : ${requestScope.msg}<br>
	el id : ${ id }<br>
	
	
</body>
</html>