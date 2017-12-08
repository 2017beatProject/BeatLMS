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
<link rel="stylesheet" href="./css/notice_admin_notice.css">
<link rel="stylesheet" href="./css/footer.css">

<style type="text/css">
</style>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>
	<jsp:include page="../template/aside_menu_notice.jsp"></jsp:include>

	<!-- content -->
	<div class="content grid_10">
		<img class="imgs" id="topimg" alt="" src="./imgs/menu_topimg1.jpg">
		<div class="layout">
			<div>
				<img alt="" src="">
			</div>
			<p>
				<b>�л����</b>
			</p>
			<div id="listlayout">
				<table>
					<tr>
						<th>��ȣ</th>
						<th>����</th>
						<th>�ۼ���</th>
						<th>�ۼ���</th>
						<th>��ȸ��</th>
					</tr>
					<tr>
						<td>3</td>
						<td>�л����3</td>
						<td>���̵�</td>
						<td>2018-01-01</td>
						<td>��ȸ��</td>
					</tr>
					<tr>
						<td>2</td>
						<td>�л����2</td>
						<td>���̵�</td>
						<td>2018-01-01</td>
						<td>��ȸ��</td>
					</tr>
					<tr>
						<td>1</td>
						<td>�л����1</td>
						<td>���̵�</td>
						<td>2018-01-01</td>
						<td>��ȸ��</td>
					</tr>

				</table>
				<div id="addbtn">
					<a href="#">�۾���</a>
				</div>
			</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>