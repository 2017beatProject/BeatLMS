<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ȸ������ ������</title>
<link rel="stylesheet" href="./css/960.css">
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/join.css">
<style type="text/css">
</style>
<script type="text/javascript" src="./js/jquery-1.12.4.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="./js/address.js"></script>
<script src="./js/joinValidation.js"></script>
<script>
	var errList = [ "idErr", "pwInputErr", "pwInputReErr", "nameErr",
    			"bDayErr", "genErr", "phoErr", "emErr"];
    var inputList = [ "idInput", "pwInput", "pwInputRe", "userName", "bDay",
    			"gender", "phoneFirst", "email"];    
    var pwToggle;

	/*  �Ʒ����ʹ� ����*/
	var returnTfCount;
	var datakit="";
	var midlist="";
	var mid;
		$(function() {
		resetText();	
		
		$('#id button').on('click',function() {		
			 mid= $('#id').find('input').eq(0).val();
					$.ajax({
						'url' : '/BEAT_LMS-re/target/join.json',
						'type' : 'POST',						
						'error' : function() {
							alert("���");
						},
						'success' : function(data) {
							$("#id span").remove();
							var tf=true;
							datakit=data.list[0].mid;
							
							for(var i=0;i<data.list.length;i++){
								midlist=data.list[i].mid;
								if(mid==midlist){
									tf=false;
									break;
								}
							}// �ݺ������� �ߺ����� �ִ��� �˻�							
							
							if(tf==true){$('<span>�ߺ����� ���� ���̵��Դϴ�</span>').appendTo('#id');
							}else if(tf==false)$('<span>�ߺ��� ���̵��Դϴ�</span>').appendTo('#id');
							}							
						
					});
				});
		
		$('#btn button').on('click',function() {				
			resetText();		
			submitCheck();
			
			var result = false;
			
			if (returnTfCount == 0) {
				result=true;
			}
			
			returnTfCount=0;
			return result;
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
		<form action="join.lms" method="post">
			<div id="logo">
				<img alt="logo" src="./imgs/joinlogo.jpg">
			</div>
			<div id="status">
				<input disabled="disabled" type="radio" name="snum"
					checked="checked">�Ϲ�ȸ��<input type="radio" name="snum"
					disabled="disabled">����
			</div>
			<div id="id">
				<label for="id">���̵�</label> <input type="text" name="mid"
					id="idInput" />
				<button type="button" id="idDoubleCheck">�ߺ�Ȯ��</button>
				<div id="idErr">���̵� �Է����ּ���</div>
			</div>
			<div id="pw">
				<label for="password">��й�ȣ</label> <input type="password" name="mpw"
					id="pwInput" />
				<div id="pwInputErr">��ȣ�� �Է����ּ���</div>
			</div>

			<div id="pw2">
				<label for="password2">��й�ȣ Ȯ��</label> <input type="password"
					id="pwInputRe" name="password2" />
				<button type="button" onclick="showPW();">����</button>
				<div id="pwInputReErr">��ȣ�� Ȯ�����ּ���</div>
			</div>
			<div id="name">
				<label for="name">�̸�</label> <input type="text" id="userName"
					name="name">
				<div id="nameErr">�̸��� �Է����ּ���</div>
			</div>
			<div id="birth">
				<label for="birth">�������</label> <input type="date" id="bDay"
					name="mbirth" />
				<div id="bDayErr">��������� �Է����ּ���</div>
			</div>
			<div id="number">
				<label for="number">����ó</label> <input type="text" id="phoneFirst"
					name="mphone">
				<div id="phoErr">��ȭ��ȣ�� �Է����ּ���</div>
			</div>
			<div id="mail">
				<label for="mail">e_mail</label> <input type="email" name="mmail"
					id="email" />
				<button type="button" id="send">������������</button>
				<div id="emErr">�ùٸ� �̸��� �ּҸ� �Է����ּ���</div>
			</div>
			<div id="address">
				<label for="address">�ּ�</label> <input type="text" id="postcode"
					placeholder="�����ȣ" name="maddnum"> <input type="button"
					onclick="execDaumPostcode()" value="�����ȣ ã��"><br> <input
					type="text" id="roadAddress" placeholder="���θ��ּ�" name="maddress">
				<input type="text" id="jibunAddress" placeholder="�����ּ�"> <span
					id="guide" style="color: #999"></span>
			</div>
			<div id="gender">
				<label for="gender">����</label> <select name="mzen">
					<option value="">������ �������ּ���</option>
					<option value="1">����</option>
					<option value="2">����</option>
				</select>
				<div id="genErr">������ �������ּ���</div>
			</div>
			<div id="btn">
				<button type="submit">����</button>
				<button type="reset">���</button>
			</div>
		</form>
	</div>
	<div class="clear"></div>

	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>