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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from questions where qid="+qid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body bgcolor='#ADD8E6'>
<h1>Update data from database in jsp</h1>
<form method="post" action="process.jsp">
<input type="hidden" name="qid" value="<%=resultSet.getString("qid") %>">
<input type="text" name="qid" value="<%=resultSet.getString("qid") %>">
<br>
ccode:<br>
<input type="text" name="ccode" value="<%=resultSet.getString("ccode") %>">
<br>
Question:<br>
<input type="text" name="question" value="<%=resultSet.getString("question") %>">
<br>
option 1:<br>
<input type="text" name="ans1" value="<%=resultSet.getString("ans1") %>">
<br>
option 2:<br>
<input type="text" name="ans2" value="<%=resultSet.getString("ans2") %>">
<br><br>
option 3:<br>
<input type="text" name="ans3" value="<%=resultSet.getString("ans3") %>">
<br><br>
option 4:<br>
<input type="text" name="ans4" value="<%=resultSet.getString("ans4") %>">
<br><br>
Correct Answer:<br>
<input type="text" name="cans" value="<%=resultSet.getString("cans") %>">
<br><br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>