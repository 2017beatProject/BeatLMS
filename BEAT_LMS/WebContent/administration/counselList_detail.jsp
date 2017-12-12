<%@page import="com.beat.Management.model.CounselPageDto"%>
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
<link rel="stylesheet" href="./css/administration_counselList_detail.css">
<link rel="stylesheet" href="./css/footer.css">

<style type="text/css">
</style>
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
				<b>��㳻��</b>
			</p>
			<div id="contentlayout">
				<div id="insidelayout">
					
<% ArrayList<CounselPageDto> list = (ArrayList<CounselPageDto>)request.getAttribute("list");
	for(CounselPageDto bean : list){
%>
					    <div>
					     <label>�̸�</label><input type="text" id="name" value="<%=bean.getMname() %>" readonly="readonly"/>
					     <label>���̵�</label><input type="text" id="id" value="<%=bean.getMid() %>" readonly="readonly"/>
					     <label>����ó</label><input type="text" id="Pnumber" value="0<%=bean.getMphone() %>" readonly="readonly"/>
					    </div>
						<div class="contents">
							<textarea rows="" cols="" id="contents" name="" readonly="readonly"><%=bean.getCounselcontent() %></textarea>
						</div>
<%} %>					
				</div>
				<div id="addbtn">
					<button type="submit">���</button>
					 <!--counselList �̵�-->
				</div>
			</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>