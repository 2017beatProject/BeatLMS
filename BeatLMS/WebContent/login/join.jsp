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

<script>
        var errList = [
            "idErr",
            "pwInputErr",
            "pwInputReErr",
            "nameErr",
            "bDayErr",
            "genErr",
            "phoErr",
            "emErr",
            "loErr"
        ];
        var inputList = [
            "idInput",
            "pwInput",
            "pwInputRe",
            "userName",
            "bDay",
            "gender",
            "phoneFirst",
            "email",
            "location"
        ];
        var returnTfCount;
        var pwToggle;
        function submitButton() {
            submitCheck();
            if (returnTfCount > 0) {
                location.href = "join.lms";
            }
        }
        function submitCheck() {
            returnTfCount = 0;
            for (var j = 0; j < inputList.length; j++) {
                if (document.getElementById(inputList[j]).value == "") {
                    document.getElementById(errList[j]).style.opacity = "1";
                    document.getElementById(errList[j]).style.color = "deeppink";
                    //document.getElementById(inputList[j]).style.backgroundColor = "deeppink";
                    returnTfCount++;
                }
            }
            
            if (document.getElementById("pwInput").value != document.getElementById("pwInputRe").value) {
                document.getElementById("pwInputReErr").style.opacity = "1";
                document.getElementById("pwInputReErr").style.color = "deeppink";
                returnTfCount++;
            }
        }
        function resetText() {
            for (var i = 0; i < errList.length; i++) {
                document.getElementById(errList[i]).style.opacity = "0";
                //document.getElementById(inputList[i]).style.backgroundColor = "white";
            }
        }
        function showPW() {
            pwToggle = !pwToggle;
            if (pwToggle) {
                document.getElementById("pwInput").setAttribute('type', 'text');
                document.getElementById("pwInputRe").setAttribute('type', 'text');
            } else {
                document.getElementById("pwInput").setAttribute('type', 'password');
                document.getElementById("pwInputRe").setAttribute('type', 'password');
            }
        }
        window.onload = function() {
            resetText();
        }
    </script>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include> 

	<!-- content -->
	<div class="content">
		<form name="join" action="join.lms" method="post">
		<div id="logo">
		<img alt="logo" src="./imgs/joinlogo.jpg">
		</div>
		<div id="id">
			<label for="id">���̵�</label>
			<input type="text" name="id" id="idInput"/>
			<input type="submit" value="�ߺ�Ȯ��" id="idCheck">
			<div id="idErr">���̵� �Է����ּ���</div>
		</div>
		<div id="pw">
			<label for="password">��й�ȣ</label>
			<input type="password" name="password" id="pwInput"/>
        	<div id="pwInputErr">��ȣ�� �Է����ּ���</div>
		</div>
		
		<div id="pw2">
			<label for="password2">��й�ȣ Ȯ��</label>
			<input type="password" id="pwInputRe" name="password2"/> 
			<input type="button" value="����" onclick="showPW();">
        	<div id="pwInputReErr">��ȣ�� Ȯ�����ּ���</div>
		</div>
		<div id="name">
			<label for="name">�̸�</label>
			<input type="text" id="userName" name="name">
			<div id="nameErr">�̸��� �Է����ּ���</div>
		</div>
		<div id="birth">
			<label for="birth">�������</label>
			<input type="date" id="bDay" name="birth"/>
			<div id="bDayErr">��������� �Է����ּ���</div>
		</div>
		<div id="number">
			<label for="number">����ó</label>
			<input type="text" id="phoneFirst" name="number">
        	<div id="phoErr">��ȭ��ȣ�� �Է����ּ���</div>
		</div>
		<div id="mail">
			<label for="mail">e_mail</label>
			<input type="email" name="email" id="email"/>
			<input type="submit" value="������������" id="send"/>
        	<div id="emErr">�ùٸ� �̸��� �ּҸ� �Է����ּ���</div>
		</div>	
		<div id="address">
			<label for="address">�ּ�</label>
<input type="text" id="sample4_postcode" placeholder="�����ȣ">
<input type="button" onclick="sample4_execDaumPostcode()" value="�����ȣ ã��"><br>
<input type="text" id="sample4_roadAddress" placeholder="���θ��ּ�">
<input type="text" id="sample4_jibunAddress" placeholder="�����ּ�">
<span id="guide" style="color:#999"></span>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //�� ���������� ���θ� �ּ� ǥ�� ��Ŀ� ���� ���ɿ� ����, �������� �����͸� �����Ͽ� �ùٸ� �ּҸ� �����ϴ� ����� �����մϴ�.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.
                // ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
                // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                var fullRoadAddr = data.roadAddress; // ���θ� �ּ� ����
                var extraRoadAddr = ''; // ���θ� ������ �ּ� ����
                // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
                // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
                if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // ���θ�, ���� ������ �ּҰ� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // ���θ�, ���� �ּ��� ������ ���� �ش� ������ �ּҸ� �߰��Ѵ�.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
                // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                document.getElementById('sample4_postcode').value = data.zonecode; //5�ڸ� �������ȣ ���
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;
                // ����ڰ� '���� ����'�� Ŭ���� ���, ���� �ּҶ�� ǥ�ø� ���ش�.
                if(data.autoRoadAddress) {
                    //����Ǵ� ���θ� �ּҿ� ������ �ּҸ� �߰��Ѵ�.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(���� ���θ� �ּ� : ' + expRoadAddr + ')';
                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(���� ���� �ּ� : ' + expJibunAddr + ')';
                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
    </script>
        	
		</div>	
		<div id="radio">
		    <label for="gender">����</label>
			<select name="gender" id="gender" > 
          		<option value="">������ �������ּ���</option>
           		<option value="1">����</option>
           		<option value="2">����</option>           		
       		</select>
       		<div id="genErr">������ �������ּ���</div>
		</div>
		<div id="btn">
			<input type="button" id="submit" value="����"/>
        	<input type="reset" id="cancel" value="���" onclick="resetText();"/>
		</div>
		</form>
	</div>
	<div class="clear"></div>

	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>