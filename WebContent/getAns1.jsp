<%@page import="java.sql.*"%>
<%

//uans==> user answer
// cans==> correct answer 

String uans=request.getParameter("opt");
String cans=request.getParameter("ans");
String name=(String)session.getAttribute("user");
int qid=(Integer)session.getAttribute("qid");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data1","root","root");
Statement stat=con.createStatement();
ResultSet rs;
int i=stat.executeUpdate("insert into report1 values('"+name+"','"+qid+"','"+cans+"','"+uans+"')");
out.println("answer successfully added to the report database");
response.sendRedirect("getcquestion.jsp");

%>