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

<script>
        var errList = [
            "idErr",
            "pwInputErr",
            "pwInputReErr",
            "nameErr",
            "bDayErr",
            "genErr",
            "phoErr",
            "emErr",
            "loErr"
        ];
        var inputList = [
            "idInput",
            "pwInput",
            "pwInputRe",
            "userName",
            "bDay",
            "gender",
            "phoneFirst",
            "email",
            "location"
        ];
        var returnTfCount;
        var pwToggle;
        function submitButton() {
            submitCheck();
            if (returnTfCount > 0) {
                location.href = "join.lms";
            }
        }
        function submitCheck() {
            returnTfCount = 0;
            for (var j = 0; j < inputList.length; j++) {
                if (document.getElementById(inputList[j]).value == "") {
                    document.getElementById(errList[j]).style.opacity = "1";
                    document.getElementById(errList[j]).style.color = "deeppink";
                    //document.getElementById(inputList[j]).style.backgroundColor = "deeppink";
                    returnTfCount++;
                }
            }
            
            if (document.getElementById("pwInput").value != document.getElementById("pwInputRe").value) {
                document.getElementById("pwInputReErr").style.opacity = "1";
                document.getElementById("pwInputReErr").style.color = "deeppink";
                returnTfCount++;
            }
        }
        function resetText() {
            for (var i = 0; i < errList.length; i++) {
                document.getElementById(errList[i]).style.opacity = "0";
                //document.getElementById(inputList[i]).style.backgroundColor = "white";
            }
        }
        function showPW() {
            pwToggle = !pwToggle;
            if (pwToggle) {
                document.getElementById("pwInput").setAttribute('type', 'text');
                document.getElementById("pwInputRe").setAttribute('type', 'text');
            } else {
                document.getElementById("pwInput").setAttribute('type', 'password');
                document.getElementById("pwInputRe").setAttribute('type', 'password');
            }
        }
        window.onload = function() {
            resetText();
        }
    </script>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include> 

	<!-- content -->
	<div class="content">
		<form name="join" action="join.lms" method="post">
		<div id="logo">
		<img alt="logo" src="./imgs/joinlogo.jpg">
		</div>
		<div id="id">
			<label for="id">아이디</label>
			<input type="text" name="id" id="idInput"/>
			<input type="submit" value="중복확인" id="idCheck">
			<div id="idErr">아이디를 입력해주세요</div>
		</div>
		<div id="pw">
			<label for="password">비밀번호</label>
			<input type="password" name="password" id="pwInput"/>
        	<div id="pwInputErr">암호를 입력해주세요</div>
		</div>
		
		<div id="pw2">
			<label for="password2">비밀번호 확인</label>
			<input type="password" id="pwInputRe" name="password2"/> 
			<input type="button" value="보기" onclick="showPW();">
        	<div id="pwInputReErr">암호를 확인해주세요</div>
		</div>
		<div id="name">
			<label for="name">이름</label>
			<input type="text" id="userName" name="name">
			<div id="nameErr">이름을 입력해주세요</div>
		</div>
		<div id="birth">
			<label for="birth">생년월일</label>
			<input type="date" id="bDay" name="birth"/>
			<div id="bDayErr">생년월일을 입력해주세요</div>
		</div>
		<div id="number">
			<label for="number">연락처</label>
			<input type="text" id="phoneFirst" name="number">
        	<div id="phoErr">전화번호를 입력해주세요</div>
		</div>
		<div id="mail">
			<label for="mail">e_mail</label>
			<input type="email" name="email" id="email"/>
			<input type="submit" value="인증메일전송" id="send"/>
        	<div id="emErr">올바른 이메일 주소를 입력해주세요</div>
		</div>	
		<div id="address">
			<label for="address">주소</label>
<input type="text" id="sample4_postcode" placeholder="우편번호">
<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
<input type="text" id="sample4_roadAddress" placeholder="도로명주소">
<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
<span id="guide" style="color:#999"></span>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
    </script>
        	
		</div>	
		<div id="radio">
		    <label for="gender">성별</label>
			<select name="gender" id="gender" > 
          		<option value="">성별을 선택해주세요</option>
           		<option value="1">남성</option>
           		<option value="2">여성</option>           		
       		</select>
       		<div id="genErr">성별을 선택해주세요</div>
		</div>
		<div id="btn">
			<input type="button" id="submit" value="가입"/>
        	<input type="reset" id="cancel" value="취소" onclick="resetText();"/>
		</div>
		</form>
	</div>
	<div class="clear"></div>

	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>