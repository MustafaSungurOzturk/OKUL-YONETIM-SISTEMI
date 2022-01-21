<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
String studentID = request.getParameter("id"); 
String studentname = request.getParameter("studentname");
String lesson = request.getParameter("lesson");
String batch = request.getParameter("batch"); 
String schoolno = request.getParameter("schoolno");
String email = request.getParameter("email");


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root","");
pst = con.prepareStatement("update student set studentname = ? , lesson = ? , batch = ? , schoolno = ? , email = ? where id = ?");
pst.setString(1, studentname);
pst.setString(2, lesson);
pst.setString(3, batch);
pst.setString(4, schoolno);
pst.setString(5, email);
pst.setString(6, studentID);
pst.executeUpdate();

out.println("Kayit Güncellendi");




%>