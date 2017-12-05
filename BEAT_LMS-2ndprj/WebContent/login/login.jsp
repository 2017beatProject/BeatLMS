<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>�α��� ������</title>
<link rel="stylesheet" href="./css/960.css">
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/login.css">
<style type="text/css">
</style>
<script type="text/javascript" src="./js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	var xhr = new XMLHttpRequest(); 
	var radioNum;
	
	function ajaxSend(){
		
	//id/pw/radio �� post �� �ѱ�
		xhr.open("Post", "./login.lms?mid="+encodeURIComponent(document.getElementById("mid").value) + "&mpw=" + encodeURIComponent(document.getElementById("mpw").value)+ "&radio=" + encodeURIComponent(radioNum), true);
		xhr.onreadystatechange = loginProcess; 
		xhr.send(null);	
	}
	
	
	function loginProcess(){ 
		
		var entireField = document.getElementById("entireForm");
		var errField = document.getElementById("errMsg1");
		
		errField.innerHTML = "";
		
		if(xhr.readyState == 4 && xhr.status == 200){
			var obj = eval('('+xhr.responseText+')'); 
			var result = obj.result; 

			if(result.length==0){	
					
					errField.innerText = "ID�� ��й�ȣ�� Ȯ���ϼ���"; 
			}
			
			for(var i=0; i<result.length; i++){
				for(var j=0; j<result[i].length; j++){
					
					if(result[i][1].value==true){
						
						
						entireField.innerHTML= sessionID+"�� ȯ���մϴ�";

					}
				}
			}
			
	
		}		
	}
	
	function rdoChk(){
		var check = false;
		var i = 0;
		for( i = 0; i < document.getElementsByName("radioName").length; ++i ){
	       if ( document.getElementsByName("radioName")[i].checked == true ) { 
	    	   radioNum=document.getElementsByName("radioName")[i].value;
	           check = true;
	           break;
	        }
	     }
		
	     if(check == false){  
	    	 document.getElementById("radio").append('(�����ϼ���)'); 	 
	      } else{
	    	  ajaxSend();
	      }
	    return;	

	}

</script>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>

	<!-- content -->
	<div class="content">
	
	<!-- <form action="login.lms" method="post"> -->
		
	<div id="entireForm">
		
			<div>
				<img id="logo" alt="logo" src="./imgs/loginlogo.jpg">
			</div>
			
			<div>
				<span id="errMsg1"></span>
			</div>
			
			<div id="id">
				<label for="id">���̵�</label>
				<input type="text" id="mid" />
			</div>
			<div id="pw">
				<label for="password">��й�ȣ</label> 
				<input type="password" id="mpw" />
			</div>
			<div id="radio">
				<input type="radio" name="radioName" value="1">�Ϲ� ȸ�� 
				<input type="radio"	name="radioName" value="2">����
			</div>
			<div id="btn">
				<button type="submit" onClick="rdoChk();">�α���</button>
			</div>
			
		</div>
		
	<!--  	</form>-->
	</div>
	<div class="clear"></div>

	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>

