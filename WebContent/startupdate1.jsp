<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String qid = request.getParameter("qid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "data1";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<body bgcolor='#ADD8E6'>
<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>qid</td>
<td>ccode</td>
<td>question</td>
<td>ans1</td>
<td>ans2</td>
<td>ans3</td>
<td>ans4</td>
<td>cans</td>
<td>update</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from questions1";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("qid") %></td>
<td><%=resultSet.getString("ccode") %></td>
<td><%=resultSet.getString("question") %></td>
<td><%=resultSet.getString("ans1") %></td>
<td><%=resultSet.getString("ans2") %></td>
<td><%=resultSet.getString("ans3") %></td>
<td><%=resultSet.getString("ans4") %></td>
<td><%=resultSet.getString("cans") %></td>
<td><a href="update2.jsp?qid=<%=resultSet.getString("qid")%>">update</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>