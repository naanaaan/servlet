<%@ page language='java' contentType='text/html; charset-utf-8' pageEncoding='utf-8'%>
<%
	pageContext.setAttribute("username", "최한석");
%>
${username }<br>
${hello} <br>
${empty hello} <br>
${empty username ? "무명" : username} <br>
${!(empty username) ? username : "무명"} <br>