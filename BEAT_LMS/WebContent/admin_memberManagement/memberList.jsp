<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수강생리스트(임시)</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
	<form action="memberList.jsp" name="searchQuery" method="get">
		<select id="select" name="selectClass">
			<option value="class0">전체 강의장</option>
			<option value="class1">강의장1</option>
			<option value="class2">강의장2</option>
			<option value="class3">강의장3</option>
		</select> <br /> <select id="column" name="selectColumn">
			<option value="lectSeriNum">강의번호</option>
			<option value="lectureName">강의명</option>
			<option value="mnum">회원번호</option>
			<option value="mname">회원명</option>
			<option value="mid">아이디</option>
		</select> <input type="text" id="text" name="text" /> <input type="submit"
			value="검색" />
	</form>

	<table>
		<tr>
			<th>강의번호</th>
			<th>강의명</th>
			<th>회원번호</th>
			<th>아이디</th>
			<th>이름</th>
			<th>출석률</th>
			<th>비고</th>
		</tr>

	<c:forEach items="${list }" var="bean">${bean.mid}</c:forEach>
	
	
	</table>
</body>
</html>