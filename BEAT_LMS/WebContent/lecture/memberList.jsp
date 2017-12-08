<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.beat.Member.model.*"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수강생리스트(임시)</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
<form action="memberList.jsp" name="searchQuery" method="get">
	<select id="select" name="selectClass">
		<option value="class0">전체 강의장</option>
		<option value="class1">강의장1</option>
		<option value="class2">강의장2</option>
		<option value="class3">강의장3</option>
	</select>
	<br />
	<select id="column" name="selectColumn">
		<option value="lectSeriNum">강의번호</option>
		<option value="lectureName">강의명</option>
		<option value="mnum">회원번호</option>
		<option value="mname">회원명</option>
		<option value="mid">아이디</option>
	</select>
	<input type="text" id="text" name="text"/>
	<input type="submit" value="검색"/>
</form>
<%
String sql = "SELECT ";
sql += "Lecture_Room.LECTSERINUM, "; // 강의번호
sql += "Lecture_Room.LECTURENAME, "; // 강의명
sql += "Class_Information.MNUM, "; // 회원번호
sql += "lmsMember.MNAME, "; // 회원 이름
sql += "lmsMember.MID, "; // 회원 아이디
// sql += "trunc((1-Class_Information.ABSENTDAYS/Class_Information.PRESENTDAYS)*100) "; // 출석률
sql+= "trunc(Class_Information.PRESENTDAYS/20*100)"; // 출석률
sql += "from Lecture_Room, Class_Information, lmsMember ";
sql += "where ";
sql += "Class_Information.lectSeriNum = Lecture_Room.lectSeriNum ";
sql += "and lmsMember.mnum = Class_Information.mnum";

String selectColumn = request.getParameter("selectColumn");
String searchText = request.getParameter("text");
// if(request.getParameter("selectClass")!=null)
if(selectColumn!=null && searchText!=null){
	System.out.println("searchText="+searchText);
	if(selectColumn.equals("lectSeriNum")) sql+=" and Lecture_Room.lectSeriNum like '%"+searchText+"%'";
		// 강의번호
	if(selectColumn.equals("lectureName")) sql+=" and Lecture_Room.LECTURENAME like '%"+searchText+"%'";
		// 강의명
	if(selectColumn.equals("mnum"))sql+=" and lmsMember.MNUM like '%"+searchText+"%'";  
		// 회원번호
	if (selectColumn.equals("mname"))sql+=" and lmsMember.MNAME like '%"+searchText+"%'";
		// 회원명
	if (selectColumn.equals("mid")) sql+=" and lmsMember.MID like '%"+searchText+"%'";
		// 아이디
}
System.out.println(selectColumn);
System.out.println(searchText);
System.out.println(sql);
//out.println(request.getParameter("selectClass"));
//out.println(request.getParameter("selectColumn"));
//out.println(request.getParameter("text"));
			/*
			-- 강의번호로 검색
			and Lecture_Room.lectSeriNum like '%0001%'
			-- 강의명으로 검색
			and Class_Information.lectSeriNum like '%1%'
			-- 회원번호로 검색
			and lmsMember.MNUM like '%00%'
			-- 이름으로 검색
			and lmsMember.MNAME like '%est%'
			-- 아이디로 검색
			and lmsMember.MID like '%est%'
			-- 출석률 순으로 정렬
			order by (1-Class_Information.ABSENTDAYS/Class_Information.PRESENTDAYS) asc
			*/

%>
	<table>
		<tr>
			<th>강의번호</th>
			<th>강의명</th>
			<th>회원번호</th>
			<th>이름</th>
			<th>아이디</th>
			<th>출석률</th>
		</tr>
		<%

			try {

				String driverName = "oracle.jdbc.driver.OracleDriver";
				String url = "jdbc:oracle:thin:@203.236.209.206:1521:XE";

				ResultSet rs = null;
				Class.forName(driverName);
				Connection con = DriverManager.getConnection(url, "scott", "tiger");

				System.out.println("오라클 접속 성공");

				Statement stmt = con.createStatement();

				rs = stmt.executeQuery(sql);
				
			while (rs.next()) {

					out.print("<tr>");

					out.print("<td>" + rs.getString(1) + "</td>");
					out.print("<td>" + rs.getString(2) + "</td>");
					out.print("<td>" + rs.getString(3) + "</td>");
					out.print("<td>" + rs.getString(4) + "</td>");
					out.print("<td>" + rs.getString(5) + "</td>");
					out.print("<td>" + rs.getString(6)+"%" + "</td>");
					
					out.print("</tr>");

				}
		%>
	</table>
	<%
		} catch (Exception e) {

			System.out.println(e.getMessage());
			e.printStackTrace();

		}
	%>

</body>
</html>