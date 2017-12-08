<%@page import="com.beat.Management.model.OneMemManagementDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 정보 수정 페이지-수정은 포스트로 받자...</title>

<link rel="stylesheet" href="./css/960.css">
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/login.css">

<style type="text/css">
</style>
<script type="text/javascript" src="./js/jquery-1.12.4.js"></script>
</head>
<body>


	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>

	<form action="oneMemEditUpdate.lms" method="post">
	
<%
	ArrayList<OneMemManagementDto> oneList = (ArrayList<OneMemManagementDto>)request.getAttribute("listForEdit");
for(OneMemManagementDto bean : oneList){
%>
	<table>
		<tr>
			<th>mnum</th>
			<td><input type="text" name = "mnum" value="<%=bean.getmNum() %>" readonly="readonly"/></td>
		</tr>
		<tr>
			<th>snum</th>
			<td><input type="text" name = "snum" value="<%=bean.getsNum() %>" readonly="readonly"/></td>	
		</tr>
		<tr>
			<th>mid</th>
			<td><input type="text" name = "mid" value="<%=bean.getmId() %>" readonly="readonly"/></td>
		</tr>
		<tr>
			<th>mname</th>
			<td><input type="text" name = "mname" value="<%=bean.getmName() %>"/></td>
		</tr>
		<tr>
			<th>mbirth</th>
			<td><input type="text" name = "mbirth" value="<%=bean.getmBirth() %>"/></td>
		</tr>
		<tr>
			<th>zen</th>
			<td><input type="text" name = "mzen" value="<%=bean.getmZen() %>"/></td>
		</tr>
		<tr>
			<th>phone</th>
			<td><input type="text" name = "mphone" value="<%=bean.getmPhone()%>"/></td>
		</tr>
		<tr>
			<th>mmail</th>
			<td><input type="text" name = "mmail" value="<%=bean.getmMail() %>"/></td>
		</tr>
		<tr>
			<th>maddress</th>
			<td><input type="text" name = "maddress" value="<%=bean.getMAddress() %>"/></td>
		</tr>
		<tr>
			<th>maddnum</th>
			<td><input type="text" name = "maddnum" value="<%=bean.getmAddnum()%>"/></td>
		</tr>
		<tr>
			<th>joindate</th>
			<td><input type="text" name = "joindate" value="<%=bean.getJoinDate() %>"/></td>
		</tr>
		<tr>
			<th>team</th>
			<td><input type="text" name = "team" value="<%=bean.getTeam()%>"readonly="readonly"/></td>
		</tr>
<%
}
%>	
	</table>
		<p>여기 밸리데이션 어떠케...</p>
		<p>
			<input type="submit" value="수정 완료">
			<input type="reset" value="취소">
		</p>
		</form>
		
	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>