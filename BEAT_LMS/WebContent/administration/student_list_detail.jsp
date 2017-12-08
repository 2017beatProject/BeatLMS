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
<link rel="stylesheet"
	href="./css/administration_student_list_detail.css">
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
				<b>수강생정보</b>
			</p>

			<div id="stuinfo">
				<div>
					<label>이름</label><input type="text" id="name" /> <label>아이디</label><input
						type="text" id="id" /> <label>연락처</label><input type="text"
						id="number" />
				</div>
				<div>
					<label>생년월일</label><input type="date" id="bDay" /> <label>e-mail</label><input
						type="email" id="mail" /> <label>성별</label><input type="text"
						id="gender" />
				</div>
				<div>
					<label>주소</label><input type="text" id="adress" />
				</div>
			</div>
			<!---------------------------------------------------------->
			<p>
				<b>수강강의</b>
			</p>
			<div>
				<table id="lecture">
					<tr>
						<th>강의명</th>
						<th>강의장</th>
						<th>강사</th>
						<th>기간</th>
					</tr>
					<tr>
						<td>강의명</td>
						<td>강의장</td>
						<td>강사</td>
						<td>기간</td>
					</tr>
				</table>
			</div>
			<!---------------------------------------------------------->
			<p>
				<b>성적</b>
			</p>
			<div>
				<table id="grade">
					<tr>
						<th>JAVA</th>
						<th>WEB</th>
						<th>DB</th>
						<th>평균</th>
					</tr>
					<tr>
						<td>1</td>
						<td>1</td>
						<td>1</td>
						<td>1</td>
					</tr>
				</table>
				<a href="" id="edbtn1">성적수정</a>
			</div>
			<!---------------------------------------------------------->
			<p>
				<b>출석</b>
			</p>

			<div>
				<table id="attendance">
					<tr>
						<th>출석</th>
						<th>결석</th>
						<th>지각</th>
						<th>조퇴</th>
						<th>출석률</th>
					</tr>
					<tr>
						<td>1</td>
						<td>1</td>
						<td>1</td>
						<td>1</td>
						<td>1</td>
					</tr>
				</table>
				<a href="" id="edbtn2">출석수정</a>
			</div>


		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>