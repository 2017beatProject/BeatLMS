<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList"
    import="com.beat.Management.model.MemberManagementDto"
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>list page</title>
<script>
	 function mouseOver(obj){
		 obj.style.cursor='pointer';
		 obj.style.backgroundColor="#dddddd";
	 }
	 
	 function mouseOut(obj){
		 obj.style.backgroundColor="";
	 }

</script>
</head>

<%	
//리스트 기능: 페이지, 검색 기능 추가

	String param = request.getParameter("page");
	String param3 = request.getParameter("keyword");//검색에 필요
	
	String param2 = request.getAttribute("total").toString(); //전체글수
	
	int total=0; 
	int pg = 1; //현재 자신이 위치한 페이지
	String keyword="";//검색용 키워드변수
	
	if(param!=null) pg=Integer.parseInt(param);
	if(param2!=null)total = Integer.parseInt(param2); //전체 카운트
	if(param3!=null) keyword=param3;//검색에 필요
	
	int pstart = 1+(pg-1)*10;
	int pend=pstart+10-1;
	//한 페이지당 나오는 게시글의 수
	
%>

<body>

<h1>리스트페이지 </h1>

<form action="">
	검색<input type="text" name="keyword">
<!-- 	<input type="hidden" name="plimit" value=<plimit %>> -->
	<input type="submit" value="검색">
</form>

	<table>
		<tr>
			<td>MNUM</td>
			<td>MID</td>
			<td>MNAME</td>
			<td>RIGHTCODE</td>
		</tr>
		
<%

	ArrayList<MemberManagementDto> alist = (ArrayList<MemberManagementDto>)request.getAttribute("AllList");
	

//	int total = alist.size();
	//System.out.println(total);
	
	for(MemberManagementDto bean : alist){

%>		
		<tr onmouseover="mouseOver(this);" onmouseout="mouseOut(this);" onclick="location.href='mngdetail.lms=<%=bean.getMnum()%>'">
			<td><%=bean.getMnum() %></td>
			<td><%=bean.getMid() %></td>
			<td><%=bean.getMname() %></td>
			<td><%=bean.getRightCode() %></td>
		</tr>
<%
}
%>		
	</table>
	
<%

	//페이지수 열람...10페이지씩만 나오게하기
	int limit=10;
	int start = (pg-1)/limit*limit;
	int end=((pg-1)/limit +1)*limit;//1~10p:게시글의 10의 자리수가 0 -> 마지막 페이지수는 10, 11~20 =십자리수1/마지막20
			
	if(end>(total-1)/10+1) end=(total-1)/10+1;
	
	
	if(start-1>0){
%>
	<a href="mnglist.lms?page=<%=start-1%>&keyword=<%=keyword%>">[이전]	</a>
<%	}

	for(int i=start; i<end; i++){
%>
	<a href="mnglist.lms?page=<%=i+1%>&keyword=<%=keyword%>">
	<%out.print(i+1);%>
	</a>
<%}
	if(end<((total-1)/10+1)){
%>	
	<a href="mnglist.lms?page=<%=end+1%>&keyword=<%=keyword%>">[다음]</a>
<%} %>	

<br><br>

<a href="#"> [입력 기능은 없음] </a>


</body>
</html>