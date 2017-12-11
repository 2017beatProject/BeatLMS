<%@page import="com.beat.Management.model.LecturePageDto"%>
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
<link rel="stylesheet" href="./css/administration_lecture_detail.css">
<link rel="stylesheet" href="./css/footer.css">
<%
	String lectserinum = request.getParameter("lectserinum");
%>

<script>

function toDeletePage(lecseri){
	//var deletePage = document.paging;

	editform.action="oneLecDelete.lms?lecseri="+lecseri;
	editform.method="post";
	editform.submit();
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
				<b>강의정보</b>
			</p>
			
			
			
<form name="editform"  action="oneLecEditUpdate.lms" method="post">			

<% 
	ArrayList<LecturePageDto> list = (ArrayList<LecturePageDto>)request.getAttribute("onelec");

	for(LecturePageDto bean : list){
%>		
			
			<div id="inside">
				<div>
					<label>강의명</label>
					<input type="text" name="lecturename" value= "<%=bean.getLecName() %>" readonly="readonly"/>
				</div>
				<div>
					<label>강의장</label> <select name="lectureroom">
						<option value="<%=bean.getLecRoom()%>"><%=bean.getReLecRoom() %></option>
						<option value="1">강의장1</option>
						<option value="2">강의장2</option>
						<option value="3">강의장3</option>
					</select>
					<label>강사</label><select name="lectureteacher">
						<option value="<%=bean.getReLecTeacher()%>"><%=bean.getLecTeacher()%></option>
						<option value="1">강사1</option>
						<option value="2">강사2</option>
						<option value="3">강사3</option>
				    </select>
				    <label>정원</label><input type="text" id="limit" name="lecturelimit" value="<%= bean.getMaxnum()%>"/>
				</div>
				<div>
				<label>시작</label><input type="date" id="start" name="lecturestartdate" value="<%=bean.getLecStart() %>"/>
				<label>종료</label><input type="date" id="end" name="lectureenddate" value="<%=bean.getLecEnd()%>"/>
				</div>
				<div>
				 <textarea rows="" cols="" id="contents" name="lecturecontent" value="<%=bean.getLecContent()%>"><%=bean.getLecContent()%></textarea>
				</div>

			</div>
				<div id="addbtn">
					<a href="javascript:editform.submit();">확인</a>
					<a href="javascript:toDeletePage('<%=bean.getLecName() %>');">삭제</a>
					
				</div>
				<%} %>
			</form>	
		</div>
		


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>