<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/960.css">
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/administration_student_attendance.css">
<link rel="stylesheet" href="./css/footer.css">

</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>
	<jsp:include page="../template/aside_menu_administration.jsp"></jsp:include>

	<!-- content -->
	<div class="content grid_10">
		<img class="imgs" id="topimg" alt="" src="./imgs/menu_topimg1.jpg">
		<div class="layout">
			<div>
				<img alt="" src="">
			</div>
			<p>
				<b>출석체크</b>
			</p>
			<div id="select">
				<select name="select">
					<option value="">선택</option>
					<option value="1">번호</option>
					<option value="2">이름</option>
					<option value="3">강의장</option>
					<option value="4">강의명</option>
				</select> <input type="text">
				<button>검색</button>
			</div>
			<div>
				<table class="list">
					<tr>
						<th>번호</th>
						<th>이름</th>
						<th>강의장</th>
						<th>강의명</th>
						<th>출석</th>
						<th>지각</th>
						<th>조퇴</th>
						<th>비고</th>
					</tr>
					<tr>
						<td>번호</td>
						<td>이름</td>
						<td>강의장</td>
						<td>강의명</td>
						<td><input type="radio" name=""/></td>
						<td><input type="radio" name=""/></td>
						<td><input type="radio" name=""/></td>
						<td></td>
					</tr>
				</table>
				<div>
				   <button id="btn">출석체크</button>
				</div>
			</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>