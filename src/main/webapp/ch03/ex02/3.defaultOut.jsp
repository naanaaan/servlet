<%@ page language='java' contentType='text/html; charset-utf-8' pageEncoding='utf-8'%>
<%
	String text = request.getParameter("text");
	String number = request.getParameter("number");
	String date = request.getParameter("date");
	String checkbox = request.getParameter("checkbox");//null값이 나온이유는 null값 리턴이아니라 파라미터자체가 없는 것
	String radio = request.getParameter("radio");
	
	String text2 = request.getParameter("text2");
	String number2 = request.getParameter("number2");
	String date2 = request.getParameter("date2");
	String checkbox2 = request.getParameter("checkbox2");//null값이 나온이유는 null값 리턴이아니라 파라미터자체가 없는 것
	String radio2 = request.getParameter("radio2");
%>

<%= text%> <%= text2%><br>
<%= number%> <%= number2%><br>
<%= date%> <%= date2%><br>
<%= checkbox%> <%= checkbox2%><br>
<%= radio%> <%= radio2%>