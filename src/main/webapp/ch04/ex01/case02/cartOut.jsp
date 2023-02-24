<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ page import='java.util.StringTokenizer' %>
<a href='main.html'>진열대</a>
<%
   List<String> cart = new ArrayList<>();

   StringTokenizer st = null;
   Cookie[] cookies = request.getCookies();
   
   for(Cookie cookie: cookies) {
      if(cookie.getName().equals("cart")) {
         String tmp = cookie.getValue();
         //구분자 기준으로 string data를 쪼갠다.
         st = new StringTokenizer(tmp, "/");
         //Token이 더 존재한다면 cart에 계속 더해 넣어준다.
         while(st.hasMoreTokens())
            cart.add(st.nextToken());
      }
   }
   
   if(cart.size() > 0) {
%>
      <ul>
<%
         for(String product: cart) {
%>      
            <li><%= product %></li>
<%
         }
%>
      </ul>
<%
   } else out.println("물건이 없습니다.");
%>