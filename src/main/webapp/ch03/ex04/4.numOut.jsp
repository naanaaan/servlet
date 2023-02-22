<%@ page language='java' contentType='text/html; charset-utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String numStr = request.getParameter("num");
	//null값이 있을 수도 있고 유저가 직접 url입력해서들어가면 또 null이 될 수 있기때문에
	try {
		int num = Integer.parseInt(numStr);
%>
		<%= num * 2 %>
		<a href='4.numIn.jsp'>back</a>
<%
	} catch(NumberFormatException e){
%>
		<%-- 과제: numIn.jsp form 에 에러메세지를(영어)를 출력하라. --%>
		<c:redirect url='4.numIn.jsp?msg=input number.'/>
		
<%		
	}
%>

