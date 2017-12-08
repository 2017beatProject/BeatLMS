<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/960.css">
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/join.css">
<script type="text/javascript" src="./js/jquery-1.12.4.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {

		<%request.setAttribute("confirm", "success");%>
		
		$('button').on('click', function() {
			window.close();

		});
	});
</script>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>
	<form action="target/mailConfirm.lms"></form>
	<div>
		<h1>메일인증인 확인되었습니다</h1>
		<p>확인버튼을 누르시면 창이 닫힙니다</p>
		<button>확인</button>
	</div>



	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>