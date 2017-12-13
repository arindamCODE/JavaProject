<%@ page import="java.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data1","root","root");
String query = "select *from questions";
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>
    <form action="newanswerretrive.jsp" method="post">
<html>
    <head>
        <title>Question Paper</title>
    </head>
        <%=rs.getString(1) %>
        <%=rs.getString(3)%>
           
        <br></br>
             <input type="radio" name="opt" value<%=rs.getString(4)%>>
             <%=rs.getString(4)%><br>
             
            <br>
            <input type="radio" name="opt" value<%=rs.getString(5)%>>
             <%=rs.getString(5)%><br>
            <br>
            <input type="radio" name="opt" value<%=rs.getString(6)%>>
             <%=rs.getString(6)%><br>
            <br>
            <input type="radio" name="opt" value<%=rs.getString(7)%>>
            <%=rs.getString(7)%><br>
            <input type="hidden" name="ans" value="<%=rs.getString(8)%>">
             
             
             
                 <br>
        </form>
     </body>
</html>
<% 
} 
%>
<form action="newanswerretrive.jsp" method="post">
 <input type="submit" value="submit">
 <input type="reset" value="reset"><br>
 </form>