<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
String lessonID = request.getParameter("id"); 
String lessonname = request.getParameter("lessonname");
String lessontime = request.getParameter("lessontime");


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root","");
pst = con.prepareStatement("update lesson set lessonname = ? , lessontime = ? where id = ?");
pst.setString(1, lessonname);
pst.setString(2, lessontime);
pst.setString(3, lessonID);
pst.executeUpdate();

out.println("Kayit Güncellendi");




%>