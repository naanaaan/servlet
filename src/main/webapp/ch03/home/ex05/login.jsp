<%@ page language='java' contentType='text/html; charset-utf-8' pageEncoding='utf-8'%>
<% String action =""; %>

<form action='loginProc.jsp'>
	<input type='text' name='userId'/>
	<input type='password' name='password'/>
	<input type='submit'/>
</form>

<%
	String msg = request.getParameter("msg");
%>
<% if(msg != null && msg.equals("failed")){%>
    <span>아이디 또는 비밀번호가 틀립니다.</span>
<%};%>