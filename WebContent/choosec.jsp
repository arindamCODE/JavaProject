<%@page import="java.sql.*" %>
<% 
int flag1=0;
String name1=(String)session.getAttribute("user");
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/data1","root","root");
Statement stat1=con1.createStatement();
ResultSet rs1=stat1.executeQuery("select *from report1");
while(rs1.next())
{
if(rs1.getString("name").equals(name1))
{
	flag1=1;
}
}
%>
<% 
if(flag1==1)
{
	out.println("====Student already appeared for the exam===");
}
else
{
%>
<body bgcolor='#ADD8E6'>
<a href="cquestion.jsp">Question Paper</a> <br>
 <br>
 </body>
<%
}
%>
<body bgcolor='#ADD8E6'>
<br>
<br>
<a href="showreport1.jsp">Get your Report</a>
<br>
<br>
<a href="welcome.jsp">Go Back</a><br>
 <br>
 </body>


