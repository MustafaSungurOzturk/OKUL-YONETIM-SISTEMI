<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Gruplar</title>
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
    top: 250px;
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
    </style>
</head>
<body>
        <div>
            <form method="POST" align="left" action="add.jsp" class="box">
                <h1>Dersler</h1>
                    <input type="text" id="batchname" name="batchname" placeholder="Grup Adi" required>
                    <input type="text" id="year" name="year" placeholder="Grup Yılı" required>
                    <input type="submit" name="submit"  value="Gönder">
                    <input type="reset" name="reset"  value="Temizle">
            </form>
            
            
        </div>
        
            <div>
                <table id="tbl-ders"  cellpadding="0" >
                    <thead>
                        <tr>
                            <th>Grup Adı</th>
                            <th>Grup Yılı</th>
                            <th>Düzenle</th>
                            <th>Sil</th>
                        </tr>
                        
                    <tbody>
                        <%
                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;

                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root","");
                        String query = "select * from batch";
                        Statement st = con.createStatement();
                        rs = st.executeQuery(query);
                        while(rs.next()) {
                            String id = rs.getString("id");
                            
                        
                        %>
                        <tr>
                            <td><%=rs.getString("batchname")  %></td>
                            <td><%=rs.getString("year")  %></td>
                            <td><a href="grupUpdate.jsp?id=<%=id %>">Düzenle</a></td>
                            <td><a href="grupDelete.jsp?id=<%=id %>">Sil</a></td>
                        </tr>
                        
                        <% } %>
                    </tbody>
                        
                        
                        
                        
                        
                    </thead>
                </table>
                
                
            </div>
            
            
        </div>
        
    </div>
    
    
    
    
    
    
</body>
</html>
