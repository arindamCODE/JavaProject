<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>


<%
String qid=request.getParameter("qid");
String ccode=request.getParameter("ccode");
String question=request.getParameter("question");
String ans1=request.getParameter("ans1");
String ans2=request.getParameter("ans2");
String ans3=request.getParameter("ans3");
String ans4=request.getParameter("ans4");
String cans=request.getParameter("cans");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data1","root","root");
Statement stat=con.createStatement();
ResultSet rs;
int i=stat.executeUpdate("insert into questions values('"+qid+"','"+ccode+"','"+question+"','"+ans1+"','"+ans2+"','"+ans3+"','"+ans4+"','"+cans+"')");
out.println("Question Added.......");
 %>
 <body bgcolor='#ADD8E6'>
 <br>
 <br>
 <a href="Modify.jsp">Go Back</a><br>
 <br>
 <a href="index.html">Go to the Home Page</a>
 </body>