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
			
	var loginResult, err;
	
	$(function(){
		
		loginResult = <%=request.getAttribute("msg")%>
		logintf= <%=session.getAttribute("result")%>
			
		err = document.getElementById('errMsg1');
		
		err.innerText='로딩때는 작동 함';
		alert(loginResult+""+logintf);
		
	
	  $('form').submit(function(e){
	  
	  if(loginResult==null){ 
		  e.preventDefault();
		  err.innerText="널값들어옴!=처음 로그인창뜰때.."; 
		  
	  }else if(loginResult.equals("성공")){
		
		  // $(this).unbind('submit').submit(); 
		 
	  }else if(loginResult.equals("실패")){
		  e.preventDefault();
		  err.innerText="ID와 비밀번호를 확인하세요"; //여기; 처리 안됨
		 
  		
	  }else{
		  alert(msg);
	  }
	  });
		 
	  
	  
	});
	
	
	
	
</script>
</head>
<body >

   <jsp:include page="../template/header.jsp"></jsp:include>
   
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	
	<jsp:include page="../template/menu.jsp"></jsp:include>

	<!-- content -->
	<div class="content">
	
	<p>${pageContext.request.contextPath}</p>
	<p><%=request.getAttribute("msg")%></p>
	<p><%= session.getAttribute("result")%></p>
	<p><%= session.getAttribute("id")%></p>
	
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
		
		<div>
		<span id="errMsg1"></span>
		</div>
		
	</form>
	</div>
	<div class="clear"></div>
	
	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>

