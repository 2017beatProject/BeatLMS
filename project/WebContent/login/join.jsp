<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ȸ������ ������</title>
<link rel="stylesheet" href="../css/960.css">
<link rel="stylesheet" href="../css/menu.css">
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/join.css">
<style type="text/css">

</style>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include> 

	<!-- content -->
	<div class="content">
		<form action="#" method="post">
		<div id="logo">
		<img alt="logo" src="../imgs/joinlogo.jpg">
		</div>
		<div id="id">
			<label for="id">���̵�</label>
			<input type="text" name="id"/>
		</div>
		<div id="pw">
			<label for="password">��й�ȣ</label>
			<input type="password" name="password"/>
		</div>
		<div id="pw2">
			<label for="password2">��й�ȣ Ȯ��</label>
			<input type="password" name="password2"/>
		</div>
		<div id="name">
			<label for="name">�̸�</label>
			<input type="text" name="name"/>
		</div>
		<div id="birth">
			<label for="birth">�������</label>
			<input type="text" name="birth"/>
		</div>
		<div id="number">
			<label for="number">����ó</label>
			<input type="text" name="number"/>
		</div>
		<div id="mail">
			<label for="mail">e_mail</label>
			<input type="text" name="mail"/>
		</div>	
		<div id="address">
			<label for="address">�ּ�</label>
			<input type="text" name="address"/>
		</div>	
		<div id="radio">
		     <label for="gender">����</label>
		     <input type="radio" name="radio">��
		     <input type="radio" name="radio">��
		</div>
		<div id="radio2">
		     <label for="group">�з�</label>
		     <input type="radio" name="radio2">ȸ��
		     <input type="radio" name="radio2">������
		</div>
		<div id="btn">
			<button type="submit">ȸ������</button>
		</div>
		</form>
	</div>
	<div class="clear"></div>

	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>

