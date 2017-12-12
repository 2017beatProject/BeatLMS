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
<link rel="stylesheet" href="./css/administration_student_attendance.css">
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
				<b>�⼮üũ</b>
			</p>
			<div id="select">
				<select name="select">
					<option value="">����</option>
					<option value="1">��ȣ</option>
					<option value="2">�̸�</option>
					<option value="3">������</option>
					<option value="4">���Ǹ�</option>
				</select> <input type="text">
				<button>�˻�</button>
			</div>
			<div>
				<table class="list">
					<tr>
						<th>��ȣ</th>
						<th>�̸�</th>
						<th>������</th>
						<th>���Ǹ�</th>
						<th>�⼮</th>
						<th>����</th>
						<th>����</th>
						<th>���</th>
					</tr>
					<tr>
						<td>��ȣ</td>
						<td>�̸�</td>
						<td>������</td>
						<td>���Ǹ�</td>
						<td><input type="radio" name=""/></td>
						<td><input type="radio" name=""/></td>
						<td><input type="radio" name=""/></td>
						<td></td>
					</tr>
				</table>
				<div>
				   <button id="btn">�⼮üũ</button>
				</div>
			</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>