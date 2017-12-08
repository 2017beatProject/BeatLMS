<%@page import="com.beat.Notice.model.LMSNoticeDto"%>
<%@page import="java.util.ArrayList"%>
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
<link rel="stylesheet" href="./css/notice_admin_notice_general.css">
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
			<p><b>�Ϲݰ���</b></p>
			<input name="lmsbcode" value="�Ϲ� ���� �ڵ�" disabled="disabled"/>
			<div id="listlayout">
				<table>
					<tr>
						<th>��ȣ</th>
						<th>����</th>
						<th>����</th>
						<th>�ۼ���</th>
						<th>�ۼ���</th>
					</tr>
		<%
		ArrayList<LMSNoticeDto> noticeAdminGenList = (ArrayList<LMSNoticeDto>)request.getAttribute("noticeAdminGenList");
		for(LMSNoticeDto bean : noticeAdminGenList) {
		%>
					<tr>
						<td><%=bean.getLmsblog() %></td>
						<td><%=bean.getLmstitle() %></td>
						<td><%=bean.getLmsbcontent() %></td>
						<td><%=bean.getLmsbauthor() %></td>
						<td><%=bean.getLmsbdate() %></td>
					</tr>
		<% } %>
					
				</table>
				<div id="addbtn">
					<a href="notice_admin_gen_add.lms">�۾���</a>
				</div>
			</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>