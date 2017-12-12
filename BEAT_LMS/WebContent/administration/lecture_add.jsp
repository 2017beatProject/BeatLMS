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
<link rel="stylesheet" href="./css/administration_lecture_add.css">
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
				<b>강의개설</b>
			</p>
			<div id="inside">
				<div>
					<label>강의명</label><input type="text" id="name"/>
				</div>
				<div>
					<label>강의장</label> <select name="">
						<option value="">선택</option>
						<option value="1">강의장1</option>
						<option value="2">강의장2</option>
						<option value="3">강의장3</option>
					</select>
					<label>강사</label><select name="">
						<option value="">선택</option>
						<option value="1">강사1</option>
						<option value="2">강사2</option>
						<option value="3">강사3</option>
				    </select>
				    <label>정원</label><input type="text" id="limit"/>
				</div>
				<div>
				<label>시작</label><input type="date" id="start"/>
				<label>종료</label><input type="date" id="end"/>
				</div>
				<div>
				 <textarea rows="" cols="" id="contents">내용</textarea>
				</div>

			</div>
				<div id="addbtn">
					<a href="#">강의개설</a>
				</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>