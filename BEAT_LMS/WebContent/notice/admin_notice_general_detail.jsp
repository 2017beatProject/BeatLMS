<%@page import="com.beat.Notice.model.LMSNoticeDto"%>
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
<link rel="stylesheet"
	href="./css/notice_admin_notice_general_detail.css">
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
				<b>공지내용</b>
			</p>
			<div id="contentlayout">
				<div id="insidelayout">
		<%
		LMSNoticeDto bean=(LMSNoticeDto)request.getAttribute("noticeAdminGenDetail");
		%>
						<div class="title">
							<label>제목</label><input type="text" id="title" value="<%=bean.getLmsbtitle() %>" readonly="readonly">
						</div>
						<div class="contents">
							<textarea rows="" cols="" id="contents" readonly="readonly"><%=bean.getLmsbcontent() %></textarea>
						</div>
				</div>
				<div id="addbtn">
					<a href="notice_admin_gen.lms">목록</a> <a href="notice_admin_gen_edit.lms?lmsblog=<%=bean.getLmsblog() %>">수정</a>
				</div>
			</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>