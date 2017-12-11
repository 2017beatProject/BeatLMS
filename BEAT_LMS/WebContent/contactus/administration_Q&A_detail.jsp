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
<link rel="stylesheet" href="./css/contactus_administration_Q&A_detail.css">
<link rel="stylesheet" href="./css/footer.css">

<style type="text/css">

</style>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>
	<jsp:include page="../template/aside_menu_contact.jsp"></jsp:include>
	

	<!-- content -->
	<div class="content grid_10">
		<img class="imgs" id="topimg" alt="" src="./imgs/menu_topimg1.jpg">
		<div class="layout">
			<div>
				<img alt="" src="">
			</div>
			<p><b>질문내용</b></p>
			<div id="contentlayout">
				<div id="insidelayout">
				<form action="">
					    <div>
					     <label>이름</label><input type="text" id="name"/>
					     <label>아이디</label><input type="text" id="id"/>
					     <label>연락처</label><input type="text" id="Pnumber"/>
					    </div>
						<div class="title">
							<label>제목</label><input type="text" id="title"/>
						</div>
						<div class="contents">
							<textarea rows="" cols="" id="contents"></textarea>
						</div>
					</form>
				</div>
				<div id="addbtn">
					<button type="submit">목록</button>
					<button type="submit">답글</button>
			</div>
			</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>