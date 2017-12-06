<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 후</title>
<link rel="stylesheet" href="../css/960.css">
<link rel="stylesheet" href="../css/menu.css">
<link rel="stylesheet" href="../css/header.css">

<style type="text/css">
.content{
width: 960px;
height: 450px;
}
button{
 position: relative;
 left: 450px;
 width: 100px;
 height: 40px;
 border-radius:5px; 
 background-color: #2C3E50;
 color: white;
}

</style>
<script type="text/javascript" src="./js/jquery-1.12.4.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
   <jsp:include page="../template/header.jsp"></jsp:include>
   <jsp:include page="../template/logoutmypage.jsp"></jsp:include>
   <jsp:include page="../template/menu.jsp"></jsp:include>
   <!-- content -->
   <div class="content">
     <div>
      <img alt="" src="../imgs/joininfo.jpg">
     </div>
     <div>
       <button>확인</button>
     </div>
   </div>
   <div class="clear"></div>

   <jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>
