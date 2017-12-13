<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>

<html>
<body background="result.jpg">
<h1>Show the Student Report Card</h1>
<table border="1">
<tr>
<td>Name</td>
<td>Score</td>
<td>Correct Answer</td>
<td>Grade</td>
</tr>

<%
String name=(String)session.getAttribute("user");
int qid=(Integer)session.getAttribute("qid");
int score=(Integer)session.getAttribute("score");
String correctanswer=request.getParameter("correctanswer");
String grad=request.getParameter("grad");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data1","root","root");
Statement stat=con.createStatement();
ResultSet rs=stat.executeQuery("select *from result");
while(rs.next()){
	if(name.equals(rs.getString("name")))
	{
%>
<tr>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("score") %></td>
<td><%=rs.getString("correctanswer") %></td>
<td><%=rs.getString("grad") %></td>
</tr>
<%
}
}
%>
</table>
</body>
</html>
<a href="login.html">Login</a><br>
 <br>
 <a href="index.html">Home</a>