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
	href="./css/administration_student_list_edit_attendance.css">
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
				<b>�⼮����</b>
			</p>
			<div id="inside">
				<div id="input1">
					<label>�⼮</label><input type="text" />
				</div>
				<div id="input2">
					<label>�Ἦ</label><input type="text" />
				</div>
				<div id="input3">
					<label>����</label><input type="text" />
				</div>
				<div id="input4">
					<label>����</label><input type="text" />
				</div>
				<div id="btn">
					<a href="">�����Ϸ�</a>
				</div>
			</div>
		</div>

	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>