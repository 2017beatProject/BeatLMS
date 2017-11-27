<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 페이지</title>
<link rel="stylesheet" href="../css/960.css">
<link rel="stylesheet" href="../css/menu.css">
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/join.css">
<style type="text/css">

</style>
<script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
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
            "id",
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
            if (returnTfCount == 0) {
                location.href = "exit.html";
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
		<form name="join" action="exit.html" method="post">
		<div id="logo">
		<img alt="logo" src="../imgs/joinlogo.jpg">
		</div>
		<div id="id">
			<label for="id">아이디</label>
			<input type="text" name="id" id="idInput"/>
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
			<input type="text" name="mail" id="email"/>
        	<div id="emErr">올바른 이메일 주소를 입력해주세요</div>
		</div>	
		<div id="address">
			<label for="address">주소</label>
			<input type="text" name="address" id="location"/>
        	<div id="loErr">올바른 주소를 입력해주세요</div>
		</div>	
		<div id="radio">
		    <label for="gender">성별</label>
			<select name="gender" id="gender"> 
          		<option value="">성별을 선택해주세요</option>
           		<option value="man">남성</option>
           		<option value="woman">여성</option>
           		<option value="etc">기타</option>
       		</select>
       		<div id="genErr">성별을 선택해주세요</div>
		</div>
		<div id="btn">
			<input type="button" id="submit" value="확인" onclick="submitButton();">
        	<input type="reset" id="cancel" value="취소" onclick="resetText();">
		</div>
		</form>
	</div>
	<div class="clear"></div>

	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>

