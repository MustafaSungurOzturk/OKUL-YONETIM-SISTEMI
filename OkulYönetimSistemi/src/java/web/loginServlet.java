package web;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "loginServlet", urlPatterns = {"/loginServlet"})
public class loginServlet extends HttpServlet {

  private static final long  serialVersionUID = 1L;

   public static final String USER_NAME        = "userName";

   public boolean verifyUser(String userName, String password) {
      // query check from db
      return true;
   }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String userName = request.getParameter("userName");
      String password = request.getParameter("password");

      if (verifyUser(userName, password)) {
         Cookie userCookie = new Cookie(USER_NAME, userName);
         userCookie.setMaxAge(5);
         response.addCookie(userCookie);
         response.sendRedirect("http://localhost:8080/JServlet/GoServlet");
      }
      else {
         response.sendRedirect("http://localhost:8080/JServlet/login.jsp");
      }
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGet(request, response);
   }
}
