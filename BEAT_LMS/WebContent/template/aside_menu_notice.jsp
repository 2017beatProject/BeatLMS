<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- aside -->
	<%
	if(session.getAttribute("snum")==null || session.getAttribute("snum").equals("1") ){//처음 들어왔거나 snum 1이면
	%>	
	<div class="aside grid_2">
		<div id="mainmenu">
			<label><strong>NOTICE</strong></label>
		</div>
		<div id="aside">
			<ul id="menu1">			
				<li><a href="notice.lms">학사공지</a></li>
			</ul>
			<ul id="menu2">
				<li><a href="notice_general.lms">일반공지</a></li>
			</ul>
		</div>
	</div>
	
	<%} else if(session.getAttribute("snum").equals("2")){ //직원이면~ %>
	<div class="aside grid_2">
		<div id="mainmenu">
			<label><strong>NOTICE</strong></label>
		</div>
		<div id="aside">
			<ul id="menu1">			
				<li><a href="notice_admin.lms">학사공지</a></li>
			</ul>
			<ul id="menu2">
				<li><a href="notice_admin_gen.lms">일반공지</a></li>
			</ul>
		</div>
	</div>
	
	<% } %>
	<!-- aside END -->
</body>
</html>