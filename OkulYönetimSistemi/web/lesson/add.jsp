<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
    
String lessonname = request.getParameter("lessonname");
String lessontime = request.getParameter("lessontime");


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root","");
pst = con.prepareStatement("insert into lesson(lessonname,lessontime)values(?,?)");
pst.setString(1, lessonname);
pst.setString(2, lessontime);
pst.executeUpdate();

out.println("Kayit Eklendi");




%>