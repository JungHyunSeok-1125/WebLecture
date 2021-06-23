<%@page import="kr.ac.kopo.board.BoardVO"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
	
		List<BoardVO> board = new ArrayList<BoardVO>();
    	BoardVO boardvo = new BoardVO();
    	
    	boardvo.setTitle("성공");
    	board.add(boardvo);
    	
    	pageContext.setAttribute("boardList", board); 
    	
    	
    	/* 
    	List<Map<String,String>> board = new ArrayList<Map<String,String>>();
    	Map<String, String> board2 = new HashMap<String, String>();
    	
        board2.put("title","성공");
        
    	board.add(board2);
        
        pageContext.setAttribute("boardList", board); 
        */
        
	    /*   
	    BoardVO board = new BoardVO();
        board.setTitle("성공");

        BoardVO[] boardList = new BoardVO[]{board};
        
        pageContext.setAttribute("boardList", boardList);  
        */
	
       /*  
        Map<String, String> board = new HashMap<>();
		board.put("title","성공");
		Map[] boardList = {board};
		pageContext.setAttribute("boardList", boardList);   
		*/
		
    
    %>
<!DOCTYPE html>	
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	성공 / 실패? ${ boardList[0].title}<br />
		
</body>
</html>

