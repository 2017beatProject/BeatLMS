<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>admin test grade insert</title>
</head>
<body>
<h1>admin 성적 입력 페이지</h1>
<form action="grade_insert.lms" method="post">
	<div>
		<label for="mnum">학생번호</label>
		<input type="text" name="mnum"/>
	</div>
	<div>
		<label for="lectSeriNum">강의실</label>
		<input type="text" name="lectSeriNum"/>
	</div>
	<div>
		<label for="javaPoint">java점수</label>
		<input type="text" name="javaPoint"/>
	</div>
	<div>
		<label for="webPoint">web점수</label>
		<input type="text" name="webPoint"/>
	</div>
	<div>
		<label for="DBPoint">db점수</label>
		<input type="text" name="DBPoint"/>
	</div>
	<div>
		<label for="pointAvr">평균</label>
		<input type="text" name="pointAvr"/>
	</div>
	<div>
		<label for="pointSum">합계</label>
		<input type="text" name="pointSum"/>
	</div>
	<div>
		<button type="submit">입력</button>
		<button type="reset">취소</button>
	</div>
</form>

</body>
</html>