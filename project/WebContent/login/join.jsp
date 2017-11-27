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
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include> 

	<!-- content -->
	<div class="content">
		<form action="#" method="post">
		<div id="logo">
		<img alt="logo" src="../imgs/joinlogo.jpg">
		</div>
		<div id="id">
			<label for="id">아이디</label>
			<input type="text" name="id"/>
		</div>
		<div id="pw">
			<label for="password">비밀번호</label>
			<input type="password" name="password"/>
		</div>
		<div id="pw2">
			<label for="password2">비밀번호 확인</label>
			<input type="password" name="password2"/>
		</div>
		<div id="name">
			<label for="name">이름</label>
			<input type="text" name="name"/>
		</div>
		<div id="birth">
			<label for="birth">생년월일</label>
			<input type="text" name="birth"/>
		</div>
		<div id="number">
			<label for="number">연락처</label>
			<input type="text" name="number"/>
		</div>
		<div id="mail">
			<label for="mail">e_mail</label>
			<input type="text" name="mail"/>
		</div>	
		<div id="address">
			<label for="address">주소</label>
			<input type="text" name="address"/>
		</div>	
		<div id="radio">
		     <label for="gender">성별</label>
		     <input type="radio" name="radio">남
		     <input type="radio" name="radio">녀
		</div>
		<div id="radio2">
		     <label for="group">분류</label>
		     <input type="radio" name="radio2">회원
		     <input type="radio" name="radio2">관리자
		</div>
		<div id="btn">
			<button type="submit">회원가입</button>
		</div>
		</form>
	</div>
	<div class="clear"></div>

	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>

