<%@page import="java.sql.*" %>
<% 
int flag=0;
String name=(String)session.getAttribute("user");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data1","root","root");
Statement stat=con.createStatement();
ResultSet rs=stat.executeQuery("select *from report");
while(rs.next())
{
if(rs.getString("name").equals(name))
{
	flag=1;
}
}
%>
<% 
if(flag==1)
{
	out.println("====Student already appeared for the exam===");
}
else
{
%>
<body bgcolor='#ADD8E6'>
<a href="javaquestion.jsp">Question Paper</a> <br>
<br>
</body>
<%
}
%>
<body bgcolor='#ADD8E6'>
<br>
<br>
<a href="showreport.jsp">Get your Report</a>
<br>
<br>
<a href="welcome.jsp">Go Back</a><br>
 <br>
 </body>
