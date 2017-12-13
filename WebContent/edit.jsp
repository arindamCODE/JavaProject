<%@page import="java.sql.*"%>
<body bgcolor='#ADD8E6'>
<form action="update.jsp" method="post">
<%
String qid=request.getParameter("qid");
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/data1", "root", "root");
String query = "select * from questions where qid='"+qid+"'";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
%>
<% 
while(rs.next()){
%>
<tr>
<td><input type="text" name="ccode" value="<%=rs.getString("ccode")%>"></td>
<td><input type="text" name="question" value="<%=rs.getString("question")%>"></td>
<td><input type="text" name="ans1" value="<%=rs.getString("ans1")%>"></td>
<td><input type="text" name="ans2" value="<%=rs.getInt("ans2")%>"></td>
<td><input type="text" name="ans3" value="<%=rs.getString("ans3")%>"></td>
<td><input type="text" name="ans4" value="<%=rs.getInt("ans4")%>"></td>
<td><input type="text" name="cans" value="<%=rs.getString("cans")%>"></td>
</tr>
<tr>
<td><input type="submit" name="Submit" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
</tr>
<%
}
%>
</table>
</form>
</body>