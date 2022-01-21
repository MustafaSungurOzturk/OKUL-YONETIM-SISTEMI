<%-- 
    Document   : notlar
    Created on : 17.Oca.2022, 19:35:16
    Author     : Excalibur
--%>
<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Connection con;
    PreparedStatement pst;
    ResultSet rs;




%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <title>Notlar</title>
</head>
<body>
    
    <h1>Notlar</h1>
    <div class="col-sm-8">
            <div class="panel-body">
                <table id="tbl-ders" class="table table-responsive table-bordered" cellpadding="0" width="100%">
                    <thead>
                        <tr>
                            <th>Öğrenci Adı</th>
                            <th>Dersi</th>
                            <th>Grubu</th>
                            <th>Notu</th>
                        </tr>
                    <tbody>  
                        <%
                        
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root","");
                        String query3 = "select n.id, o.studentname, d.lessonname, g.batchname, n.notes from lessonnotes n JOIN lesson d ON n.lesson = d.id JOIN batch g ON n.batch = g.id JOIN student o ON n.studentname = o.id";
                        Statement st3 = con.createStatement();
                        rs = st3.executeQuery(query3);
                        while(rs.next()) {
                            String id = rs.getString("n.id");
                            
                        
                        %>
                        <tr>
                            <td><%=rs.getString("o.studentname")  %></td>
                            <td><%=rs.getString("d.lessonname")  %></td>
                            <td><%=rs.getString("g.batchname")  %></td>
                            <td><%=rs.getString("n.notes")  %></td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </thead>
                </table>       
            </div>   
        </div>
</body>
</html>
