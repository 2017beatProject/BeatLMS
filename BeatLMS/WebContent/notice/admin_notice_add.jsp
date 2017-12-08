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
<link rel="stylesheet" href="./css/notice_admin_notice_add.css">
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
			<label><strong>NOTICE</strong></label>
		</div>
		<div id="aside">
			<ul id="menu1">
				<li><a href="notice_admin.lms">�л����</a></li>
			</ul>
			<ul id="menu2">
				<li><a href="notice_admin_gen.lms">�Ϲݰ���</a></li>
			</ul>
			<!-- <ul id="menu3">
				<li><a href="#"></a></li>
			</ul> -->
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
				<b>�����ø���</b>
			</p>
<form action="notice_admin_add.lms" method="post">
			<div id="contentlayout">
				<div id="insidelayout">
					<input name="lmsbcode" value="�л� ���� �ڵ�" disabled="disabled"/>
					<!-- <input name="mnum" value="�ӽ÷� �л���ȣ �Է�"/> -->
					<input name="noticeWriter" value="�ۼ��ڸ� �Է�"/>
						<div class="title">
							<label>����</label><input type="text" id="title" name="noticeTitle">
						</div>
						<div class="contents">
							<textarea rows="" cols="" id="contents" name="noticeCont"></textarea>
						</div>
				</div>
				<div id="addbtn">
					<button type="submit">�۾���</button>
				</div>
			</div>
					</form>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>