%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String cookieName = "username";
        Cookie cookies [] = request.getCookies ();
        Cookie myCookie = null;
        if (cookies != null){
            for (int i = 0; i < cookies.length; i++){
                if (cookies [i].getName().equals (cookieName)){
                myCookie = cookies[i];
            break;}}}

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cookie</title>
</head>
<body>
    <h1>Cookie</h1>
    
    <%
         
        /* String username="";
        String password="";
        if (request.getCookies()!= null) {
            for (Cookie cookie : request.getCookies()){
                if (cookie.getName().equals("admin")){
                    username = cookie.getValue();
                } 
            }   
        }
        if (request.getCookies()!= null) {
            for (Cookie cookie : request.getCookies()){
                if (cookie.getName().equals("123")){
                    password = cookie.getValue();
                } 
            }   
        } */
        //for(int i=0; i < request.getCookies().length; i++) {
        // out nesnesi ile HTML sayfa icerigine metin yazdirilir.
        //    out.println("Name : " + request.getCookies()[i].getName() + "</br>  Value : " + request.getCookies()[i].getValue() + "</br>");
        //}
        
    %>
    
    <% if (myCookie == null) {     %>
        Kullan?c? ad?yla çerez bulunamad? <%=cookieName%>
    <%  } else {   %>
        <p>Welcome: <%=myCookie.getValue()%>.
    <% } %>
    
</body>
</html>