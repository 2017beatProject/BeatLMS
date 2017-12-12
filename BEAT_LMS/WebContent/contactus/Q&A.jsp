<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/960.css">
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/contactus_Q&A.css">
<link rel="stylesheet" href="./css/footer.css">

<style type="text/css">

</style>
<script>
function mouseOver(obj){
	 obj.style.cursor='pointer';
	 obj.style.backgroundColor="#dddddd";
}

function mouseOut(obj){
	 obj.style.backgroundColor="";
}

</script>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>
	<jsp:include page="../template/aside_menu_contact.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content grid_10">
		<img class="imgs" id="topimg" alt="" src="./imgs/menu_topimg1.jpg">
		<div class="layout">
			<div>
				<img alt="" src="">
			</div>
			<p><b>질문사항</b></p>
			<div id="listlayout">
				<table>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>비고</th>
					</tr>
					<c:forEach items="${list}" var="list">
				
					<tr onmouseover="mouseOver(this);" onmouseout="mouseOut(this);" onclick="location.href='qnadetail.lms?lmsblog=${list.lmsblog}'">
					
						<td>${list.qnaLog}</td>
						<td>${list.qnaTitle }</td>
						<td>${list.mid }</td>
						<td>${list.qnaDate}</td>
						<td></td>
					</tr>
					</c:forEach>
				
				</table>
				<div id="addbtn">
				  <a href="qnaAdd.lms">글쓰기</a>
				</div>
			</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>