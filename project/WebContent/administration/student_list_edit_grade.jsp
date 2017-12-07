<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/960.css">
<link rel="stylesheet" href="../css/menu.css">
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/administration_student_list_edit_grade.css">
<link rel="stylesheet" href="../css/footer.css">

</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/admenu.jsp"></jsp:include>

	<!-- aside -->
	<div class="aside grid_2">
		<div id="mainmenu">
			<label><strong>ADMINI<br>STRATION
			</strong></label>
		</div>
		<div id="aside">
			<ul id="menu1">
				<li><a href="#">회원관리</a></li>
			</ul>
			<ul id="menu2">
				<li><a href="#">강의관리</a></li>
			</ul>
			<ul id="menu3">
				<li><a href="#">상담관리</a></li>
			</ul>
			<ul id="menu4">
				<li><a href="#">수강생관리</a></li>
			</ul>
		</div>
	</div>
	<!-- aside END -->


	<!-- content -->
	<div class="content grid_10">
		<img class="imgs" id="topimg" alt="" src="../imgs/menu_topimg1.jpg">
		<div class="layout">
			<div>
				<img alt="" src="">
			</div>
			<p>
				<b>성적수정</b>
			</p>
			<div id="inside">
				<div id="java">
					<label>JAVA</label><input type="text" />
				</div>
				<div id="web">
					<label>WEB</label><input type="text" />
				</div>
				<div id="db">
					<label>DB</label><input type="text" />
				</div>
				<div id="btn">
					<a href="">수정완료</a>
				</div>
			</div>
		</div>

	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>