<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<javascript></javascript>
	
<!-- login join  -->

		<div class="grid_12 loginjoin">

			<% if(session.getAttribute("mid")==null || session.getAttribute("mid").equals("guest")){ %>
				<a href="./login.lms"><img alt="login" src="./imgs/login.jpg"></a> 
				<a href="./join.lms"><img alt="join" src="./imgs/join.jpg"></a>
			
			<%} else { 
				session.setMaxInactiveInterval(30*60);%>
				<a href="./logout.lms"><img alt="logout" src="./imgs/logout.jpg"></a> 
				<a href="#"><img alt="mypage" src="./imgs/mypage.jpg"></a>
						
			<%} %>
			
	</div>	
		<div class="clear"></div>		
</body>
</html>