<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 페이지</title>
<link rel="stylesheet" href="./css/960.css">
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/join.css">
<style type="text/css">
</style>
<script type="text/javascript" src="./js/jquery-1.12.4.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="./js/address.js"></script>
<script src="./js/joinValidation.js"></script>
<script>
$(document).ready(function(){
	
	return false;
});


   
	/*  */
	/*  아래부터는 메인*/
/* 	$(function() {
		resetText();
		var result=false;
		var url = $(this).attr('action');
		var method = $(this).attr('method');
		//////////////////////////////////입력사항 변수화
		var mid = $(this).find('input').eq(0).val();		
		var mpw = $(this).find('input').eq(1).val();
		var mname = $(this).find('input').eq(2).val();
		var mbirth = $(this).find('input').eq(3).val();
		var mphone = $(this).find('input').eq(4).val();
		var mmail = $(this).find('input').eq(5).val();
		var maddnum = $(this).find('input').eq(6).val();
		var maddress = $(this).find('input').eq(7).val();
		var mzen = $(this).find('input').eq(8).val();
		
		$('#id>button').on('click',function(){
			$.ajax({
				 'url' : '/BEAT_LMS-re/json/join.json',
				 'type' : method,						
				 'async' : true,
				 'error' : function(){
					alert("경고");
				 },
				 'success' : function(data){
				 window.location.replace('/login/joinInfo.lms');
				 }
				 }); 
		})
		
		$('form').submit(function() {
			submitCheck();
			if (returnTfCount > 0) {
				result = false;
			}

		});

		return false;
	}); */
	
	
	
</script>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>

	<!-- content -->
	<div class="content">
		<form action="join.lms" method="post">
			<div id="logo">
				<img alt="logo" src="./imgs/joinlogo.jpg">
			</div>
			<div id="status">
				<input disabled="disabled" type="radio" name="snum"
					checked="checked">일반회원<input type="radio" name="snum"
					disabled="disabled">직원
			</div>
			<div id="id">
				<label for="id">아이디</label> <input type="text" name="mid"
					id="idInput" />
				<button type="button" id="idDoubleCheck">중복확인</button>
				<div id="idErr">아이디를 입력해주세요</div>
			</div>
			<div id="pw">
				<label for="password">비밀번호</label> <input type="password" name="mpw"
					id="pwInput" />
				<div id="pwInputErr">암호를 입력해주세요</div>
			</div>

			<div id="pw2">
				<label for="password2">비밀번호 확인</label> <input type="password"
					id="pwInputRe" name="password2" />
				<button type="button" onclick="showPW();">보기</button>
				<div id="pwInputReErr">암호를 확인해주세요</div>
			</div>
			<div id="name">
				<label for="name">이름</label> <input type="text" id="userName"
					name="name">
				<div id="nameErr">이름을 입력해주세요</div>
			</div>
			<div id="birth">
				<label for="birth">생년월일</label> <input type="date" id="bDay"
					name="mbirth" />
				<div id="bDayErr">생년월일을 입력해주세요</div>
			</div>
			<div id="number">
				<label for="number">연락처</label> <input type="text" id="phoneFirst"
					name="mphone">
				<div id="phoErr">전화번호를 입력해주세요</div>
			</div>
			<div id="mail">
				<label for="mail">e_mail</label> <input type="email" name="mmail"
					id="email" />
				<button type="button" id="send">인증메일전송</button>
				<div id="emErr">올바른 이메일 주소를 입력해주세요</div>
			</div>
			<div id="address">
				<label for="address">주소</label> <input type="text" id="postcode"
					placeholder="우편번호" name="maddnum"> <input type="button"
					onclick="execDaumPostcode()" value="우편번호 찾기"><br> <input
					type="text" id="roadAddress" placeholder="도로명주소" name="maddress" > <input
					type="text" id="jibunAddress" placeholder="지번주소"> <span
					id="guide" style="color: #999"></span>
			</div>
			<div id="gender">
				<label for="gender">성별</label> <select name="mzen" >
					<option value="">성별을 선택해주세요</option>
					<option value="1">남성</option>
					<option value="2">여성</option>
				</select>
				<div id="genErr">성별을 선택해주세요</div>
			</div>
			<div id="btn">
				<button type="submit">가입</button>
				<button type="reset">취소</button>
			</div>
		</form>
	</div>
	<div class="clear"></div>

	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>