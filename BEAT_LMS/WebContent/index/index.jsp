<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>일반메인페이지</title>
<link rel="stylesheet" href="./css/960.css">
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/jquery.bxslider.css">
<style type="text/css">

.bxslider>div>img {
	width: 960px;
}
.bx-next,.bx-prev{
 visibility: hidden;
}

.bx-wrapper:HOVER .bx-next{
visibility: visible;
}
.bx-wrapper:HOVER .bx-prev{
visibility: visible;
}


</style>
<script type="text/javascript" src="./js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="./js/jquery.bxslider.js"></script>
<script type="text/javascript">
	$(function() {
		$('.bxslider').bxSlider({
			'auto' : true,
			'mode' : 'fade',
			'pause' : '5000',
			'pager':'true'
		   
		});
	});
</script>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>

	<!-- content -->
	<div class="content">
		<div class="bxslider">
			<div>
				<img alt="bx01" src="./imgs/bx_01.jpg" />
			</div>
			<div>
				<img alt="bx02" src="./imgs/bx_02.jpg" />
			</div>
			<div>
				<img alt="bx03" src="./imgs/bx_03.jpg" />
			</div>
			<div>
				<img alt="bx04" src="./imgs/bx_04.jpg" />
			</div>
			<div>
				<img alt="bx05" src="./imgs/bx_05.jpg" />
			</div>
		</div>
	</div>
	<div class="clear"></div>
	
	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>






