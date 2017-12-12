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
<link rel="stylesheet" href="./css/administration_counselList.css">
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
				<b>상담목록</b>
			</p>
			<div id="select">
				<select name="select">
					<option value="">선택</option>
					<option value="1">이름</option>
					<option value="2">아이디</option>
					<option value="2">제목</option>
				</select> <input type="text">
				<button>검색</button>
			</div>
			<div>
				<table class="list">
					<tr>
						<th>이름</th>
						<th>아이디</th>
						<th>제목</th>
						<th>연락처</th>
						<th>비고</th>
					</tr>
					<tr>
						<td>이름</td>
						<td>아이디</td>
						<td>제목</td>
						<td>0000-0000</td>
						<td></td>
					</tr>
					<tr>
						<td>이름</td>
						<td>아이디</td>
						<td>제목</td>
						<td>0000-0000</td>
						<td></td>
					</tr>


				</table>
			</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>