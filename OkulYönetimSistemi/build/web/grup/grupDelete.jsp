<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
String batchID = request.getParameter("id"); 



Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root","");
pst = con.prepareStatement("delete from batch where id = ?");

pst.setString(1, batchID);
pst.executeUpdate();

out.println("Kayit Silindi");




%>