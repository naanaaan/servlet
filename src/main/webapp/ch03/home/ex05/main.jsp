<%@ page language='java' contentType='text/html; charset-utf-8' pageEncoding='utf-8'%>
<a href='login.jsp'>로그인</a>

<%
	String msg = request.getParameter("msg");
%>
<br>
<%if(msg != null){%>
	<%=msg%>
	<a href='logout.jsp'>로그아웃</a>
<%}%>