<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/960.css">
<link rel="stylesheet" href="../css/menu.css">
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet"
	href="../css/administration_student_attendance.css">
<link rel="stylesheet" href="../css/footer.css">
<script type="text/javascript"src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>

</script>
<%
	String sql = "select ";
	sql += "lmsMember.mnum, lmsMember.mname, Lecture_Room.lectureName "; // 번호, 이름, 강의장
	sql += "from ";
	sql += "LMSMEMBER, LECTURE_ROOM, Class_Information ";
	sql += "where ";
	sql += "Class_Information.mnum = lmsMember.mnum ";
	sql += "and LECTURE_ROOM.LECTSERINUM = Class_Information.LECTSERINUM";

	String selectColumn = request.getParameter("selectColumn");
	String searchText = request.getParameter("text");
	if (selectColumn != null && searchText != null) {
		//System.out.println("searchText=" + searchText);
		if (selectColumn.equals("mnum"))
			sql += " and lmsMember.mnum like '%" + searchText + "%'";
		// 회원번호
		if (selectColumn.equals("mname"))
			sql += " and lmsMember.mname like '%" + searchText + "%'";
		// 회원명
		if (selectColumn.equals("lecturename"))
			sql += " and Lecture_Room.lectureName like '%" + searchText + "%'";
		// 강의장
	}

	System.out.println(sql);

	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;

	try {

		String driverName = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@203.236.209.206:1521:XE";

		Class.forName(driverName);
		con = DriverManager.getConnection(url, "scott", "tiger");
		stmt = con.createStatement();
		rs = stmt.executeQuery(sql);
%>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>

	<!-- aside -->
	<div class="aside grid_2">
		<div id="mainmenu">
			<label><strong>ADMINI<br>STRATION
			</strong></label>
		</div>
		<div id="aside">
			<ul id="menu1">
				<li><a href="#">회원관리</a></li>
			</ul>
			<ul id="menu2">
				<li><a href="#">강의관리</a></li>
			</ul>
			<ul id="menu3">
				<li><a href="#">상담관리</a></li>
			</ul>
			<ul id="menu4">
				<li><a href="#">수강생관리</a></li>
			</ul>
		</div>
	</div>
	<!-- aside END -->


	<!-- content -->
	<div class="content grid_10">
		<img class="imgs" id="topimg" alt="" src="../imgs/menu_topimg1.jpg">
		<div class="layout">
			<div>
				<img alt="" src="">
			</div>
			<p>
				<b>출석체크</b>
			</p>
			<div id="select">
				<form action="student_attendance.jsp" name="searchQuery"
					method="get">
					<select id="column" name="selectColumn">
						<option value="">선택</option>
						<option value="mnum">번호</option>
						<option value="mname">이름</option>
						<option value="lecturename">강의장</option>
						<option value="4">강의명</option>
					</select> <input type="text" id="text" name="text" >
					<button id="searchButton" type="submit">검색</button>
				</form>
			</div>
			<div>
			<form action="student_attendance_insert.jsp" method="post">
				<table class="list">
					<tr>
						<th>번호</th>
						<th>이름</th>
						<th>강의장</th>
						<th>강의명</th>
						<th>출석</th>
						<th>지각</th>
						<th>조퇴</th>
						<th>결석</th>
						<!-- 비고에는 선택안함 경고창 validation -->
					</tr>
					<%
					String mnum = null;
						while (rs.next()) {
								out.print("<tr>");
								mnum = rs.getString(1);
								out.print("<td>" + mnum + "</td>"); // 번호
								out.print("<td>" + rs.getString(2) + "</td>"); // 이름
								out.print("<td>" + rs.getString(3) + "</td>"); // 강의명
								out.print("<td>더미 텍스트</td>");
								out.print("<td><input type='radio' value='presentDays' name='"+mnum+"'/></td>"); // 출석
								out.print("<td><input type='radio' value='lateTimes' name='"+mnum+"'/></td>"); // 지각
								out.print("<td><input type='radio' value='earlyHome' name='"+mnum+"'/></td>"); // 조퇴
								out.print("<td><input type='radio' value='absentDays' name='"+mnum+"' checked='checked'/></td>"); // 결석
								out.print("</tr>");
							}
					%>
				</table>
				<div>
					<button type="submit" id="btn">출석체크</button>
				</div>
				</form>
			</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>

	<%
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (con != null)
				con.close();
		}
	%>
	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>