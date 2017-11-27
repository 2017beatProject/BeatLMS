<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" href="../css/960.css">
<link rel="stylesheet" href="../css/menu.css">
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/login.css">
<style type="text/css">


</style>
<script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
   <jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>

	<!-- content -->
	<div class="content" >
		<form action="#" method="post">
		<div>
		<img id="logo" alt="logo" src="../imgs/loginlogo.jpg">
		</div>
		<div id="id">
			<label for="id">아이디</label>
			<input type="text" name="id"/>
		</div>
		<div id="pw">
			<label for="password">비밀번호</label>
			<input type="password" name="password"/>
		</div>
		<div id="radio">
		     <input type="radio" name="radio">회원
		     <input type="radio" name="radio">관리자
		</div>
		<div id="btn">
			<button type="submit">로그인</button>
		</div>
	</form>
	</div>
	<div class="clear"></div>
	
	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>

