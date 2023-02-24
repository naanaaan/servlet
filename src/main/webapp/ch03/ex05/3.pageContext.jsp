<%@ page language='java' contentType='text/html; charset-utf-8' pageEncoding='utf-8'%>
<%@ page import= 'ch03.ex05.User' %>
<%
	pageContext.setAttribute("user", new User("최한석", 12));
	User user = new User("한아름", 42);
%>
<%= pageContext.getAttribute("user")%>
<%= user %>
<!-- redirect foward 서버의 차이 forward는 같은서버 redirect 다른 서버 같ㄴ은서버 -->
<!-- forward는 요청이 계속유지이고 redirect는 요청이끝나고 새로운요청 -->
<!-- applicationscope은 쓰지마셈 -->