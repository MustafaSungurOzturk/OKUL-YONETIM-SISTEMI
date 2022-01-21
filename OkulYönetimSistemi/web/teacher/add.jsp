<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
    
String teachername = request.getParameter("teachername");
String lesson = request.getParameter("lesson");
String batch = request.getParameter("batch");
String teacherno = request.getParameter("teacherno");
String email = request.getParameter("email");

Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root","");
pst = con.prepareStatement("insert into teacher(teachername,lesson,batch,teacherno,email)values(?,?,?,?,?)");
pst.setString(1, teachername);
pst.setString(2, lesson);
pst.setString(3, batch);
pst.setString(4, teacherno);
pst.setString(5, email);
pst.executeUpdate();

out.println("Kayit Eklendi");




%>