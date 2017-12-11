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
<link rel="stylesheet" href="./css/administration_counselList_detail.css">
<link rel="stylesheet" href="./css/footer.css">

<style type="text/css">
</style>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/admenu.jsp"></jsp:include>

	<!-- aside -->
	<div class="aside grid_2">
		<div id="mainmenu">
			<label><strong>ADMINI<br>STRATION
			</strong></label>
		</div>
		<div id="aside">
			<ul id="menu1">
				<li><a href="#">ȸ������</a></li>
			</ul>
			<ul id="menu2">
				<li><a href="#">���ǰ���</a></li>
			</ul>
			<ul id="menu3">
				<li><a href="#">������</a></li>
			</ul>
			<ul id="menu4">
				<li><a href="#">����������</a></li>
			</ul>
		</div>
	</div>
	<!-- aside END -->


	<!-- content -->
	<div class="content grid_10">
		<img class="imgs" id="topimg" alt="" src="./imgs/menu_topimg1.jpg">
		<div class="layout">
			<div>
				<img alt="" src="">
			</div>
			<p>
				<b>��㳻��</b>
			</p>
			<div id="contentlayout">
				<div id="insidelayout">
					<form action="">
					    <div>
					     <label>�̸�</label><input type="text" id="name"/>
					     <label>���̵�</label><input type="text" id="id"/>
					     <label>����ó</label><input type="text" id="Pnumber"/>
					    </div>
						<!-- <div class="title">
							<label>����</label><input type="text" id="title"/>
						</div> -->
						<div class="contents">
							<textarea rows="" cols="" id="contents"></textarea>
						</div>
					</form>
				</div>
				<div id="addbtn">
					<button type="submit">���</button> <!--counselList �̵�-->
				</div>
			</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>