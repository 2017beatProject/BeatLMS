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
<link rel="stylesheet" href="../css/aside_lecture.css">
<style type="text/css">

/*------------------------------------------------  */
.layout {
	position: relative;
	margin: 35px;
}

table {
	margin-left: 15px;
}

th {
	text-align: left;
	border-bottom: 2px solid black;
}

tr>td:nth-child(1) {
	border-bottom: 1px solid silver;
	text-align: center;
	padding: 5px;
}

tr>td:nth-child(2) {
	border-bottom: 0.5px solid #E1E1E1;
}

.imgs, table {
	display: inline-block;
}

.info {
	border-bottom: 1px solid silver;
	border-top: 1px solid silver;
	margin-bottom: 10px;
	margin-top: 10px;
	padding-top: 10px;
	padding-bottom: 10px;
}

.btn {
	float: right;
	margin-bottom: 50px;
}

#addbtn {
	background-color: #4C4C4C;
	border: 2px solid #4C4C4C;
	border-radius: 3px;
	text-decoration: none;
	color: white;
	font-size: 15px;
	padding: 3px;
	margin-top: 10px;
}

#addbtn:HOVER {
	border: 2px solid orange;
	color: orange;
}

#topimg {
	position: relative;
	left: -20px;
}

p {
	border-bottom: 3px solid black;
	width: 130px;
	font-size: 2em;
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
				<li><a href="#">���ǼҰ�</a></li>
			</ul>
			<ul id="menu2">
				<li><a href="#">������û</a></li>
			</ul>
			<!-- <ul id="menu3">
				<li><a href="#"></a></li>
			</ul> -->
		</div>
	</div>
	<!-- aside END -->


	<!-- content -->
	<div class="content grid_10">
		<img class="imgs" id="topimg" alt="" src="../imgs/infoTopImg.jpg">
		<div class="layout">
			<p>
				<b>�����Ұ�</b>
			</p>
			<div>
				<img class="imgs" alt="" src="../imgs/info_img1.jpg">
				<!-- �̹���ũ�� 400/223 �ȼ� -->
				<table>
					<tr>
						<th colspan="2">JAVA������ �缺����</th>
					</tr>
					<tr>
						<td>������</td>
						<td>������1</td>
					</tr>
					<tr>
						<td>��&nbsp;&nbsp;��</td>
						<td>����1</td>
					</tr>
					<tr>
						<td>���ǱⰣ</td>
						<td>2018-01-01~2018-01-01</td>
					</tr>
					<tr>
						<td>���ǽð�</td>
						<td>09:00~18:00</td>
					</tr>
					<tr>
						<td>�����ο�</td>
						<td>20��</td>
					</tr>
					<tr>
						<td>��������</td>
						<td>0000-0000</td>
					</tr>

				</table>
			</div>
			<div class="info">
				<div class="btn">
					<a href="#" id="addbtn">������û</a>
				</div>
				<p>
					<b>������ǥ</b>
				</p>
				<br> SI, ERP �� CRM���α׷��� ������, �� ���α׷��� ������ �� �� ������Ʈ ������ ��ü ���� �����
				JAVA�� �����ϰ�, �ڹٿ� ����Ŭ(DBMS)�� ������ ORM �����ӿ�ũ�� IBATIS�� MYBATIS�� ���� �� �� �ִ�
				����� �����ϰ� MAVEN�� ��������� SPRING �����ӿ�ũ�� �����Ͽ� ���� ���� �����ӿ�ũ�� ȭ��ó��, ������ó��,
				���� ������Ʈ ������ �ǹ��� ������ �� �ֵ��� ������Ʈ�� ���� �����Ѵ�.<br> ��������� ����Ǵ� ǥ��
				�����ӿ�ũ�� ���� ���� �����ӿ�ũ�� ����� Ư¡�� �����ϰ� ���� �ҽ������ ����ȭ�ǰ�, ���� �� ����� Ȱ���Ͽ� Ư��
				����ڿ� ���ӵ��� �ʴ� �ý����� ���� �� �� �ְ� ������ �ٷ� ���� �� �� �ִ� �ǹ��� �����ڸ� �缺�� �� �ִ� �����
				�����ϴ� ���� ��ǥ�� �Ѵ�.<br> ��������� ����� SI��ü Ȥ�� S/W���� ���� ����� �ֱ� �䱸������ �ݿ�,
				�������� �����ӿ�ũ�� Spring �����ӿ�ũ�� �ǹ���������Ʈ�� �߽����� �н��ϰ� ���� SM��ü���� ����� ���, ������
				����� �� ���ø����̼��� ���� ������ ���� Struts �����ӿ�ũ�� �н��Ͽ� ������ �ٷ� ������ ������ �ǹ��� ������
				�缺�� ��ǥ�� �Ѵ�.<br> �Ʒð��� ���� �� �� �������� ������ �ڹ� ���α׷� ���� �ɷ��� Ȱ���Ͽ� SI,
				ERP �� CRM���α׷��� �����ڳ� �� ���α׷��� ������ �� �� ������Ʈ �����ڷ� ����� �� �ִ�.<br>
				<p>
					<b>��������</b>
				</p>
				<br> <img alt="" src="../imgs/info_img1-1.jpg"> <br>
				<p>
					<b>��������</b>
				</p>
				<br> <img alt="" src="../imgs/info_img1-2.jpg">

			</div>
		</div>
	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>