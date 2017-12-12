<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.util.*,java.io.*,javax.mail.*,javax.mail.internet.*,javax.activation.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>메일보내기</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>

<body>
<form action="sendMail.lms" method='post'>
제목 :        <input type="text" width="20px" name="title"/><br>
보내는 사람 : <input type="text" width="20px" name="name"/><br>
받는   사람 : <input type="text" width="20px" name="email"/><br>
내용<br>
 <textarea rows="5" cols="30" name="content"></textarea>
  <input type="submit" name="button" value="전송">
</form>



</body>
</html>