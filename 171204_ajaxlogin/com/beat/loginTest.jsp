<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>ajax 로그인 페이지</title>

<link rel="stylesheet" href="./css/960.css">
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/login.css">

<script type="text/javascript" src="./js/jquery-1.12.4.js"></script>

<script>

	var xhr = new XMLHttpRequest(); 
	var radioNum;
	
	
	function ajaxSend(){
		
	//id/pw/radio 값 post 로 넘김
		xhr.open("Post", "./login.lms?mid="+ encodeURIComponent(document.getElementById("mid").value) + "&mpw=" + encodeURIComponent(document.getElementById("mpw").value)+ "&radio=" + encodeURIComponent(radioNum), true);
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
				
					errField.innerText = "ID와 비밀번호를 확인하세요"; 
			}
			
			
			for(var i=0; i<result.length; i++){
				for(var j=0; j<result[i].length; j++){
					
					if(result[i][1].value==true){
						entireField.innerHTML= result[i][0].value+"님 환영합니다";
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
	    	 document.getElementById("radio").append('(선택하세요)'); 	 
	      } else{
	    	  ajaxSend();
	      }
	    return;	

	}

	
</script>

</head>
<body>



	<!-- content -->
	<div class="content">
		
		
	<!--	<form action="login.lms" method="post">  -->
		<div id="entireForm">
		
			<div>
				<img id="logo" alt="logo" src="./imgs/loginlogo.jpg">
			</div>
			
			<div>
				<span id="errMsg1"></span>
			</div>
			
			<div id="id">
				<label for="id">아이디</label>
				<input type="text" id="mid" />
			</div>
			<div id="pw">
				<label for="password">비밀번호</label> 
				<input type="password" id="mpw" />
			</div>
			<div id="radio">
				<input type="radio" name="radioName" value="1">일반 회원 
				<input type="radio"	name="radioName" value="2">직원
			</div>
			<div id="btn">
				<button type="submit" onClick="rdoChk();">로그인</button>
			</div>
			
		</div>
			
		<!--	</form> -->
	</div>
	<div class="clear"></div>

	
	
</body>
</html>