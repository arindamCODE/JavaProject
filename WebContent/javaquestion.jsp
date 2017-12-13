<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.*,exam.Question" %>
<%
ArrayList<Question> list=new ArrayList<>();
Question q;
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data1","root","root");
String query = "select *from questions order by qid";
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
	q=new Question();
	q.setQid(rs.getInt(1));
	q.setQuestion(rs.getString(3));
	q.setAns1(rs.getString(4));
	q.setAns2(rs.getString(5));
	q.setAns3(rs.getString(6));
	q.setAns4(rs.getString(7));
	q.setCans(rs.getString(8));
	list.add(q);
	
	
}
session.setAttribute("qlist",list);
%>

<jsp:forward page="getquestion.jsp"></jsp:forward>