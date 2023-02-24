<%@ page language='java' contentType='text/html; charset-utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%

	//파라미터는 클라이언트가 생성 attribute는 서버에서 생성한다.
	//파라미터는 String만 attribute는 Object타입 이용가능.
	//파라미터의 스콥은 request이다. attrubute는 스콥 다가능
	//사라지는 스콥
	pageContext.setAttribute("one", "페이지"); //현재페이지 실행되는 동안
	request.setAttribute("two", "리퀘스트"); //
	//페이지이동할때 유지되는 스콥
	session.setAttribute("three", "세션"); // 세션객체가없어질때까지?
	application.setAttribute("four", "애플리케이션"); // 앱이실행되는동안 살아있음
%>

<c:redirect url='1.scopeB.jsp'/>