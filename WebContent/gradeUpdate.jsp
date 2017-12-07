<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
		String sql = "update Class_Grade ";
		sql += "set javaPoint = ?, webPoint = ?, DBPoint = ? ";
		sql += "where mnum = ";
		sql+= request.getParameter("mnum");
		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			String driverName = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@203.236.209.206:1521:XE";

			Class.forName(driverName);
			con = DriverManager.getConnection(url, "scott", "tiger");
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("javaPoint"));
			pstmt.setString(2, request.getParameter("webPoint"));
			pstmt.setString(3, request.getParameter("DBPoint"));
			
			response.sendRedirect("memberDetail.jsp?mnum=?"+request.getParameter("mnum"));
			
		}catch(Exception e){
			out.print("<p>입력에 실패했습니다, 오류 반복시 관리자에게 문의하세요</p>");
		}finally{
			
		}
	%>
</body>
</html>