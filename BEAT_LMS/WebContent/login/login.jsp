<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>로그인 페이지</title>

<link rel="stylesheet" href="./css/960.css">
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/login.css">
<style type="text/css">
</style>
<script type="text/javascript" src="./js/jquery-1.12.4.js"></script>
<script type="text/javascript">

var loginResult, logintf, err;

function er(){
	err = document.getElementById('errMsg1');
	err.innerText='ID와 비밀번호를 확인하세요';
}


window.onload= function(){
	
	loginResult = <%= request.getAttribute("loginChk") %>;
	
	//alert(loginResult);
	if(loginResult==false){
	  	er();
	}
}



</script>
</head>
<body>

	
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>

	<!-- content -->
	<div class="content">
	
	 <form action="login.lms" method="post">
		
	<div id="entireForm">
		
			<div>
				<img id="logo" alt="logo" src="./imgs/loginlogo.jpg">
			</div>
			
			<div>
				<span id="errMsg1"></span>
			</div>
			
			<div id="id">
				<label for="id">아이디</label>
				<input type="text" name="mid" />
			</div>
			<div id="pw">
				<label for="password">비밀번호</label> 
				<input type="password" name="mpw" />
			</div>
			<div id="radio">
				<input type="radio" name="radioName" value="1"/>일반 회원 
				<input type="radio"	name="radioName" value="2"/>직원
			</div>
			<div id="btn">
				<button type="submit" onClick="rdoChk();">로그인</button>
			</div>
			
		</div>
		
		</form>
	</div>
	<div class="clear"></div>

	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>

