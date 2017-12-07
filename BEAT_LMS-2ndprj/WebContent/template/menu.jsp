<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<body>
<!-- menu 
직원/일반 동일 JSP 사용 메뉴 => about us/Notice
직원/일반 상이 JSP 사용 메뉴 => contact us / lecture~administration

-->
		<div class="menu">
		<div class="grid_2">&nbsp;</div> <!--빈칸-->
			<div class="grid_2">
			<ul>
				<li><a href="#">&nbsp;ABOUT US&nbsp;</a>
					<ul>
						<li><a href="#">조직도</a></li>
						<li><a href="#">강사소개</a></li>
						<li><a href="#">약력</a></li>
					</ul>
				</li>
			</ul>
			</div>
	
	<%
	if(session.getAttribute("snum")==null || session.getAttribute("snum").equals("1") ){//처음 들어왔거나 snum 1이면
		%>		
		
		
		<div class="grid_2">
			<ul>
				<li><a href="#">CONTACT US</a>
					<ul>
						<li><a href="#">상담신청</a></li>
						<li><a href="#">질문사항</a></li>
					</ul>
				</li>
			</ul>
			</div>
		
		
		
		
		
		
	<%} else if(session.getAttribute("snum").equals("2")){ //직원이면~ 
		%>
		
	
		<div class="grid_2">
			<ul>
				<li><a href="#">CONTACT US</a>
					<ul>
						<li><a href="#">상담신청</a></li>
						<li><a href="#">질문사항</a></li>
					</ul>
				</li>
			</ul>
			</div>
	
	
				
	<%}
	%>			
			
			<div class="grid_2">
			<ul>
				<li><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NOTICE&nbsp;</a>
					<ul>
						<li><a href="#">학사공지</a></li>
						<li><a href="#">일반공지</a></li>
					</ul>
				</li>
			</ul>
			</div>
			
			
	<%
	if(session.getAttribute("snum")==null || session.getAttribute("snum").equals("1") ){//처음 들어왔거나 snum 1이면
		%>			
		
			<div class="grid_2">
			<ul>
				<li><a href="#">LECTURE</a>
					<ul>
						<li><a href="#">강의소개</a></li>
						<li><a href="#">수강신청</a></li>
					</ul>
				</li>
			</ul>
			</div>
		
	<%} else if(session.getAttribute("snum").equals("2")){ //직원이면~ 
	%>
		
		<div class="grid_2">
			<ul>
				<li><a href="#">ADMINISTRATION</a>
					<ul>
						<li><a href="mnglist.lms">회원관리</a></li>
						<li><a href="#">강의관리</a></li>
						<li><a href="#">상담관리</a></li>
						<li><a href="#">수강생관리</a></li>
					</ul>
				</li>
			</ul>
			</div>
		
			
		<%} 
		%>			
			<div class="grid_2">&nbsp;</div> <!--빈칸-->


		</div>
		<div class="clear"></div>
</body>
</html>