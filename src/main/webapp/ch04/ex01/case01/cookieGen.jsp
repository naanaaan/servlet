<%@ page language='java' contentType='text/html; charset-utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a>
<%	//똑같은 쿠키네임들어오면 덮어씌기함
	Cookie cookie1 = new Cookie("userName", "john");//쿠키벨류는 String
	Cookie cookie2 = new Cookie("age", "32");
	
	response.addCookie(cookie1);
	response.addCookie(cookie2);
%>
