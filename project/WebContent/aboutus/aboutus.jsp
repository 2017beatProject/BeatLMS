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
<link rel="stylesheet" href="../css/contactus_counsel.css">
<link rel="stylesheet" href="../css/footer.css">

<style type="text/css">
</style>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>

	<!-- aside -->
	<div class="aside grid_2">
		<div id="mainmenu">
			<label><strong>ABOUT<br>US
			</strong></label>
		</div>
		<div id="aside">
			<ul id="menu1">
				<li><a href="#">조직도</a></li>
			</ul>
			<ul id="menu2">
				<li><a href="#">강사소개</a></li>
			</ul>
			<ul id="menu3">
				<li><a href="#">회사연혁</a></li>
			</ul>
		</div>
	</div>
	<!-- aside END -->


	<!-- content -->
	<div class="content grid_10">
		<img class="imgs" id="topimg" alt="" src="../imgs/menu_topimg1.jpg">
		<div class="layout">
			<p>
			  <b>조직도</b>
			</p>
			<div>
			   <img alt="" src="../imgs/organization.jpg">
			</div>
			<p>
			  <b>강사소개</b>
			</p>
			<div>
			   <img alt="" src="../imgs/teacher.jpg">
			</div>
			<p>
			  <b>회사연혁</b>
			</p>
			<div>
				<img alt="" src="../imgs/history.jpg">
			</div>
			
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>