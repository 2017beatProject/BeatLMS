<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<title>Insert title here</title>
<link rel="stylesheet" href="./css/960.css">
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/aboutus.css">
<link rel="stylesheet" href="./css/footer.css">
<style type="text/css">
#sideMenu {
	position: relative;
}

#aside ul {
	position: relative;
	text-align: center;
	margin-left: 40px;
	padding: 0px;
}

#aside>ul li {
	position: relative;
	list-style: none;
	left: -40px;
	width: 140px;
	height: 50px;
}

#aside>ul>li>div {
	position: relative;
	text-decoration: none;
	top: 15px;
	color: black;
}

#mainmenu {
	text-align: center;
	margin-top: 40px;
	margin-bottom: 40px;
}

#menu1>li {
	background-color: orange;
	text-align: center;
}

#menu2>li {
	position: relative;
	top: -16px;
}

#menu3>li {
	position: relative;
	top: -32px;
}

.aside {
	background-color: bisque;
	height: 300px;
	width: 100%;
	margin-left: 0px;
	border-bottom: 5px solid orange;
}

.content {
	position: relative;
	/* background-color: azure; */
	width: 820px;
}

/*------------------------------------------------  */

</style>
<script>
	var div1Loc;
	var div2Loc;
	var div3Loc;
	var offset;
	var height;

	// get방식 가져오기
	var getParameters = function(paramName) {
		// 리턴값을 위한 변수 선언
		var returnValue;

		// 현재 URL 가져오기
		var url = location.href;

		// get 파라미터 값을 가져올 수 있는 ? 를 기점으로 slice 한 후 split 으로 나눔
		var parameters = (url.slice(url.indexOf('?') + 1, url.length))
				.split('&');

		// 나누어진 값의 비교를 통해 paramName 으로 요청된 데이터의 값만 return
		for (var i = 0; i < parameters.length; i++) {
			var varName = parameters[i].split('=')[0];
			if (varName.toUpperCase() == paramName.toUpperCase()) {
				returnValue = parameters[i].split('=')[1];
				return decodeURIComponent(returnValue);
			}
		}
	};

	// 링크 받고 들어온 위치로 이동

	function imgSize(seq) {
		for (var i = 1; i <= 3; i++) {
			$('#menu' + i + ">li").css('background-color', 'bisque');
		}
		$('#menu' + seq + ">li").css('background-color', 'orange');
	}

	function imgOpc() {
		height = $(document).scrollTop();
		height += 10;
		if (height > div1Loc && height < div2Loc) {
			imgSize(1);
		}
		if (height > div2Loc && height < div3Loc) {
			imgSize(2);
		}
		if (height > div3Loc) {
			imgSize(3);
		}
	}

	function fnMove(seq) {
		div1Loc = $("#div1").offset().top - 10;
		div2Loc = $("#div2").offset().top - 10;
		div3Loc = $("#div3").offset().top - 10;
		$('html, body').animate({
			scrollTop : $("#div" + seq).offset().top - 10
		}, 400);
	}

	$(document).ready(function() {
		imgSize(1);
		imgOpc();
		fnMove(getParameters('idx'));
	});

	$(window).scroll(function() {
		imgOpc();

		setTimeout(function() {
			$("#sideMenu").animate({
				top : $(document).scrollTop()
			}, 10);
		}, 10);
	});
</script>
</head>

<body>
	<div id="div0"></div>
	<!-- 타이밍 버그수정 도저히 못해먹겠다, 그냥 하나 만들자 아오 -->
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>

	<!-- aside -->
	<div class="aside grid_2" id="sideMenu">
		<div id="mainmenu">
			<label><strong>ABOUT<br>US</strong></label>
		</div>
		<div id="aside">
			<ul id="menu1" onclick="fnMove('1')">
				<li>
					<div>조직도</div>
				</li>
			</ul>
			<ul id="menu2" onclick="fnMove('2')">
				<li>
					<div>강사소개</div>
				</li>
			</ul>
			<ul id="menu3" onclick="fnMove('3')">
				<li>
					<div>회사현역</div>
				</li>
			</ul>
		</div>
	</div>
	<!-- aside END -->


	<!-- content -->
	<div class="content grid_10">
	<img class="imgs" id="topimg" alt="" src="./imgs/menu_topimg1.jpg">
		<div class="layout">
			<div id="div1">
				<p id="firstP">
					<b>조직도</b>
				</p>
				<div>
					<img alt="" src="./imgs/organization.jpg">
				</div>
			</div>
			<div id="div2">
				<p>
					<b>강사소개</b>
				</p>
				<div>
					<img alt="" src="./imgs/teacher.jpg">
				</div>
			</div>
			<div id="div3">
			<p>
			  <b>회사연혁</b>
			</p>
			<div id="history">
				<img alt="" src="./imgs/history.jpg">
			</div>
			</div>

		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>

</html>
