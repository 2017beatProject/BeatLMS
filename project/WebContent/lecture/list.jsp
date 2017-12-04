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
<link rel="stylesheet" href="../css/footer.css">
<style type="text/css">
#aside ul {
	position: relative;
	text-align: center;
	margin-left: 40px;
	padding: 0px;
}

#aside>ul li {
	position: relative;
	list-style: none;
	left: -40px;
	width: 140px;
	height: 50px;
}

#aside>ul>li>a {
	position: relative;
	text-decoration: none;
	top: 15px;
	color: black;
}

#mainmenu {
	text-align: center;
	margin-top: 40px;
	margin-bottom: 40px;
}

#menu1>li {
	background-color: orange;
	text-align: center;
}

#menu2>li {
	position: relative;
	top: -16px;
}

#menu3>li {
	position: relative;
	top: -32px;
}

.aside {
	background-color: bisque;
	height: 300px;
	width: 100%;
	margin-left: 0px;
	border-bottom: 5px solid orange;
}

.content {
	position: relative;
	/* background-color: azure; */
	width: 820px;
}

/*------------------------------------------------  */
.layout {
	position: relative;
	left: 25px;
	margin: 50px;
}

table {
	position: relative;
	text-align: center;
	padding-top:20px; 
	padding-bottom: 20px; 
}

td {
	border-bottom: 0.5px solid #E1E1E1;
	padding: 17px;
	
}
tr:last-child>td{
  border-bottom: 3px solid #E1E1E1;
}
td>a {
    list-style: none;
	text-decoration: none;
}

th {
	background-color: silver;
	border-radius: 2px;
	color: white;
}
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
				<li><a href="#">강의소개</a></li>
			</ul>
			<ul id="menu2">
				<li><a href="#">수강신청</a></li>
			</ul>
			<!-- <ul id="menu3">
				<li><a href="#"></a></li>
			</ul> -->
		</div>
	</div>
	<!-- aside END -->


	<!-- content -->
	<div class="content grid_10">
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