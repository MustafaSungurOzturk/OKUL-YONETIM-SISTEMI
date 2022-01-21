<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Çıkış</title>
    <style>
        body{
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            background-image: linear-gradient(180deg,#2c3e50,black);
            min-height: 100vh;
            margin-top: 250px;
        }
        h1{
            text-align: center;
            color: #2ecc71;
        }
        a{
            text-decoration: none;
            text-align: center;
            color: red;
        }
        div{
            padding-left: 41%;
            padding-top: 50px;
        }
    </style>
</head>
<body>
    <%
        session.invalidate();
    %>
    <h1>Başarıyla Çıkış Yaptınız</h1>
    <div><a href="login.jsp">Ana Sayfaya Geri Dönmek İçin Tıklayın</a></div>
</body>
</html>
