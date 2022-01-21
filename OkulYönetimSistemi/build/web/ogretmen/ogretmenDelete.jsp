<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
String teacherID = request.getParameter("id"); 



Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root","");
pst = con.prepareStatement("delete from teacher where id = ?");

pst.setString(1, teacherID);
pst.executeUpdate();

out.println("Kayit Silindi");




%>