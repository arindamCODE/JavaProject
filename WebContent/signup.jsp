<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>


<%
String uname=request.getParameter("name");
String pass=request.getParameter("pass");
String mail=request.getParameter("mail");
String phone=request.getParameter("phone");
String city=request.getParameter("city");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data1","root","root");
Statement stat=con.createStatement();
ResultSet rs;
int i=stat.executeUpdate("insert into form values('"+uname+"','"+pass+"','"+mail+"','"+phone+"','"+city+"')");
out.println("Registered");
 %>
 <body bgcolor='#ADD8E6'>
 <br>
 <br>
 <a href="login.html">Login</a><br>
 <br>
 <a href="index.html">Home</a>
 </body>