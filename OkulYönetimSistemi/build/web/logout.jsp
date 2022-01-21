<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Çıkış Sayfası</title>
        <style>
            body{
                margin: 0;
                padding: 0;
                font-family: sans-serif;
                background-image: linear-gradient(90deg,#2c3e50,black);
                min-height: 100vh;
                margin-left: 45%;
                margin-top: 20%;
                
            }
            input[type="submit"]{
                border: 0px;
                width: 100px;
                height: 50px;
                text-align: center;
                border: 2px solid #27ae60;
                background: none;
                display: block;
                text-align: center;
                color: white;
                border-radius: 24px;
                transition: 0.25s;
                cursor: pointer;
            }
            input[type="submit"]:hover{
                background: #27ae60;
            }

        </style>
    </head>
    <form method="link" action="logoutprocess.jsp">
    <body>
        <div>
            <input type="submit" value="Çıkış Yap">
        </div>
    </body>
</html>
