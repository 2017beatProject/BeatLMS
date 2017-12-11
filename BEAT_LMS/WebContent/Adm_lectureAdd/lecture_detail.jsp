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
<link rel="stylesheet" href="./css/administration_lecture_detail.css">
<link rel="stylesheet" href="./css/footer.css">
<%
	String lectserinum = request.getParameter("lectserinum");
%>
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
				<b>��������</b>
			</p>
			
<% //�����뿡 ���±� ���̸� �ɵ�
	ArrayList<LecturePageDto> list = (ArrayList<LecturePageDto>)request.getAttribute("onelec");
	for(LecturePageDto bean : list){
%>		
			
			<div id="inside">
				<div>
					<label>���Ǹ�</label>
					<input type="text" name="lecname" value= "<%=bean.getLecName() %>"/>
				</div>
				<div>
					<label>������</label> <select name="">
						<option value="<%=bean.getLecRoom() %>">����</option>
						<option value="1">������1</option>
						<option value="2">������2</option>
						<option value="3">������3</option>
					</select>
					<label>����</label><select name="">
						<option value="<%=bean.getLecTeacher()%>">����</option>
						<option value="1">����1</option>
						<option value="2">����2</option>
						<option value="3">����3</option>
				    </select>
				    <label>����</label><input type="text" id="limit" name="maxnum" value="<%= bean.getMaxnum()%>"/>
				</div>
				<div>
				<label>����</label><input type="date" id="start" name="startdate" value="<%=bean.getLecStart() %>"/>
				<label>����</label><input type="date" id="end" name="enddate" value="<%=bean.getLecEnd()%>"/>
				</div>
				<div>
				 <textarea rows="" cols="" id="contents" name="leccontent" value = "<%=bean.getLecContent()%>">����</textarea>
				</div>
<%} %>
			</div>
				<div id="addbtn">
					<a href="#">����</a>
					<a href="#">����</a>
				</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>