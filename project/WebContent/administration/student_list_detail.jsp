<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/960.css">
<link rel="stylesheet" href="../css/menu.css">
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/administration_student_list_detail.css">
<link rel="stylesheet" href="../css/footer.css">

</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/admenu.jsp"></jsp:include>

	<!-- aside -->
	<div class="aside grid_2">
		<div id="mainmenu">
			<label><strong>ADMINI<br>STRATION
			</strong></label>
		</div>
		<div id="aside">
			<ul id="menu1">
				<li><a href="#">ȸ������</a></li>
			</ul>
			<ul id="menu2">
				<li><a href="#">���ǰ���</a></li>
			</ul>
			<ul id="menu3">
				<li><a href="#">������</a></li>
			</ul>
			<ul id="menu4">
				<li><a href="#">����������</a></li>
			</ul>
		</div>
	</div>
	<!-- aside END -->


	<!-- content -->
	<div class="content grid_10">
		<img class="imgs" id="topimg" alt="" src="../imgs/menu_topimg1.jpg">
		<div class="layout">
			<div>
				<img alt="" src="">
			</div>
			<p>
				<b>����������</b>
			</p>
			
			<div id="stuinfo">
				<div>
					<label>�̸�</label><input type="text" id="name" /> 
					<label>���̵�</label><input type="text" id="id"/> 
					<label>����ó</label><input type="text" id="number"/>
				</div>
				<div>
					<label>�������</label><input type="date" id="bDay"/>
					<label>e-mail</label><input type="email" id="mail"/>
					<label>����</label><input type="text" id="gender"/>
				</div>
				<div>
					<label>�ּ�</label><input type="text" id="adress"/>
				</div>
			</div>
			<!---------------------------------------------------------->
            <p>
				<b>��������</b>
			</p>
			<div>
			  <table id="lecture">
					<tr>
						<th>���Ǹ�</th>
						<th>������</th>
						<th>����</th>
						<th>�Ⱓ</th>
					</tr>
					<tr>
						<td>���Ǹ�</td>
						<td>������</td>
						<td>����</td>
						<td>�Ⱓ</td>
					</tr>
			  </table>
			</div>
			<!---------------------------------------------------------->
			 <p>
				<b>����</b>
			</p>
			<div>
			    <table id="grade">
					<tr>
						<th>JAVA</th>
						<th>WEB</th>
						<th>DB</th>
						<th>���</th>
					</tr>
					<tr>
						<td>1</td>
						<td>1</td>
						<td>1</td>
						<td>1</td>
					</tr>
			  </table>
       		  <a href="" id="edbtn1">��������</a>
			</div>
			<!---------------------------------------------------------->
			<p>
				<b>�⼮</b>
			</p>
			
			<div>
			    <table id="attendance">
					<tr>
						<th>�⼮</th>
						<th>�Ἦ</th>
						<th>����</th>
						<th>����</th>
						<th>�⼮��</th>
					</tr>
					<tr>
						<td>1</td>
						<td>1</td>
						<td>1</td>
						<td>1</td>
						<td>1</td>
					</tr>
			  </table>
       		    <a href=""id="edbtn2">�⼮����</a>
			</div>
			

		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>