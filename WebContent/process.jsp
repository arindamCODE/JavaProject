<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/data1";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String qid=request.getParameter("qid");
String ccode=request.getParameter("ccode");
String question=request.getParameter("question");
String ans1=request.getParameter("ans1");
String ans2=request.getParameter("ans2");
String ans3=request.getParameter("ans3");
String ans4=request.getParameter("ans4");
String cans=request.getParameter("cans");
if(qid != null)
{
Connection con = null;
PreparedStatement ps = null;
int ID = Integer.parseInt(qid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update questions set qid=?,ccode=?,question=?,ans1=?,ans2=?,ans3=?,ans4=?,cans=? where qid="+qid;
ps = con.prepareStatement(sql);
ps.setString(1,qid);
ps.setString(2, ccode);
ps.setString(3, question);
ps.setString(4, ans1);
ps.setString(5, ans2);
ps.setString(6, ans3);
ps.setString(7, ans4);
ps.setString(8, cans);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
<body bgcolor='#ADD8E6'>
<br>
 <br>
 <a href="Modify.jsp">Go Back</a>
 </body>