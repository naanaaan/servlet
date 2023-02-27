<%@ page language='java' contentType='text/html; charset-utf-8' pageEncoding='utf-8'%>
<ul>
	<li>${user }</li>
	<li>${user.username }</li> <!-- 자바get코드가져옴 -->
	<li>${pageScope.user.username }</li>
	<li>${requestScope.user.username }</li>
	<li>${sessionScope.user.username }</li>
	<li>${applicationScope.user.username }</li>
</ul>
