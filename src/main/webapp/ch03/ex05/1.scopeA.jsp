<%@ page language='java' contentType='text/html; charset-utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	//사라지는 스콥
	pageContext.setAttribute("one", "페이지"); //현재페이지 실행되는 동안
	request.setAttribute("two", "리퀘스트"); //
	//페이지이동할때 유지되는 스콥
	session.setAttribute("three", "세션"); // 세션객체가없어질때까지?
	application.setAttribute("four", "애플리케이션"); // 앱이실행되는동안 살아있음
%>

<c:redirect url='1.scopeB.jsp'/>