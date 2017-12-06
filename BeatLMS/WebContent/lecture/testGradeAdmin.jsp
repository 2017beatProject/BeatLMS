<%@page import="com.beat.Lecture.model.StudentGradeDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>admin test grade list all</title>
</head>
<body>
		<h1>admin 학생 목록 페이지</h1>
		<h2>입력,수정,삭제 버튼 누르면 페이지 이동</h2>
	<table>
		<tr>
			<th>학생번호</th>
			<th>이름</th>
			<th>연락처</th>
			<th>메일</th>
			<th>java</th>
			<th>web</th>
			<th>db</th>
			<th>평균</th>
			<th>합계</th>
		</tr>
		<%
		ArrayList<StudentGradeDto> gradeListAdmin=(ArrayList<StudentGradeDto>)request.getAttribute("listAllAdmin");
		for(StudentGradeDto bean : gradeListAdmin){
		%>
		<tr>
			<td><%=bean.getMnum() %></td>
			<td><%=bean.getMname() %></td>
			<td><%=bean.getMphone() %></td>
			<td><%=bean.getMmail() %></td>
			<td><%=bean.getJavapoint() %></td>
			<td><%=bean.getWebpoint() %></td>
			<td><%=bean.getDbpoint() %></td>
			<td><%=bean.getPointavr() %></td>
			<td><%=bean.getPointsum() %></td>
		</tr>
		<%} %>
	</table>
	
	<button type="button" onclick="location.href='grade_insert.lms'">입력</button>
	<button type="button" onclick="location.href='grade_edit.lms'">수정</button>
	<button type="button" onclick="location.href='grade_delete.lms'">삭제</button>
</body>
</html>