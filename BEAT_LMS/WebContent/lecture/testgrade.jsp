<%@page import="com.beat.Lecture.model.StudentGradeDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test grade list all</title>
</head>
<body>
		<h1>학생 목록 페이지</h1>
		<h2>학생번호 or 이름 누르면 성적 확인 페이지로 이동</h2>
		
	<table>
		<tr>
			<th>학생번호</th>
			<th>이름</th>
			<th>연락처</th>
			<th>메일</th>
		</tr>
		<%
		ArrayList<StudentGradeDto> gradeList=(ArrayList<StudentGradeDto>)request.getAttribute("listAll");
		for(StudentGradeDto bean : gradeList){
		%>
		<tr>
			<td><a href="grade_detail.lms?mnum=<%=bean.getMnum() %>"><%=bean.getMnum() %></a></td>
			<td><a href="grade_detail.lms?mnum=<%=bean.getMnum() %>"><%=bean.getMname() %></a></td>
			<td><%=bean.getMphone() %></td>
			<td><%=bean.getMmail() %></td>
		</tr>
		<%} %>
	</table>
</body>
</html>