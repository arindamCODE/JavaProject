<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="java.util.*" %>

<% 
String qid=request.getParameter("qid");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data1","root","root");
Statement stat=con.createStatement();
ResultSet rs;
int i=stat.executeUpdate("DELETE FROM questions WHERE qid='"+qid+"'");
out.println("Question Deleted.......");
 %>
 <br>
 <br>
 <a href="Modify.jsp">Go Back</a><br>
 <br>
 <a href="index.html">Go to the Home Page</a>