<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.util.*,java.io.*,javax.mail.*,javax.mail.internet.*,javax.activation.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>���Ϻ�����</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>

<body>
<form action="sendMail.lms" method='post'>
���� :        <input type="text" width="20px" name="title"/><br>
������ ��� : <input type="text" width="20px" name="name"/><br>
�޴�   ��� : <input type="text" width="20px" name="email"/><br>
����<br>
 <textarea rows="5" cols="30" name="content"></textarea>
  <input type="submit" name="button" value="����">
</form>



</body>
</html>