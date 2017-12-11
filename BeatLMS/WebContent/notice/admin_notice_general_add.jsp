<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/960.css">
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/notice_admin_notice_general_add.css">
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
				<b>공지올리기</b>
			</p>
			<form action="notice_admin_gen_add.lms" method="post">
			<div id="contentlayout">
				<div id="insidelayout">
				<input name="lmsbcode" value="일반 공지 코드" disabled="disabled"/>
				<input name="noticeWriter" value="작성자명 입력"/>
						<div class="title">
							<label>제목</label><input type="text" id="title" name="noticeTitle">
						</div>
						<div class="contents">
							<textarea rows="" cols="" id="contents" name="noticeCont"></textarea>
						</div>
				</div>
				<div id="addbtn">
					<button type="submit">글쓰기</button>
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