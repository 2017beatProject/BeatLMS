<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style type="text/css"></style>


<script type="text/javascript" src="http://127.0.0.1:8983/app/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="http://127.0.0.1:8983/app/js/jquery-ui-
1.12.1.min.js"></script>
<script type="text/javascript" src="http://127.0.0.1:8983/app/js/rns.search-1.0.min.js"></script>

<script type="text/javascript">
var rnsSearch = new rnsSearch({
	searchServerUrl : "http://127.0.0.1:8983",
	width : 500,
	height : 500,
	oncomplete : function(data) {
	$(opener.location).attr("href", "javascript:fn_setJuso(" + JSON.stringify(data) + ");");
	},
	}).op
</script>

<title>Insert title here</title>
</head>
<body>
	
	<h1> Join Page </h1>
	
	
	
</body>
</html>