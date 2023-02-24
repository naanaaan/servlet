<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<!-- ID 저장기능 구현 -->
<%
   Object user = session.getAttribute("userId");
   
   //로그인 전.
   if(user == null) {
      String userId = "";
      Cookie[] cookies = request.getCookies();
      
      //로그인 한 적이 있는경우.
      if(cookies != null) {
         for(Cookie cookie: cookies)
            if(cookie.getName().equals("userId"))
               userId = cookie.getValue();
      }
%>
      <form action='loginProc.jsp' method='post'>
         <!-- 한번이라도 로그인 한 적이 있다면 자동으로 쿠키 값이 input에 들어가도록 한다. -->
         ID: <input type='text' name='userId' value='<%= userId %>'/><br>
         PW: <input type='password' name='pw'/><br><br>
         <input type='checkbox' name='isStoreId' value='true'> ID 저장
         <input type='submit' value='로그인'/>
      </form>

<%
   //로그인 후.
   } else {
%>
      <%= user %>님, 환영합니다. &nbsp;
      <a href='logout.jsp'>로그아웃</a>
<%
   }
%>