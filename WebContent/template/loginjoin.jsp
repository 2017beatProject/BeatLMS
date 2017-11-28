<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<script>
	function loginClick(){
		document.getElementById("beforeClick").style.display = "none";
        document.getElementById("afterLoginClick").style.display = "block";
    }
	window.onload = function(){
		document.getElementById("afterLoginClick").style.display = "none";
	}
</script>
<!-- login join  -->
		<div class="grid_12 loginjoin" id="beforeClick">
			<img alt="login" src="../imgs/login.jpg" onclick="loginClick();">
			<img alt="join" src="../imgs/join.jpg" onclick="joinClick();">
		</div>
		<div class="clear"></div>
		<div class="grid_12 loginjoin" id="afterLoginClick">
		    아이디 <input type="text"> <br>
		    암호 <input type="password">
		    <input type="button" value="로그인">
		</div>
</body>
</html>