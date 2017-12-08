<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/960.css">
<link rel="stylesheet" href="../css/menu.css">
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/lecture_detail.css">
<link rel="stylesheet" href="../css/footer.css">
<style type="text/css">

</style>
<script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
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
		
			temp.css('top', '150px');
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
	<jsp:include page="../template/aside_menu_lecture.jsp"></jsp:include>

	

	<!-- content -->
	<div class="content grid_10">
		<img class="imgs" id="topimg" alt="" src="../imgs/menu_topimg1.jpg">
		<div class="layout">
			<p>
				<b>과정소개</b>
			</p>
			<div>
				<img class="imgs" alt="" src="../imgs/info_img1.jpg">
				<!-- 이미지크기 400/223 픽셀 -->
				
				<table>
					<tr>
						<th colspan="2">JAVA개발자 양성과정</th>
					</tr>
					<tr>
						<td>강의장</td>
						<td>강의장1</td>
					</tr>
					<tr>
						<td>강&nbsp;&nbsp;사</td>
						<td>강사1</td>
					</tr>
					<tr>
						<td>강의기간</td>
						<td>2018-01-01~2018-01-01</td>
					</tr>
					<tr>
						<td>강의시간</td>
						<td>09:00~18:00</td>
					</tr>
					<tr>
						<td>수강인원</td>
						<td>20명</td>
					</tr>
					<tr>
						<td>교육문의</td>
						<td>0000-0000</td>
					</tr>

				</table>
			</div>
			<div class="info">
				<div class="btn">
					<a href="#" class="detailPop"
						onclick="layer_open('layer');return false;">
						<button type="button" id="applybtn">수강신청</button>
					</a>
				</div>
				<div id="layer" class="pop-layer">
					<div class="pop-container">
						<div class="pop-conts">
							<!--content //-->
							<div class="ctxt mb20">
								<div id="">
									수강신청 되었습니다. <a href="#" class="cbtn">닫기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<p>
					<b>과정목표</b>
				</p>
				<br> SI, ERP 및 CRM프로그래밍 개발자, 웹 프로그래밍 개발자 및 웹 컴포넌트 개발자 객체 지향 언어인
				JAVA를 이해하고, 자바와 오라클(DBMS)을 일종의 ORM 프레임워크인 IBATIS와 MYBATIS로 연동 할 수 있는
				기술을 습득하고 MAVEN을 기반으로한 SPRING 프레임워크를 이해하여 전자 정부 프레임워크의 화면처리, 데이터처리,
				공통 컴포넌트 사용등을 실무에 적용할 수 있도록 프로젝트를 통해 습득한다.<br> 공공사업에 적용되는 표준
				프레임워크인 전자 정부 프레임워크의 개념과 특징을 이해하고 오픈 소스기반의 범용화되고, 공개 된 기술을 활용하여 특정
				사업자에 종속되지 않는 시스템을 개발 할 수 있고 현업에 바로 투입 될 수 있는 실무형 개발자를 양성할 수 있는 기술을
				습득하는 것을 목표로 한다.<br> 수료생들이 취업할 SI업체 혹은 S/W개발 전문 기업의 최근 요구사항을 반영,
				전자정부 프레임워크와 Spring 프레임워크를 실무형프로젝트를 중심으로 학습하고 또한 SM업체로의 취업을 대비, 기존에
				구축된 웹 어플리케이션의 유지 보수를 위한 Struts 프레임워크를 학습하여 현업에 바로 적응이 가능한 실무형 개발자
				양성을 목표로 한다.<br> 훈련과정 수료 후 본 과정에서 습득한 자바 프로그램 개발 능력을 활용하여 SI,
				ERP 및 CRM프로그래밍 개발자나 웹 프로그래밍 개발자 및 웹 컴포넌트 개발자로 취업할 수 있다.<br>
				<p>
					<b>수강혜택</b>
				</p>
				<br> <img alt="" src="../imgs/info_img2.jpg"> <br>
				<p>
					<b>수강절차</b>
				</p>
				<br> <img alt="" src="../imgs/info_img3.jpg">

			</div>
		</div>
	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>