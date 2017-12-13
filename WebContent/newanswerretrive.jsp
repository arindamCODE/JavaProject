<%@page import="java.sql.*"%>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data1","root","root");
String query = "select *from questions";
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(query);
String s2,s3;
int count=0;
while(rs.next())
{
s2 = request.getParameter("opt");
//System.out.println(s2);
s3 = rs.getString("cans");
if(s2.equals(s3))
{
	count=count+1;
}
}
out.println("Your Score is ="+count);
%>
 <br>
 <br>
 <a href="login.html">Login</a><br>
 <br>
 <a href="index.html">Home</a>