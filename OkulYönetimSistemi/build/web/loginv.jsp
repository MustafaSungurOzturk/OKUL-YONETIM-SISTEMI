<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    
    if(username.equals("admin") && password.equals("12345")) {
        String redirect = "adminlogin.jsp";
        response.sendRedirect(redirect);
        session.setAttribute("username", username);
        Cookie cookie =new Cookie("username",username);
        cookie.setMaxAge(60*60);
        response.addCookie(cookie);
    }
    if (username.equals("teacher") && password.equals("12345")){
        String redirect = "teacherlogin.jsp";
        response.sendRedirect(redirect);
        session.setAttribute("username", username);
        Cookie cookie =new Cookie("username",username);
        cookie.setMaxAge(60*60);
        response.addCookie(cookie);
    }
    if (username.equals("student") && password.equals("12345")){
        String redirect = "studentlogin.jsp";
        response.sendRedirect(redirect);
        session.setAttribute("username", username);
        Cookie cookie =new Cookie("username",username);
        cookie.setMaxAge(60*60);
        response.addCookie(cookie);
    }
    
    
    
    
    
    
%>