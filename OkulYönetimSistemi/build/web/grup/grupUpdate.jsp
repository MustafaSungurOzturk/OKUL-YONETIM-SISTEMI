<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <title>Grup Güncelleme</title>
</head>
<body>
    <h1>Grup Güncelleme</h1>
    <div class="row">
        <div class="col-sm-4">
            <form method="POST" align="left" action="grupData.jsp">
                <%
                Connection con;
                PreparedStatement pst;
                ResultSet rs;

                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root","");
                
                String id = request.getParameter("id");
                
                pst = con.prepareStatement("select * from batch where id = ?");
                pst.setString(1, id);
                rs = pst.executeQuery();
                
                while (rs.next()) {
                    
                
                
                %>
                
                
                
                
                <div>
                    <label class="form-label">Grup ID : </label>
                    <input type="text" id="id" name="id" placeholder="Ders ID" class="form-control" value="<%= rs.getString("id") %>" required>
                </div>
                <div>
                    <label class="form-label">Grup Adı : </label>
                    <input type="text" id="batchname" name="batchname" placeholder="Grup Adi" class="form-control" value="<%= rs.getString("batchname") %>" required>
                </div>
                <div>
                    <label class="form-label">Grup Yılı : </label>
                    <input type="text" id="year" name="year" placeholder="Grup Yılı" class="form-control" value="<%= rs.getString("year") %>" required>
                </div>
                <div>
                    <input type="submit" name="submit" class="btn btn-info" value="Gönder">
                    <input type="reset" name="reset" class="btn btn-warning" value="Temizle">
                </div>
                <% } %>
            </form>
            
            
        </div>
        <div class="col-sm-8">
            
            
            
        </div>
        
    </div>
    
    
    
    
    
    
</body>
</html>
