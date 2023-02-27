<%@ page language='java' contentType='text/html; charset-utf-8' pageEncoding='utf-8'%>
<ol>
	<li>${scope}</li> <!-- 좁은순에서 넓은순뒤짐 그래서 request이다 -->
	<li>${pageScope.scope }</li>
	<li>${requestScope.scope }</li>
	<li>${sessionScope.scope }</li>
	<li>${applicationScope.scope }</li>
</ol>