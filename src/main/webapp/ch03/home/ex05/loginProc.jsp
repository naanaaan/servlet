<%@ page language='java' contentType='text/html; charset-utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ page import='java.net.URLEncoder' %>
<%
	String userId = request.getParameter("userId"); 
	String password = request.getParameter("password");
	String msg = "님, 환영합니다.";
	String msgEncoding = "main.jsp?msg="+ userId + URLEncoder.encode(msg, "utf8");
	
	if(userId.equals("java") && password.equals("java")){%>
   		<c:redirect url= '<%=msgEncoding %>'/>
<%}else{%>
		<c:redirect url='login.jsp?msg=failed'/>
<%};%>

