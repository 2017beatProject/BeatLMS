<%@ page language="java" contentType="text/html; charset=EUC-KR"
<<<<<<< HEAD
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>�ȳ�</h1>

<form action="list.do">
<button>��ư</button>

</form>	
</body>
</html>
=======
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>�Ϲݸ���������</title>
<link rel="stylesheet" href="css/960.css">
<link rel="stylesheet" href="css/menu.css">
<style type="text/css">
.logo {
	position: relative;
	left: 280px;
}

.loginjoin {
	position: relative;
	left: 840px;
	height: 52px;
}

#menu {
	background-image: url("imgs/menuimg.jpg");
	height: 70px;
}

.bxslider>div>img {
	width: 960px;
}

.bxslider {
	z-index: -1;
}

.bx-next {
	background-image: url("imgs/r.psd");
}
</style>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="js/jquery.bxslider.js"></script>
<script type="text/javascript">
	$(function() {
		$('.bxslider').bxSlider({
			'auto' : true,
			'mode' : 'fade',
			'pause' : '5000'

		});
	});
</script>
</head>
<body>
	<jsp:include page="template/header.jsp"></jsp:include>
	<jsp:include page="template/loginjoin.jsp"></jsp:include>
	<jsp:include page="template/menu.jsp"></jsp:include>

	<!-- content -->
	<div class="content">
		<div class="bxslider">
			<div>
				<img alt="bx01" src="imgs/bx01.jpg" />
			</div>
			<div>
				<img alt="bx02" src="imgs/bx02.jpg" />
			</div>
			<div>
				<img alt="bx03" src="imgs/bx03.jpg" />
			</div>
			<div>
				<img alt="bx04" src="imgs/bx04.jpg" />
			</div>
		</div>
	</div>
	<div class="clear"></div>
	
	<jsp:include page="template/footer.jsp"></jsp:include>
</body>
</html>






>>>>>>> origin/Lee
