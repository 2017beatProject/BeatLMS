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
<link rel="stylesheet" href="./css/administration_member_detail.css">
<link rel="stylesheet" href="./css/footer.css">

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="./js/address.js"></script>

</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>
<jsp:include page="../template/aside_menu_administration.jsp"></jsp:include>
	

	<!-- content -->
	<div class="content grid_10">
		<img class="imgs" id="topimg" alt="" src="./imgs/menu_topimg1.jpg">
		<div class="layout">
			<div>
				<img alt="" src="">
			</div>
			<p>
				<b>ȸ������</b>
			</p>

			<div id="inside">
			   <div id="insideIn">
				<div id="name">
					<label for="name">�̸�</label> 
					<input type="text" id="userName" name="name">
				</div>
				<div id="birth">
					<label for="birth">�������</label> 
					<input type="date" id="bDay" name="mbirth" />
				</div>
				<div id="number">
					<label for="number">����ó</label> 
					<input type="text" id="phoneFirst" name="mphone">
				</div>
				<div id="mail">
					<label for="mail">e_mail</label> 
					<input type="email" name="mmail" id="email" />
				</div>
				<div id="address">
					<label for="address">�ּ�</label> 
					<input type="text" id="postcode" placeholder="������ȣ" name="maddnum"> 
					<input id="adrbtn" type="button" onclick="execDaumPostcode()" value="������ȣ ã��"><br> 
					<input type="text" id="roadAddress" placeholder="���θ��ּ�" name="maddress"><br>
					<input type="text" id="jibunAddress" placeholder="�����ּ�"> 
					<span id="guide" style="color: #999"></span>
				</div>
				<div id="gender">
					<label for="gender">����</label> <select name="mzen">
						<option value="">����</option>
						<option value="1">����</option>
						<option value="2">����</option>
					</select>
				</div>
				<div id="btn">
					<button type="submit" id="jbtn">����</button>
					<button type="reset" id="cbtn">����</button>
				</div>
			</div>
			</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>