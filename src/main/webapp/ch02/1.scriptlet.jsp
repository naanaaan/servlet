<%-- page directive --%>
<%@ page language='java' contentType='text/html; charset-utf-8' pageEncoding='utf-8'%>
<% //scriptlet java 언어로 구성된 스크립트 조각.
	int num1 = 1;
	int num2 = 2;
	
%>
<h2>더하기</h2>
<%= num1 %> + <%= num2 %> = <%= num1 + num2 %> <%-- expression --%>