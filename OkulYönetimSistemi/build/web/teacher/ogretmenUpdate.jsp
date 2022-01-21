<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Öğretmen Bilgi Güncelleme</title>
    <style>
        body{
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    background-image: linear-gradient(120deg,#2c3e50,black);
    min-height: 100vh;
}

.box{
    width: 330px;
    padding: 40px;
    position: relative;
    top: 500px;
    left: 50%;
    transform: translate(-50%,-50%);
    text-align: center;
    background: rgba(0, 0, 0, 0.3);
    border-radius: 10%;
    margin-bottom: 50px;
}

.box input[type="text"],.box input[type="password"]{
    border: 0;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #27ae60;
    padding: 14px 10px;
    width: 300px;
    outline: none;
    color: white;
    border-radius: 24px;
    transition: 0.25s;
}

.box h1{
    color: white;
    text-transform: uppercase;
    font-weight: 500;
}

.box input[type="text"]:focus ,.box input[type="password"]:focus{
    width: 260px;
    border-color: #2ecc71;
}
.box input[type="submit"]{
    border: 0;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #27ae60;
    padding: 14px 30px;
    outline: none;
    color: white;
    border-radius: 24px;
    transition: 0.25s;
    cursor: pointer;
}
.box input[type="submit"]:hover{
    background: #27ae60;
}
.box input[type="reset"]{
    border: 0;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #f00;
    padding: 14px 30px;
    outline: none;
    color: white;
    border-radius: 24px;
    transition: 0.25s;
    cursor: pointer;
}
.box input[type="reset"]:hover{
    background: #f00;
}
table{
    width: 100%;
}
th{
    border: 2px solid #27ae60 ;
    height: 50px;
    color: #ffff00;
    border-radius: 5px;
}
td{
    border: 2px solid #27ae60 ;
    height: 40px;
    color: white;
    border-radius: 5px;
    text-align: center;
}
select{
    width: 330px;
    height:50px;
    border: 2px solid #27ae60 ;
    color: white;
    background: #2c3e50;
    border-radius: 24px ;
    margin-bottom: 10px;
}
option{
        text-align: center;
}
label{
    color: white;
}
    </style>
</head>
<body>

        <div>
            <form method="POST" align="left" action="ogretmenData.jsp" class="box">
                <h1>Öğretmen Bilgi Güncelleme</h1>
                <%
                Connection con;
                PreparedStatement pst;
                ResultSet rs;

                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root","");
                
                String id = request.getParameter("id");
                
                pst = con.prepareStatement("select * from teacher where id = ?");
                pst.setString(1, id);
                rs = pst.executeQuery();
                
                while (rs.next()) {
                    
                
                
                %>
                    <label class="form-label">Öğretmen ID : </label>
                    <input type="text" id="id" name="id" placeholder="Öğretmen ID" value="<%= rs.getString("id") %>" required>
                    <label class="form-label">Öğretmen Adı : </label>
                    <input type="text" id="teachername" name="teachername" placeholder="Öğretmen Adi" value="<%= rs.getString("teachername") %>" required>
                    <label class="form-label">Ders : </label>
                    <input type="text" id="lesson" name="lesson" placeholder="Ders" value="<%= rs.getString("lesson") %>" required>
                    <label class="form-label">Grup : </label>
                    <input type="text" id="batch" name="batch" placeholder="Grup" value="<%= rs.getString("batch") %>" required>
                    <label class="form-label">Öğretmen No : </label>
                    <input type="text" id="teacherno" name="teacherno" placeholder="Adres" value="<%= rs.getString("teacherno") %>" required>
                    <label class="form-label">E-Mail : </label>
                    <input type="text" id="email" name="email" placeholder="E-Mail" value="<%= rs.getString("email") %>" required>
                    <input type="submit" name="submit" value="Gönder">
                    <input type="reset" name="reset" value="Temizle">
                <% } %>
            </form>
    </div>
</body>
</html>
