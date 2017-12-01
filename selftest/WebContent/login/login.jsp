<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지</title>

<link rel="stylesheet" href="./css/960.css">
<link rel="stylesheet" href="./css/menu.css">

<style type="text/css">
.logo {
	position: relative;
	left: 280px;
}

.loginjoin {
	position: relative;
	left: 840px;
	height: 52px;
}

#menu {
	background-image: url("./imgs/menuimg.jpg");
	height: 70px;
}

</style>
<script type="text/javascript" src="./js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	
	//실패시 리퀘스트 셋어트뷰트에서 보낸 msg가 "실패"라고 가정
			
	var loginResult, logintf, err;
	

	var er = function(){
		err.innerText='ID와 비밀번호를 확인하세요';
	}
	
	
	$(function(){
		
		loginResult = '<%=request.getAttribute("msg") %>';
		logintf= '<%=session.getAttribute("result")%>';
			
		err = document.getElementById('errMsg1');
		
		if(loginResult=="failed"){
		  	er();
		}
	});
	
	
</script>
</head>
<body >

   <jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>	
	<jsp:include page="../template/menu.jsp"></jsp:include>

	<!-- content -->
	<div class="content">
	
	
		<div>
		<span id="errMsg1"></span>
		</div>
		
		<form action="login.test" method="post">
		
		<div>
			<label for="id">아이디</label>
			<input type="text" name="id"/>
		</div>
		<div>
			<label for="pw">비밀번호</label>
			<input type="text" name="pw"/>
		</div>
 <div>
		     <input type="radio" name="choice">회원
		     <input type="radio" name="choice">관리자
		</div> 
		
		
		<div>
			<button type="submit">로그인</button>
		</div>
		
	
	</form>
	</div>
	<div class="clear"></div>
	
	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>

