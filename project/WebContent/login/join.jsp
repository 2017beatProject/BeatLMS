<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	var errList = [ "idErr", "pwInputErr", "pwInputReErr", "nameErr",
    			"bDayErr", "genErr", "phoErr", "emErr"];
    var inputList = [ "idInput", "pwInput", "pwInputRe", "userName", "bDay",
    			"gender", "phoneFirst", "email"];    
    var pwToggle;

	/*  아래부터는 메인*/
	var returnTfCount;
	var datakit="";
	var midlist="";
	var mid;
		$(function() {
		resetText();	
		
		$('#id button').on('click',function() {		
			 mid= $('#id').find('input').eq(0).val();
					$.ajax({
						'url' : '/BEAT_LMS-re/target/join.json',
						'type' : 'POST',						
						'error' : function() {
							alert("경고");
						},
						'success' : function(data) {
							$("#id span").remove();
							var tf=true;
							datakit=data.list[0].mid;
							
							for(var i=0;i<data.list.length;i++){
								midlist=data.list[i].mid;
								if(mid==midlist){
									tf=false;
									break;
								}
							}// 반복문으로 중복값이 있는지 검사							
							
							if(tf==true){$('<span>중복되지 않은 아이디입니다</span>').appendTo('#id');
							}else if(tf==false)$('<span>중복된 아이디입니다</span>').appendTo('#id');
							}							
						
					});
				});
		
		$('#btn button').on('click',function() {				
			resetText();		
			submitCheck();
			
			var result = false;
			
			if (returnTfCount == 0) {
				result=true;
			}
			
			returnTfCount=0;
			return result;
		});
	});
	
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
			    <label>회원구분</label>
				<input disabled="disabled" type="radio" name="snum"
					checked="checked">일반회원<input type="radio" name="snum"
					disabled="disabled">직원
			</div>
			<div id="id">
				<label for="id">아이디</label> <input type="text" name="mid"
					id="idInput" />
				<button type="button" id="idDoubleCheck">중복확인</button>
				<div id="idErr">아이디를 입력해주세요.</div>
			</div>
			<div id="pw">
				<label for="password">비밀번호</label> <input type="password" name="mpw"
					id="pwInput" />
				<div id="pwInputErr">암호를 입력해주세요.</div>
			</div>

			<div id="pw2">
				<label for="password2">비밀번호 확인</label> <input type="password"
					id="pwInputRe" name="password2" />
				<button type="button" onclick="showPW();">보기</button>
				<div id="pwInputReErr">암호를 확인해주세요.</div>
			</div>
			<div id="name">
				<label for="name">이름</label> <input type="text" id="userName"
					name="name">
				<div id="nameErr">이름을 입력해주세요.</div>
			</div>
			<div id="birth">
				<label for="birth">생년월일</label> <input type="date" id="bDay"
					name="mbirth" />
				<div id="bDayErr">생년월일을 입력해주세요.</div>
			</div>
			<div id="number">
				<label for="number">연락처</label> <input type="text" id="phoneFirst"
					name="mphone">
				<div id="phoErr">전화번호를 입력해주세요.</div>
			</div>
			<div id="mail">
				<label for="mail">e_mail</label> <input type="email" name="mmail"
					id="email" />
				<button type="button" id="send">인증메일전송</button>
				<div id="emErr">올바른 이메일 주소를 입력해주세요.</div>
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
					<option value="">성별을 선택해주세요</option>
					<option value="1">남성</option>
					<option value="2">여성</option>
				</select>
				<div id="genErr">성별을 선택해주세요.</div>
			</div>
			<div id="btn">
				<button type="submit" id="jbtn">가입</button>
				<button type="reset" id="cbtn">취소</button>
			</div>
		</form>
	</div>
	<div class="clear"></div>

	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>