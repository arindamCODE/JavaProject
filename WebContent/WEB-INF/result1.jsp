<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>


<%
int count=0;
String name=(String)session.getAttribute("user");
int qid=(Integer)session.getAttribute("qid");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data1","root","root");
Statement stat=con.createStatement();
ResultSet rs=stat.executeQuery("select *from report1");
while(rs.next())
{
	if((rs.getString("name").equals(name))&&(rs.getString("uans").equals(rs.getString("cans"))))
	{
		count++;
	}
}
out.println("Correct Answer = "+count+"<br> <br>");
out.println(name+" Score is = "+count+"<br> <br>");
if(count>=5)
{
	out.println(name+" Grade is = A"+"<br> <br>");
}
else if(count>=2 && count<5)
{
	out.println(name+" Grade is = B"+"<br> <br>");
}
else
	out.println(name+" Grade is = C"+"<br> <br>");

 %>
 <br>
 <br>
 <a href="login.html">Login</a><br>
 <br>
 <a href="index.html">Home</a>