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
<link rel="stylesheet" href="./css/notice_admin_notice_edit.css">
<link rel="stylesheet" href="./css/footer.css">

<style type="text/css">
</style>
<script type="text/javascript">

</script>
<%
LMSNoticeDto bean=(LMSNoticeDto)request.getAttribute("noticeAdminEdit");
%>	
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
				<b>공지수정</b>
			</p>
	
<form action="notice_admin_edit.lms?lmsblog=<%=bean.getLmsblog()%>" name="adminEdit" method="post">
			<div id="contentlayout">
				<div id="insidelayout">
					<label>게시글번호 : </label><input type="text" name="lmsblog" value="<%=bean.getLmsblog()%>" readonly="readonly" disabled="disabled"/>
						<div class="title">
							<label>제목</label><input type="text" id="title" name="lmsbtitle" value="<%=bean.getLmsbtitle()%>" />
						</div>
						<div class="contents">
							<textarea rows="" cols="" id="contents" name="lmsbcontent"><%=bean.getLmsbcontent()%></textarea>
						</div>
					
				</div>
				<div id="addbtn">
					<a href="javascript:adminEdit.submit();">완료</a>
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