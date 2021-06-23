package kr.ac.kopo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MethodServlet extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String method = request.getMethod();
		StringBuffer url= request.getRequestURL();
		String uri= request.getRequestURI();
		
		//client 에게 응답
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("	<head>");
		out.println("		<title>메소드 호출 방식</title>");
		out.println("	</head>");
		out.println("	<body>");
		out.println("		====================================================<br />" );
		out.println("		&emsp;출력 요청 결과 <br /> " );
		out.println("		====================================================<br />" );
		out.println("		&emsp;파라미터 (id)  : " + id + "<br />");
		out.println("		&emsp;요청방식       : " + method + "<br />");
		out.println("		&emsp;요청 URI       : " +uri.toString() + "<br />");
		out.println("		====================================================<br />" );
		out.println("	</body>");
		out.println("</html>");
		
		out.flush();
		out.close();
		/*
		 * System.out.println("doGet() 호출"); System.out.println("url : " +
		 * url.toString()); System.out.println("uri : " + uri.toString());
		 * System.out.println("method : " + method); System.out.println("id : " + id);
		 */
	}
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		request.setCharacterEncoding("UTF-8");
		String method = request.getMethod();
		String id = request.getParameter("id");
		String uri= request.getRequestURI();
		StringBuffer url= request.getRequestURL();
		
		
	
		//client 에게 응답
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("	<head>");
		out.println("		<title>메소드 호출 방식</title>");
		out.println("	</head>");
		out.println("	<body>");
		out.println("		====================================================<br />" );
		out.println("		&emsp;출력 요청 결과 <br /> " );
		out.println("		====================================================<br />" );
		out.println("		&emsp;요청 메소드    : " + method + "<br />");
		out.println("		&emsp;요청 URI       : " +uri.toString() + "<br />");
		out.println("		&emsp;파라미터 (id)  : " + id + "<br />");
		out.println("		====================================================<br />" );
		out.println("	</body>");
		out.println("</html>");
		
		out.flush();
		out.close();
	}
}
