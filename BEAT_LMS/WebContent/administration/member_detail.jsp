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
				<b>회원정보</b>
			</p>

			<div id="inside">
				<div id="name">
					<label for="name">이름</label> 
					<input type="text" id="userName" name="name">
				</div>
				<div id="birth">
					<label for="birth">생년월일</label> 
					<input type="date" id="bDay" name="mbirth" />
				</div>
				<div id="number">
					<label for="number">연락처</label> 
					<input type="text" id="phoneFirst" name="mphone">
				</div>
				<div id="mail">
					<label for="mail">e_mail</label> 
					<input type="email" name="mmail" id="email" />
				</div>
				<div id="address">
					<label for="address">주소</label> 
					<input type="text" id="postcode" placeholder="우편번호" name="maddnum"> 
					<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br> 
					<input type="text" id="roadAddress" placeholder="도로명주소" name="maddress"><br>
					<input type="text" id="jibunAddress" placeholder="지번주소"> 
					<span id="guide" style="color: #999"></span>
				</div>
				<div id="gender">
					<label for="gender">성별</label> <select name="mzen">
						<option value="">선택</option>
						<option value="1">남성</option>
						<option value="2">여성</option>
					</select>
				</div>
				<div id="btn">
					<button type="submit" id="jbtn">수정</button>
					<button type="reset" id="cbtn">삭제</button>
				</div>
			</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>