<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
    
String studentname = request.getParameter("studentname");
String lesson = request.getParameter("lesson");
String batch = request.getParameter("batch");
String notes = request.getParameter("notes");

Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root","");
pst = con.prepareStatement("insert into lessonnotes(studentname,lesson,batch,notes)values(?,?,?,?)");
pst.setString(1, studentname);
pst.setString(2, lesson);
pst.setString(3, batch);
pst.setString(4, notes);
pst.executeUpdate();

out.println("Kayit Eklendi");




%>