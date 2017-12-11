<%@page import="com.beat.Management.model.OneMemManagementDto"%>
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
<link rel="stylesheet" href="./css/administration_member_detail.css">
<link rel="stylesheet" href="./css/footer.css">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="./js/address.js"></script>

	<%
		String mnum = request.getParameter("mnum");
	%>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>
	<jsp:include page="../template/aside_menu_administration.jsp"></jsp:include>
	

	<%
		ArrayList<OneMemManagementDto> oneList = (ArrayList<OneMemManagementDto>) request.getAttribute("oneList");
		for (OneMemManagementDto bean : oneList) {
	%>

	<!-- content -->
	<div class="content grid_10">
		<img class="imgs" id="topimg" alt="" src="./imgs/menu_topimg1.jpg">
		<div class="layout">
			<div>
				<img alt="" src="">
			</div>
			<p>
				<b>회원정보</b>
			</p>
			<form action="oneMemEditUpdate.lms?mnum=<%=bean.getmNum() %>" method="post">
				<div id="inside">
					<div id="name">
						<label for="name">이름</label> 
						<input type="text" id="userName" name="name" value="<%=bean.getmName()%>">
					</div>
					<div id="birth">
						<label for="birth">생년월일</label> <input type="date" id="bDay"
							name="mbirth" value="<%=bean.getmBirth()%>" />
					</div>
					<div id="number">
						<label for="number">연락처</label> <input type="text" id="phoneFirst"
							name="mphone" value="<%=bean.getmPhone()%>">
					</div>
					<div id="mail">
						<label for="mail">e_mail</label> <input type="email" name="mmail"
							id="email" value="<%=bean.getmMail()%>" />
					</div>
					<div id="address">
						<label for="address">주소</label> <input type="text" id="postcode"
							placeholder="우편번호" name="maddnum"> <input type="button"
							onclick="execDaumPostcode()" value="우편번호 찾기"><br> <input
							type="text" id="roadAddress" placeholder="도로명주소" name="maddress"><br>
						<input type="text" id="jibunAddress" placeholder="지번주소"> <span
							id="guide" style="color: #999"></span>
					</div>
					<div id="gender">
						<label for="gender">성별</label> <select name="mzen">
							<option value="">선택</option>
							<%
								if (bean.getmZen().equals("남성")) {
							%>
							<option value="1" selected="selected">남성</option>
							<option value="2">여성</option>
							<%
								} else if (bean.getmZen().equals("여성")) {
							%>
							<option value="1" selected="selected">남성</option>
							<option value="2">여성</option>
							<%
								}
							%>
						</select>
					</div>
					<div id="btn">
						<button type="submit" id="jbtn">수정</button>
						<button type="reset" id="cbtn">삭제</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- content END  -->
	<%
		}
	%>

	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>