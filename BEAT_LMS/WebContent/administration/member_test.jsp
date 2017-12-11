<%@page import="com.beat.Management.model.OneMemManagementDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 정보 상세페이지</title>

<link rel="stylesheet" href="./css/960.css">
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/administration_member.css">
<link rel="stylesheet" href="./css/footer.css">


<style type="text/css">
</style>
<script type="text/javascript" src="./js/jquery-1.12.4.js"></script>
<script>

<% String mnum = request.getParameter("mnum");%>

   function toList(){
      location.href="mnglist.lms";   //뒤로가기 가능   
   }
   

</script>
</head>
<body>

   <jsp:include page="../template/header.jsp"></jsp:include>
   <jsp:include page="../template/loginjoin.jsp"></jsp:include>
   <jsp:include page="../template/menu.jsp"></jsp:include>
<jsp:include page="../template/aside_menu_administration.jsp"></jsp:include>

<form action="oneMemEdit.lms?mnum=<%=mnum%>" method="post">
<%
   ArrayList<OneMemManagementDto> oneList = (ArrayList<OneMemManagementDto>)request.getAttribute("oneList");
   for(OneMemManagementDto bean : oneList){
%>
      <table>
         <tr>
            <th>mnum</th>
            <td><%=bean.getmNum() %></td>
         </tr>
         <tr>
            <th>snum</th>
            <td><%=bean.getsNum() %></td>   
         </tr>
         <tr>
            <th>mid</th>
            <td><%=bean.getmId() %></td>
         </tr>
         <tr>
            <th>mname</th>
            <td><%=bean.getmName() %></td>
         </tr>
         <tr>
            <th>mbirth</th>
            <td><%=bean.getmBirth() %></td>
         </tr>
         <tr>
            <th>zen</th>
            <td><%=bean.getmZen() %></td>
         </tr>
         <tr>
            <th>phone</th>
            <td><%=bean.getmPhone()%></td>
         </tr>
         <tr>
            <th>mmail</th>
            <td><%=bean.getmMail() %></td>
         </tr>
         <tr>
            <th>maddress</th>
            <td><%=bean.getMAddress() %></td>
         </tr>
         <tr>
            <th>maddnum</th>
            <td><%=bean.getmAddnum() %></td>
         </tr>
         <tr>
            <th>joindate</th>
            <td><%=bean.getJoinDate() %></td>
         </tr>
       
<%
}
%>   
      </table>
      
      <p>
         <input type="submit" value="수정">
         <input type="button" onclick="toList();" value="목록">
      </p>
      
      </form>
   <jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>