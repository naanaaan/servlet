<%@ page language='java' contentType='text/html; charset-utf-8' pageEncoding='utf-8'%>
A
<%
	RequestDispatcher dispatcher = request.getRequestDispatcher("1.b.jsp");
	dispatcher.forward(request, response); //b에게 요청을 그대로 넘기고 마지막이기때문에 B를출력 추가가아니라 덮어쓰기
	//추가는 액션 include 덮어쓰기는 forward
%>
