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
<link rel="stylesheet" href="./css/lecture_mylecture.css">
<link rel="stylesheet" href="./css/footer.css">

<style type="text/css">

</style>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>
	<jsp:include page="../template/aside_menu_lecture.jsp"></jsp:include>

	


	<!-- content -->
	<div class="content grid_10">
		<img class="imgs" id="topimg" alt="" src="./imgs/menu_topimg1.jpg">
		<div class="layout">
			<div>
				<img alt="" src="">
			</div>
			<div>
				<p id="firstP"><b>수강중인 강의</b></p>
				<table id="mylecture">
					<tr>
						<th>강의명</th>
						<th>강의실</th>
						<th>강&nbsp;사</th>
						<th>기&nbsp;간</th>
						<th>&nbsp;총&nbsp;원&nbsp;</th>
						<th>&nbsp;현제원&nbsp;</th>
					</tr>
					<tr>
						<td>JAVA 개발자양성</td>
						<td>강의실1</td>
						<td>강사1</td>
						<td>2018-01-01~2018-01-01</td>
						<td>20</td>
						<td>1</td>
					</tr>
				</table>
			</div>
			<div>
			  <P><b>성적</b></P>
				<table id="grade">
					<tr>
						<th>JAVA</th>
						<th>WEB</th>
						<th>DB</th>
						<th>평균</th>
					</tr>
					<tr>
						<td>10</td>
						<td>10</td>
						<td>10</td>
						<td>10</td>
					</tr>
				</table>
			</div>
			<div>
			   <P><b>출석</b></P><div id="warning">출석률 60%미만 중도탈락 대상자 입니다.</div>
				<table id="attendance">
					<tr>
						<th>출석</th>
						<th>결석</th>
						<th>지각</th>
						<th>조퇴</th>
						<th>출석률</th>
					</tr>
					<tr>
						<td>10</td>
						<td>10</td>
						<td>10</td>
						<td>10</td>
						<td>10</td>
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