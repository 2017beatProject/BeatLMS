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
<script type="text/javascript">
function mouseOver(obj){
	 obj.style.cursor='pointer';
	 obj.style.backgroundColor="#dddddd";
}

function mouseOut(obj){
	 obj.style.backgroundColor="";
}
</script>
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
			<p><b>일반공지</b></p>
			<input name="lmsbcode" value="일반 공지 코드" disabled="disabled"/>
			<div id="listlayout">
				<table>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
		<%
		ArrayList<LMSNoticeDto> noticeAdminGenList = (ArrayList<LMSNoticeDto>)request.getAttribute("noticeAdminGenList");
		for(LMSNoticeDto bean : noticeAdminGenList) {
		%>
					<tr onmouseover="mouseOver(this);" onmouseout="mouseOut(this);" onclick="location.href='notice_admin_gen_detail.lms?lmsblog=<%=bean.getLmsblog() %>'">
						<td><%=bean.getLmsblog() %></td>
						<td><%=bean.getLmsbtitle() %></td>
						<td><%=bean.getLmsbauthor() %></td>
						<td><%=bean.getLmsbdate() %></td>
					</tr>
		<% } %>
					
				</table>
				<div id="addbtn">
					<a href="notice_admin_gen_add.lms">글쓰기</a>
				</div>
			</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>