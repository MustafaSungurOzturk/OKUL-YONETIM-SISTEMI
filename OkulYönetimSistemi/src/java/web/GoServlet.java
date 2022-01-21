
package web;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "GoServlet", urlPatterns = {"/GoServlet"})
public class GoServlet extends HttpServlet {
private static final long  serialVersionUID = 1L;

   public static final String USER_NAME        = "userName";

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();

      Cookie[] cookies = request.getCookies();
      if (cookies != null) {
         for (Cookie cookie : cookies) {
            if (USER_NAME.equals(cookie.getName())) {
               out.println("<b>Welcome " + cookie.getValue() + "</b>");
            }
         }
      }
      else {
         response.sendRedirect("http://localhost:8080/JServlet/login.html");
      }
   }
}
