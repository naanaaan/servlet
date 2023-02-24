package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//servlet은 아래 예시로, java코드와 html코드가 섞여있는 스파게티코드 형태이기때문에 유지보수가 힘들다. =>> JSP에서 극복했다.

//context pass 이후의 url을 수동으로 부여
@WebServlet("/ch01/get/add")

//servlet class 구성.
public class C1_Get extends HttpServlet { //request 보내는 최종 목적지가 HttpServlet 객체이다.
	@Override
	public void doGet(HttpServletRequest req/*server에서 온 text가 object로 parsing*/, HttpServletResponse res/*server가 client에게 보낼 java object.*/)
		throws ServletException, IOException {//tomcat에게 exception을 떠넘긴다.
		int num1 = 1;
		int num2 = 2;
		
		res.setContentType("text/html; charset=utf-8"); //html meta tag에 기술했던것을 servlet에선 dynamic하게 기술.
		PrintWriter out = res.getWriter();
		out.println("<h2>GET</h2>");
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2); //spaghetti code.
	}
}
// http://localhost(내컴퓨터 주소, 127.0.0.1)  :80(tomcat의 주소)   /servlet(webapp의 주소, '/' = context pass)  /servlet/ch01.C1_Get
// context pass를 포함하고 있으면 대주소, 아니면 상대주소.