<%-- 
    Document   : ders
    Created on : 12.Oca.2022, 23:33:45
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
    <title>Not Sistemi</title>
</head>
<body>
    <h1>Not Sistemi</h1>
    <div class="row">
        <div class="col-sm-4">
            <form method="POST" align="left" action="add.jsp">
                <div>
                    <label class="form-label">Öğrenci Adı : </label>
                    <select name="studentname" id="studentname" class="form-control">
                        <%
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root","");
                            String query = "select * from student";
                            Statement st = con.createStatement();
                            rs = st.executeQuery(query);
                            while (rs.next()){
                                String id = rs.getString("id");
                                String studentname = rs.getString("studentname");
                                %>
                                
                                 <option value="<%=id %>"><%= studentname %> </option>
                                
                                <%
                            }
                        %>  
                    </select>
                </div>
                <div>
                    <label class="form-label">Ders : </label>
                    <select name="lesson" id="lesson" class="form-control">
                        <%
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root","");
                            String query2 = "select * from lesson";
                            Statement st2 = con.createStatement();
                            rs = st2.executeQuery(query2);
                            while (rs.next()){
                                String id = rs.getString("id");
                                String lessonname = rs.getString("lessonname");
                                %>
                                
                                <option value="<%=id %>"><%= lessonname %> </option>
                                
                                <%
                            }
                        %>  
                    </select>
                </div>
                <div>
                    <label class="form-label">Grup : </label>
                    <select name="batch" id="batch" class="form-control">
                        <%
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root","");
                            String query1 = "select * from batch";
                            Statement st1 = con.createStatement();
                            rs = st1.executeQuery(query1);
                            while (rs.next()){
                                String id = rs.getString("id");
                                String batchname = rs.getString("batchname");
                                %>
                                
                                <option value="<%=id %>"><%= batchname %> </option>
                                
                                <%
                            }
                        %>    
                    </select>
                </div>
                <div>
                    <label class="form-label">Notu : </label>
                    <input type="text" id="notes" name="notes" placeholder="Notu" class="form-control" required>
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
                            <th>Öğrenci Adı</th>
                            <th>Ders</th>
                            <th>Grup</th>
                            <th>Notu</th>
                            <th>Düzenle</th>
                            <th>Sil</th>
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
                            <td><a href="notUpdate.jsp?id=<%=id %>">Düzenle</a></td>
                            <td><a href="notDelete.jsp?id=<%=id %>">Sil</a></td>
                        </tr>
                        <%
                            }
                        %>
                        
                    </tbody>
                        
                        
                        
                        
                        
                    </thead>
                </table>
                
                
            </div>
            
            
        </div>
        
    </div>
    
    
    
    
    
    
</body>
</html>
