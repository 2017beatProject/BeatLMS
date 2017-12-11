<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/960.css">
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/contactus_Q&A_add.css">
<link rel="stylesheet" href="./css/footer.css">

<style type="text/css">
</style>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>

	<!-- aside -->
	<div class="aside grid_2">
		<div id="mainmenu">
			<label><strong>CONTACT<br>US
			</strong></label>
		</div>
		<div id="aside">
			<ul id="menu1">
				<li><a href="#">상담신청</a></li>
			</ul>
			<ul id="menu2">
				<li><a href="#">질문사항</a></li>
			</ul>
			<!-- <ul id="menu3">
				<li><a href="#"></a></li>
			</ul> -->
		</div>
	</div>
	<!-- aside END -->


	<!-- content -->
	<div class="content grid_10">
		<img class="imgs" id="topimg" alt="" src="../imgs/menu_topimg1.jpg">
		<div class="layout">
			<div>
				<img alt="" src="">
			</div>
			<p>
				<b>질문수정</b>
			</p>
			<div id="contentlayout">
				<div id="insidelayout">
				
				<c:forEach items="${list}" var="list">
					<form action="qnaedit.lms?lmsblog=${list.lmsblog}" method="post">					
						<div class="title">
							<label>제목</label><input type="text" name="title" value="${list.qnaTitle }"/>
						</div>
						<div class="contents">
							<textarea rows="" cols="" name="contents">${list.qnaContent}</textarea>
						</div>
			</c:forEach>
					
				</div>
				<div id="addbtn">
					<button type="reset">취소</button>
					<button type="submit">수정</button>
				</div>
				</form>
			</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>