<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
	<script type="text/javascript">
	

	function toJoinPage(){
		alert("회원가입 페이지로 뷰 전환");
	}
	
	
	</script>
</head>
<body>
<!-- login join  -->

		<div class="grid_12 loginjoin">
		
	<!-- <form action="#" method="post">
		<div>
			<label for ="ID">ID</label>
			<input type="text" name="id"/>
		</div>
		<div>	
			<label for ="PW">PW</label>
			<input type="text" name="pw"/>
		</div>
		<div>	
			 
			<input type="image" src="../imgs/login.jpg" onClick="this.disabled=true; this.form.submit();"/>
			<input type="image" src="../imgs/join.jpg" onClick="toJoinPage(); return false;"/>
			
		 		
			 input type을 이미지로 서브밋할 때 get 방식으로 값을 받아보면 
			url에 로그인 버튼이 클릭된 좌표값으로 xy값이 같이 들어감
			onClick="this.disabled=true; this.form.submit();" 로 해결 
			
			 
		</div>	
		</form>
			 -->
			 
		<a href="login.test"><img alt="login" src="./imgs/login.jpg"></a> 
			<a href="#"><img alt="join" src="./imgs/join.jpg"></a>
			
		 
		</div>
		
		<div class="clear"></div>
</body>
</html>