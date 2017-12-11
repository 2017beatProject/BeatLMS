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
<link rel="stylesheet" href="./css/administration_lecture.css">
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
				<b>���Ǹ��</b>
			</p>
			<div>
				<table class="list">
					<tr>
						<th>���Ǹ�</th>
						<th>���ǽ�</th>
						<th>��&nbsp;��</th>
						<th>��&nbsp;��</th>
						<th>&nbsp;��&nbsp;��&nbsp;</th>
						<th>&nbsp;������&nbsp;</th>
					</tr>
					<tr>
						<td><a href="#">JAVA �����ھ缺
						</a></td>
						<td>���ǽ�1</td>
						<td>����1</td>
						<td>2018-01-01~2018-01-01</td>
						<td>20</td>
						<td>1</td>
					</tr>
					<tr>
						<td><a href="#">JAVA �����ھ缺
						</a></td>
						<td>���ǽ�2</td>
						<td>����2</td>
						<td>2018-01-01~2018-01-01</td>
						<td>20</td>
						<td>1</td>
					</tr>
					<tr>
						<td><a href="#">JAVA �����ھ缺
						</a></td>
						<td>���ǽ�3</td>
						<td>����3</td>
						<td>2018-01-01~2018-01-01</td>
						<td>20</td>
						<td>1</td>
					</tr>
				</table>
				<div id="addbtn">
				  <a href="#">���ǰ���</a>
				</div>
			</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>