<%@page import="com.beat.Management.model.LecturePageDto"%>
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
<link rel="stylesheet" href="./css/administration_lecture.css">
<link rel="stylesheet" href="./css/footer.css">


<script>
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
<jsp:include page="../template/aside_menu_administration.jsp"></jsp:include>
	

	<!-- content -->
	<div class="content grid_10">
		<img class="imgs" id="topimg" alt="" src="./imgs/menu_topimg1.jpg">
		<div class="layout">
			<div>
				<img alt="" src="">
			</div>
			<p>
				<b>강의목록</b>
			</p>
			<div>
				<table class="list">
					<tr>
						<th>강의명</th>
						<th>강의실</th>
						<th>강&nbsp;사</th>
						<th>기&nbsp;간</th>
						<th>&nbsp;총&nbsp;원&nbsp;</th>
						<th>&nbsp;현제원&nbsp;</th>
					</tr>
					
<%
	ArrayList<LecturePageDto> list = (ArrayList<LecturePageDto>)request.getAttribute("leclist");
for(LecturePageDto bean : list){
	
%>					

	<tr onmouseover="mouseOver(this);" onmouseout="mouseOut(this);" onclick="location.href='lecDetail.lms?lecname=<%=bean.getLecName()%>'">
					<!-- 여기 강의 시리얼넘버를 강의명으로 변환할 경우 : 기존에 받아온 시리얼 넘버값을 패러미터로 상세보기 페이지로 이동하므로 처리필요 -->	
					
						<td><%=bean.getLecName() %></td>
						<td><%=bean.getLecRoom() %></td>
						<td><%=bean.getLecTeacher() %></td>
						<td><%=bean.getReDate() %></td>
						<td><%=bean.getMaxnum() %></td>
						<td><%=bean.getNum() %></td>
					</tr>

<%} %>

				</table>
				<div id="addbtn">
				  <a href="toAddLecture.lms">강의개설</a>
				</div>
			</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>