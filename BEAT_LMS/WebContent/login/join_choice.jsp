<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 페이지</title>
<link rel="stylesheet" href="./css/960.css">
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/join_choice.css">
<link rel="stylesheet" href="./css/footer.css">


<style type="text/css">
</style>
<script type="text/javascript" src="./js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	function layer_open(el) {
		var temp = $('#' + el); //레이어의 id를 temp변수에 저장
		var bg = temp.prev().hasClass('bg'); //dimmed 레이어를 감지하기 위한 boolean 변수
		if (bg) {
			$('.layer').fadeIn();
		} else {
			temp.fadeIn(); //bg 클래스가 없으면 일반레이어로 실행한다.
		}
		// 화면의 중앙에 레이어를 띄운다.
		if (temp.outerHeight() < $(document).height())
			temp.css('margin-top', '-' + temp.outerHeight() / 2 + 'px');
		else
			temp.css('top', '0px');
		if (temp.outerWidth() < $(document).width())
			temp.css('margin-left', '-' + temp.outerWidth() / 2 + 'px');
		else
			temp.css('left', '0px');
		temp.find('a.cbtn').click(function(e) {
			if (bg) {
				$('.layer').fadeOut();
			} else {
				temp.fadeOut(); //'닫기'버튼을 클릭하면 레이어가 사라진다.
			}
			e.preventDefault();
		});
		$('.layer .bg').click(function(e) {
			$('.layer').fadeOut();
			e.preventDefault();
		});
	}
</script>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>

	<!-- content -->
	<div class="content">
	    <div id="pageName"><strong>회원가입</strong></div>
	
		
		
		<div>
			<a href="join.lms"><button type="button" id="join">일반가입</button></a>
			<a href="#" class="btn-example" onclick="layer_open('layer1');return false;">
			<button type="button" id="memberJoin">직원가입</button>
			</a>
			<div id="pageEnd">&nbsp;</div>
			<div id="layer1" class="pop-layer">
				<div class="pop-container">
					<div class="pop-conts">
						<!--content //-->
						<div class="ctxt mb20">
						    <div id="popname"><strong>직원인증</strong></div>
							<div>&nbsp;</div>
							<form action="join_choice.lms" method="post">
							<div>
								<label>&nbsp;&nbsp;사&nbsp;&nbsp;번&nbsp;&nbsp;</label> 
								<input type="text" name="comnum" id="sabun"/> 
								<input type="submit" value="인&nbsp;&nbsp;증" id="check" />
							</div>
							<div>&nbsp;</div>
							<div>
								<label>&nbsp;&nbsp;이&nbsp;&nbsp;름&nbsp;&nbsp;</label> 
								<input type="text" name="comname" id="name"/>
							</div>
							<div>&nbsp;</div>
							<div>
								<label>생년월일</label> <input type="date" name="combirth" id="bDay" />
							</div>
							<div>&nbsp;</div>
							</form>
						</div>

						<div class="btn-r">
							<a href="#" class="cbtn">닫기</a>
						</div>
						<!--// content-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clear"></div>

	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>