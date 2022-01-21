<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <title>Öğretmen Bilgi Güncelleme</title>
</head>
<body>
    <h1>Öğretmen Bilgi Güncelleme</h1>
    <div class="row">
        <div class="col-sm-4">
            <form method="POST" align="left" action="ogretmenData.jsp">
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
                
                
                
                
                <div>
                    <label class="form-label">Öğretmen ID : </label>
                    <input type="text" id="id" name="id" placeholder="Öğretmen ID" class="form-control" value="<%= rs.getString("id") %>" required>
                </div>
                <div>
                    <label class="form-label">Öğretmen Adı : </label>
                    <input type="text" id="teachername" name="teachername" placeholder="Öğretmen Adi" class="form-control" value="<%= rs.getString("teachername") %>" required>
                </div>
                <div>
                    <label class="form-label">Ders : </label>
                    <input type="text" id="lesson" name="lesson" placeholder="Ders" class="form-control" value="<%= rs.getString("lesson") %>" required>
                </div>
                <div>
                    <label class="form-label">Grup : </label>
                    <input type="text" id="batch" name="batch" placeholder="Grup" class="form-control" value="<%= rs.getString("batch") %>" required>
                </div>
                <div>
                    <label class="form-label">Öğretmen No : </label>
                    <input type="text" id="teacherno" name="teacherno" placeholder="Adres" class="form-control" value="<%= rs.getString("teacherno") %>" required>
                </div>
                <div>
                    <label class="form-label">E-Mail : </label>
                    <input type="text" id="email" name="email" placeholder="E-Mail" class="form-control" value="<%= rs.getString("email") %>" required>
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
