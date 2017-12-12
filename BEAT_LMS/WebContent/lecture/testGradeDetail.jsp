<%@page import="com.beat.Lecture.model.StudentGradeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test grade list detail</title>
</head>
<body>
<h1>상세페이지</h1>
<%StudentGradeDto bean = (StudentGradeDto)request.getAttribute("gradeDetail"); %>

	<table>
		<tr>
			<td>학생번호</td>
			<td><%=bean.getMnum() %></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=bean.getMname() %></td>
		</tr>
		<tr>
			<td>java</td>
			<td><%=bean.getJavapoint() %></td>
		</tr>
		<tr>
			<td>web</td>
			<td><%=bean.getWebpoint() %></td>
		</tr>
		<tr>
			<td>db</td>
			<td><%=bean.getDbpoint() %></td>
		</tr>
		<tr>
			<td>평균</td>
			<td><%=bean.getPointavr() %></td>
		</tr>
		<tr>
			<td>합계</td>
			<td><%=bean.getPointsum() %></td>
		</tr>

	</table>
</body>
</html>