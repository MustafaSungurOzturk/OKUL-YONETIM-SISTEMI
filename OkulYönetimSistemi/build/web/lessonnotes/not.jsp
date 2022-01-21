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
    <title>Not Sistemi</title>
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

    </style>
</head>
<body>
    
        <div>
            <form method="POST" align="left" action="add.jsp" class="box">
                <h1>Not Sistemi</h1>
                    <select name="studentname" id="studentname" >
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
                    <select name="lesson" id="lesson">
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
                    <select name="batch" id="batch">
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
                    <input type="text" id="notes" name="notes" placeholder="Notu" required>
                    <input type="submit" name="submit"  value="Gönder">
                    <input type="reset" name="reset" value="Temizle">
            </form>
            
            
        </div>

            <div>
                <table id="tbl-ders" cellpadding="0" >
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
    
    
    
    
    
    
</body>
</html>
