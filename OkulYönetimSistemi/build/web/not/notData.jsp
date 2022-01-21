<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
String notesID = request.getParameter("id"); 
String studentname = request.getParameter("studentname");
String lesson = request.getParameter("lesson");
String batch = request.getParameter("batch"); 
String notes = request.getParameter("notes");


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root","");
pst = con.prepareStatement("update lessonnotes set studentname = ? , lesson = ? , batch = ? , notes = ? where id = ?");
pst.setString(1, studentname);
pst.setString(2, lesson);
pst.setString(3, batch);
pst.setString(4, notes);
pst.setString(5, notesID);
pst.executeUpdate();

out.println("Kayit Güncellendi");




%>