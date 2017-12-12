<%@page import="com.beat.Notice.model.LMSNoticeDto"%>
<%@page import="java.util.ArrayList"%>
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
<link rel="stylesheet" href="./css/notice_notice.css">
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
			<p><b>학사공지</b></p>
			<input name="lmsbcode" value="학사 공지 코드" disabled="disabled" />
			<div id="listlayout">
				<table>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
		<%
		ArrayList<LMSNoticeDto> noticeList = (ArrayList<LMSNoticeDto>)request.getAttribute("noticeList");
		for(LMSNoticeDto bean : noticeList) {
		%>
					<tr onmouseover="mouseOver(this);" onmouseout="mouseOut(this);" onclick="location.href='notice_detail.lms?lmsblog=<%=bean.getLmsblog() %>'">
						<td><%=bean.getLmsblog() %></td>
						<td><%=bean.getLmsbtitle() %></td>
						<td><%=bean.getLmsbauthor() %></td>
						<td><%=bean.getLmsbdate() %></td>
						<%-- <td><a href="notice_detail.lms?lmsblog=<%=bean.getLmsblog() %>">공지 보기</a></td> --%>
					</tr>
		<% } %>
				</table>
			</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>