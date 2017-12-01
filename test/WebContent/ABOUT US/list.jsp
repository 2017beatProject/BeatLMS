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
<style type="text/css">
#aside>ul:HOVER { background-color: red;
	
}

#aside>ul {
	position: relative;
	text-align: center;
	left: -20px;
}

#aside>ul>li {
	position: relative;
	list-style: none;
}

.aside {
	background-color: aqua;
	height: 400px;
	width: 100%;
	margin-left: 0px;
}

.content {
	position: relative;
	background-color: lime;
	height: 400px;
	width: 820px;
}
</style>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>

	<!-- content -->
	<div class="aside grid_2">
		<div>
			<label>ABOUT US</label>
		</div>
		<div id="aside">
			<ul>
				<li>조직도</li>
			</ul>
			<ul>
				<li>강사소개</li>
			</ul>
			<ul>
				<li>약력</li>
			</ul>
		</div>

	</div>
	<div class="content grid_10"></div>
	
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>