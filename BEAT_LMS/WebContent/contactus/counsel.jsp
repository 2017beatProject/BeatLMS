<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/960.css">
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/contactus_counsel.css">
<link rel="stylesheet" href="./css/footer.css">

<style type="text/css">
</style>
<script src="./js/jquery-1.12.4.js"></script>
<script>
	$(function() {

		$('.content textarea').keyup(function(e) {
			var content = $(this).eq(0).val();
			$('#counter').html(content.length + '/500');
		});
		$('.content textarea').keyup();
		$('#counter').css({
			'background' : 'rgba(255,0,0,0.5)',
			'border-radius' : '0.5em',
			'padding' : '0.5em 0.5em',
			'font-size' : '0.75em'
		});

		$('#addbtn').on('click', function() {

			/* alert($('.content textarea').eq(0).val()); */
			$('.conErr').remove();
			var result = true;
			var content = $('.content textarea').eq(0).val();
			if (content == "") {
				result = false;
				$('<span class="conErr">내용을 입력하세요</span>').appendTo('#addbtn');
				$('.conErr').css({
					'color' : 'deeppink',
					'font-size' : '14px'
				});

			}

			return result;
		});

	});
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
			<p>
				<b>상담신청</b>
			</p>
			<div id="contentlayout">
				<div id="insidelayout">
					<form action="counsel_apply.lms" method="post">
						<div class="title">
							<label>작성자</label> <input type="text" id="mid"
								readonly="readonly" value="${mid}">
						</div>
						<div class="contents">
							<textarea rows="" cols="" id="contents" maxlength="500" name="content"></textarea>
							<span id="counter">###</span>
						</div>
						<div id="addbtn">
							<button type="submit">신청</button>
						</div>
					</form>
				</div>

			</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>