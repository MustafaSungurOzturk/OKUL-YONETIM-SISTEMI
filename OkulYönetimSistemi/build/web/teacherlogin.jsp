<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>ANASAYFA</title>
        <style>
        body,html{
   margin: 0;
   padding: 0;
   background: #2c3e50;
}
header{
    width: 100%;
    height: 70px;
    background-color: #282828;
}

h1{
    position: absolute;
    padding: 3px;
    float: left;
    margin-left: 2%;
    margin-top: 10px;
    font-family: 'Alfa Slab One',cursive;
    color: #39ca74;
}
span{
    color: #ffffff;
}
ul{
    width: auto;
    float: right;
    margin-top: 8px;
}
li{
    display: inline-block;
    padding: 15px 30px;
}
a{
    text-align: center;
    color: #ffffff;
    text-decoration: none;
    font-family: 'Open Sans', sans-serif;
    font-size: 1.2vw;
}
a:hover{
    color: #F0c330;
    transition: 0.5s;
}
.exit{
    background-color: red;
    border-radius: 20px;
}
h2{
    text-align: center;
    color: #39ca74;
}
    </style>
</head>
    <header>
        <nav>
        <h1>Okul Yönetim <span>Sistemi</span></h1>
        <ul>
            <li>
                <a  href="lessonnotes/not.jsp">Not Giriş</a>
            </li>
            <li class="exit">
                <a href="logout.jsp">Çıkış Yap</a>
            </li>
        </ul>
    
    </nav>
    </header>
<body>
    <%
        String username=(String)session.getAttribute("username");
    %>
    <h2>Okul Yönetim Sistemine Hoşgeldiniz. 
        Oturum:<%=username%> </h2>
</body>
</html>
