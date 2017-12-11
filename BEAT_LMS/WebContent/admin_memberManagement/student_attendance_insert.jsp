<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
	String sql = "select mnum from class_information";
	String sql2 = "";

	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	ResultSet rs2 = null;
	int days = 0;
	String a="";
	int b=0;
	int c;

	try {

		String driverName = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@203.236.209.206:1521:XE";

		Class.forName(driverName);
		con = DriverManager.getConnection(url, "scott", "tiger");
		stmt = con.createStatement();
		System.out.println("0: "+sql);
		rs = stmt.executeQuery(sql); // 출석부 목록
		while (rs.next()) {
			a = rs.getString(1);
			sql = "select ";
			sql += request.getParameter(a); // absentDays 문자열 반환
			sql += " from class_information where mnum = ";
			sql += a; // 20170037
			System.out.println("1: "+sql);
			rs2 = stmt.executeQuery(sql); // 20170037의 기존 absentDays 값 반환
			while(rs2.next()){
				b = rs2.getInt(1);
				days = b+1; // 20170037의 기존 absentDays 값에 1을 더해서 int days에 넣어둠
				sql = "update ";
				sql+= "class_information set ";
				sql+= request.getParameter(a); // absentDays
				sql+= " = ";
				sql+= days; // 더해진 값으로 업데이트
				sql+= " where mnum = ";
				sql+= a; // 20170037
				System.out.println("2: "+sql);
				//stmt.executeQuery(sql); // 쿼리문 실행
			}
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {

	}
%>
</body>
</html>