<%@page import="java.sql.*"%>

<%
String qid=request.getParameter("qid");
String ccode=request.getParameter("ccode");
String question=request.getParameter("question");
String ans1=request.getParameter("ans1");
String ans2=request.getParameter("ans2");
String ans3=request.getParameter("ans3");
String ans4=request.getParameter("ans4");
String cans=request.getParameter("cans");

Connection conn = null;
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/data1","root", "root");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("update questions set ccode='"+ccode+"',question='"+question+"',ans1='"+ans1+"',ans2='"+ans2+"',ans3='"+ans3+"',ans4='"+ans4+"',cans='"+cans+"'where qid='"+qid+"'");
%>
<body bgcolor='#ADD8E6'>
<a href="Modify.jsp">Go Back</a>
</body>