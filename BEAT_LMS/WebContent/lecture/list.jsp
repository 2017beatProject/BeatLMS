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
<link rel="stylesheet" href="./css/lecture_aside.css">
<link rel="stylesheet" href="./css/lecture_list.css">
<link rel="stylesheet" href="./css/footer.css">

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
			<label><strong>LECTURE</strong></label>
		</div>
		<div id="aside">
			<ul id="menu1">
				<li><a href="lecture.lms">강의소개</a></li>
			</ul>
			<ul id="menu2">
				<li><a href="myLecture.lms">수강강의</a></li>
			</ul>
			<!-- <ul id="menu3">
				<li><a href="#"></a></li>
			</ul> -->
		</div>
	</div>
	<!-- aside END -->


	<!-- content -->
	<div class="content grid_10">
	<img class="imgs" id="topimg" alt="" src="./imgs/infoTopImg.jpg">
		<div class="layout">
		    <div>
		     <img alt="" src="">
		    </div>
			<table>
				<tr>
					<th>강의명</th>
					<th>강의실</th>
					<th>강&nbsp;사</th>
					<th>기&nbsp;간</th>
					<th>&nbsp;총&nbsp;원&nbsp;</th>
					<th>&nbsp;현제원&nbsp;</th>
				</tr>

				<tr>
					<td><a href="">JAVA<br> 개발자양성</a>
					</td>
					<td>강의실1</td>
					<td>강사1</td>
					<td>2018-01-01~2018-01-01</td>
					<td>20</td>
					<td>1</td>
				</tr>
				<tr>
					<td><a href="">JAVA<br> 개발자양성</a>
					</td>
					<td>강의실2</td>
					<td>강사2</td>
					<td>2018-01-01~2018-01-01</td>
					<td>20</td>
					<td>1</td>
				</tr>
				<tr>
					<td><a href="">JAVA<br> 개발자양성</a>
					</td>
					<td>강의실3</td>
					<td>강사3</td>
					<td>2018-01-01~2018-01-01</td>
					<td>20</td>
					<td>1</td>
				</tr>
			</table>

		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>