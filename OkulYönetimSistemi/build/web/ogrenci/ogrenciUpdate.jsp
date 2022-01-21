<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <title>Öğrenci Bilgi Güncelleme</title>
</head>
<body>
    <h1>Öğrenci Bilgi Güncelleme</h1>
    <div class="row">
        <div class="col-sm-4">
            <form method="POST" align="left" action="ogrenciData.jsp">
                <%
                Connection con;
                PreparedStatement pst;
                ResultSet rs;

                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root","");
                
                String id = request.getParameter("id");
                
                pst = con.prepareStatement("select * from student where id = ?");
                pst.setString(1, id);
                rs = pst.executeQuery();
                
                while (rs.next()) {
                    
                
                
                %>
                
                
                
                
                <div>
                    <label class="form-label">Öğrenci ID : </label>
                    <input type="text" id="id" name="id" placeholder="Öğrenci ID" class="form-control" value="<%= rs.getString("id") %>" required>
                </div>
                <div>
                    <label class="form-label">Öğrenci Adı : </label>
                    <input type="text" id="studentname" name="studentname" placeholder="Öğrenci Adi" class="form-control" value="<%= rs.getString("studentname") %>" required>
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
                    <label class="form-label">Okul No : </label>
                    <input type="text" id="schoolno" name="schoolno" placeholder="Okul No" class="form-control" value="<%= rs.getString("schoolno") %>" required>
                </div>
                <div>
                    <label class="form-label">E-Mail : </label>
                    <input type="text" id="email" name="email" placeholder="E-mail" class="form-control" value="<%= rs.getString("email") %>" required>
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
