<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
String batchID = request.getParameter("id"); 
String batchname = request.getParameter("batchname");
String year = request.getParameter("year");


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root","");
pst = con.prepareStatement("update batch set batchname = ? , year = ? where id = ?");
pst.setString(1, batchname);
pst.setString(2, year);
pst.setString(3, batchID);
pst.executeUpdate();

out.println("Kayit Güncellendi");




%>