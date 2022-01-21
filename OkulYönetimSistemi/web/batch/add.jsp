<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
    
String batchname = request.getParameter("batchname");
String year = request.getParameter("year");


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root","");
pst = con.prepareStatement("insert into batch(batchname,year)values(?,?)");
pst.setString(1, batchname);
pst.setString(2, year);
pst.executeUpdate();

out.println("Kayit Eklendi");




%>