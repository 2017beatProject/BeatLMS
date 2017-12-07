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
<link rel="stylesheet" href="../css/contactus_Q&A.css">
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
			<label><strong>CONTACT<br>US</strong></label>
		</div>
		<div id="aside">
			<ul id="menu1">
				<li><a href="#">상담신청</a></li>
			</ul>
			<ul id="menu2">
				<li><a href="#">질문사항</a></li>
			</ul>
			<!-- <ul id="menu3">
				<li><a href="#"></a></li>
			</ul> -->
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
			<p><b>질문사항</b></p>
			<div id="listlayout">
				<table>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
					<tr>
						<td>3</td>
						<td>질문3</td>
						<td>아이디</td>
						<td>2018-01-01</td>
						<td>조회수</td>
					</tr>
					<tr>
						<td>2</td>
						<td>질문2</td>
						<td>아이디</td>
						<td>2018-01-01</td>
						<td>조회수</td>
					</tr>
					<tr>
						<td>1</td>
						<td>질문1</td>
						<td>아이디</td>
						<td>2018-01-01</td>
						<td>조회수</td>
					</tr>
					
				</table>
				<div id="addbtn">
				  <a href="#">글쓰기</a>
				</div>
			</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>