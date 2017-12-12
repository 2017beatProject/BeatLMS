<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>admin test grade delete</title>
</head>
<body>
<h1>admin 학생 성적 삭제 페이지</h1>
	<form action="grade_delete.lms" method="post">
		<table>
			<tr>
				<td>학생번호</td>
				<td><input type="text" name="mnum" /></td>
			</tr>
		</table>
		<button type="submit">삭제</button>
	</form>
</body>
</html>