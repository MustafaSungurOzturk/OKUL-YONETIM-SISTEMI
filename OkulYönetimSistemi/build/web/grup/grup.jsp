<%-- 
    Document   : ders
    Created on : 12.Oca.2022, 23:33:45
    Author     : Excalibur
--%>
<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <title>Gruplar</title>
</head>
<body>
    <h1>Gruplar</h1>
    <div class="row">
        <div class="col-sm-4">
            <form method="POST" align="left" action="add.jsp">
                <div>
                    <label class="form-label">Grup Adı : </label>
                    <input type="text" id="batchname" name="batchname" placeholder="Grup Adi" class="form-control" required>
                </div>
                <div>
                    <label class="form-label">Grup Yılı : </label>
                    <input type="text" id="year" name="year" placeholder="Grup Yılı" class="form-control" required>
                </div>
                <div>
                    <input type="submit" name="submit" class="btn btn-info" value="Gönder">
                    <input type="reset" name="reset" class="btn btn-warning" value="Temizle">
                </div>
            </form>
            
            
        </div>
        <div class="col-sm-8">
            <div class="panel-body">
                <table id="tbl-ders" class="table table-responsive table-bordered" cellpadding="0" width="100%">
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
