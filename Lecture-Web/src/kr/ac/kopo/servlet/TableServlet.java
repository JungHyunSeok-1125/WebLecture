package kr.ac.kopo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//http://localhost:9999/Lecture-Web/servlet/table?row=4&col=3 요청시
//-------------------------------------------
//|cell(0,0)|cell(0,1)|cell(0,2)|
//-------------------------------------------
//|cell(1,0)|cell(1,1)|cell(0,2)|
//-------------------------------------------
//|cell(2,0)|cell(2,1)|cell(2,2)|
//-------------------------------------------
//|cell(3,0)|cell(3,1)|cell(3,2)|
//-------------------------------------------

//@WebServlet("/servlet/tableExam")
public class TableServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String row = request.getParameter("row");
		String col = request.getParameter("col");

		if (col == null) {
			col = "5";
		}
		if (row == null) {
			row = "5";
		}

		// client 에게 응답
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("	<head>");
		out.println("		<title>테이블</title>");
		out.println("	</head>");
		out.println("	<body>");
		out.println("-----------------------------------<br>");
		for (int i = 0; i < Integer.parseInt(row); i++) {
			for (int k = 0; k < Integer.parseInt(col); k++) {
				out.println("| cell(" + i + ", " + k + ") ");
			}
			out.println("|<br>-----------------------------------<br>");
		}
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String row = request.getParameter("row");
		String col = request.getParameter("col");

		// client 에게 응답
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("	<head>");
		out.println("		<title>테이블</title>");
		out.println("	</head>");
		out.println("	<body>");
		out.println("-----------------------------------<br>");
		for (int i = 0; i < Integer.parseInt(row); i++) {
			for (int k = 0; k < Integer.parseInt(col); k++) {
				out.println("| cell(" + i + ", " + k + ") ");
			}
			out.println("|<br>-----------------------------------<br>");
		}
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
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int row = 5;
		int col = 5;

		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();

		StringBuilder sb = new StringBuilder();

		sb.append("<html>");
		sb.append("<head><title>title</title></head>");
		sb.append("<body>");
		sb.append("<table border = '1'>");
		for (int i = 0; i < row; i++) {
			sb.append("<tr>");
			for (int j = 0; j < col; j++) {
				sb.append("<td>");
				sb.append("cell(" + i + "," + j + ")");
				sb.append("</td>");
			}
		}
		sb.append("</table>");
		sb.append("</body>");

		sb.append("</html>");

	}
}
