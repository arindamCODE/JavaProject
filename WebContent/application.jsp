
<%@ page import="java.sql.*" %>
<form action="edit.jsp" method="post">
<br><br>
<table border="1">
<tr><th>ccode</th><th>question</th><th>ans1</th><th>ans2</th><th>ans3</th><th>ans4</th><th>cans</th></tr>
<%
String qid=request.getParameter("qid");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data1","root","root");
String query = "select * from questions";
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(query);
%>
<%
while(rs.next()){
%>
<tr>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)%></td>
<td><input type="submit" value="edit" name="edit"
onclick="getElementById('action').value ='<%=qid%>'"></td>
</tr>
<%
}
%>
</table>
</form>