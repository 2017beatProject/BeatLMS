<%@page import="java.sql.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String sql = "select ";
	sql += "lmsMember.mname, lmsMember.mzen, lmsMember.mphone, ";
	sql += "lmsMember.mbirth, lmsMember.mmail, lmsMember.maddress, lmsMember.maddnum, ";
	sql += "Lecture_Room.LECTURENAME, Lecture_Room.TEACHERNAME, ";
	sql += "Lecture_Room.LECTURESTART, Lecture_Room.lectureEnd, Lecture_Room.STUDENTTOTAL,";
	sql += "Class_Grade.javaPoint, Class_Grade.webPoint, Class_Grade.DBPoint,";
	sql += "Class_Grade.pointAvr, Class_Grade.pointSum, ";
	sql += "Class_Information.presentDays, Class_Information.absentDays, ";
	sql += "CLASS_INFORMATION.EARLYHOME + CLASS_INFORMATION.LATETIMES, ";
	sql += "trunc(Class_Information.presentDays/20*100) ";
	sql += "from lmsMember, Lecture_Room, Class_Grade, CLASS_INFORMATION ";
	sql += "where lmsMember.mid = '";
	sql += request.getParameter("mid");
	sql += "' ";
	sql += "and lmsMember.mnum = Class_Grade.mnum ";
	sql += "and Lecture_Room.LECTSERINUM = Class_Grade.LECTSERINUM ";
	sql += "and Class_Information.mnum = lmsMember.mnum";
	System.out.println(sql);

	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;

	String mname=null;
	int mzen=0;
	String mzenText=null;
	
	int mphone=0;
	Date mbirth=null;
	String mmail=null;
	String maddress=null;
	int maddnum=0;
	String lectureName=null;
	String teacherName=null;
	Date lectureStart=null;
	Date lectureEnd=null;
	int studentTotal=0;
	int javaPoint=0;
	int webPoint=0;
	int dbPoint=0;
	double pointAvr=0;
	int pointSum=0;
	int presentDays=0;
	int absentDays=0;
	int lateEarly=0;
	double presentRatio=0;
	
	try {

		String driverName = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@203.236.209.206:1521:XE";

		Class.forName(driverName);
		con = DriverManager.getConnection(url, "scott", "tiger");
		stmt = con.createStatement();
		rs = stmt.executeQuery(sql);

		while (rs.next()) {
			mname = rs.getString(1); // 이름
			mzen = rs.getInt(2); // 성별
			if(mzen==1)mzenText="남";
			else if(mzen==2)mzenText="여";
			mphone = rs.getInt(3); // 연락처
			mbirth = rs.getDate(4); // 생일
			mmail = rs.getString(5); // 이메일
			maddress = rs.getString(6); // 주소
			maddnum = rs.getInt(7); // 우편번호
			lectureName = rs.getString(8); // 강의명
			teacherName = rs.getString(9); // 강사
			lectureStart = rs.getDate(10); // 시작일
			lectureEnd = rs.getDate(11); // 종료일
			studentTotal = rs.getInt(12); // 총 인원
			javaPoint = rs.getInt(13); // 자바 점수
			webPoint = rs.getInt(14); // 웹 점수
			dbPoint = rs.getInt(15); // db 점수
			pointAvr = rs.getDouble(16); // 평균 점수
			pointSum = rs.getInt(17); // 합계 점수
			presentDays = rs.getInt(18); // 출석일
			absentDays = rs.getInt(19); // 결석일
			lateEarly = rs.getInt(20); // 지각결석
			presentRatio = rs.getDouble(21); // 출석률
		}

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
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=request.getParameter("mid")%>의 상세페이지</title>
</head>
<!-- 

성적출석 각각 (수정 / 확정) 버튼
 -->
<body>
	<h2>수강생 정보</h2>
	<table>
		<tr>
			<th>이름</th>
			<td><%=mname%></td>
			<th>성별</th>
			<td><%=mzenText %></td>
			<th>연락처</th>
			<td>0<%=mphone %></td>
		</tr>
		<tr>
			<th>생년월일</th>
			<td><%=mbirth %></td>
			<th>e-mail</th>
			<td><%=mmail %></td>
			<th>주소</th>
			<td><%=maddress %>/<%=maddnum %></td>
		</tr>
	</table>
	<h2>수강중인 강의</h2>
	<table>
		<tr>
			<th>강의명</th>
			<td><%=lectureName %></td>
			<th>강사</th>
			<td><%=teacherName %></td>
			<th>기간</th>
			<td><%=lectureStart %>~<%=lectureEnd %></td>
			<th>수강인원</th>
			<td><%=studentTotal %></td>
		</tr>
	</table>
	<h2>성적</h2>
	<table>
		<tr>
			<th>JAVA</th>
			<th>WEB</th>
			<th>DB</th>
			<th>평균</th>
			<th>총합</th>
		</tr>
		<tr>
			<td><%=javaPoint %></td>
			<td><%=webPoint %></td>
			<td><%=pointAvr %></td>
			<td><%=pointAvr %></td>
			<td><%=pointSum %></td>
		</tr>
	</table>
	<h2>출석</h2>
	<table>
		<tr>
			<th>출석</th>
			<th>결석</th>
			<th>지각/조퇴</th>
			<th>출석률</th>
		</tr>
		<tr>
			<td><%=presentDays %></td>
			<td><%=absentDays %></td>
			<td><%=lateEarly %></td>
			<td><%=presentRatio %></td>
		</tr>
	</table>
</body>
</html>