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
    <title>Dersler</title>
</head>
<body>
    <h1>Dersler</h1>
    <div class="row">
        <div class="col-sm-4">
            <form method="POST" align="left" action="add.jsp">
                <div>
                    <label class="form-label">Ders Adı : </label>
                    <input type="text" id="lessonname" name="lessonname" placeholder="Ders Adi" class="form-control" required>
                </div>
                <div>
                    <label class="form-label">Ders Süresi : </label>
                    <input type="text" id="lessontime" name="lessontime" placeholder="Ders Süresi" class="form-control" required>
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
                            <th>Ders Adı</th>
                            <th>Ders Süresi</th>
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
                        String query = "select * from lesson";
                        Statement st = con.createStatement();
                        rs = st.executeQuery(query);
                        while(rs.next()) {
                            String id = rs.getString("id");
                            
                        
                        %>
                        <tr>
                            <td><%=rs.getString("lessonname")  %></td>
                            <td><%=rs.getString("lessontime")  %></td>
                            <td><a href="dersUpdate.jsp?id=<%=id %>">Düzenle</a></td>
                            <td><a href="dersDelete.jsp?id=<%=id %>">Sil</a></td>
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
