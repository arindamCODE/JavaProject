<body bgcolor="#FFB6C1"></body>
<%@page import="java.sql.*"%>

<%
	String name=request.getParameter("usr");
	String pass=request.getParameter("pass");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data1","root","root");
	Statement stat=con.createStatement();
	ResultSet rs=stat.executeQuery("select*from form where name='"+name+"'");
	if(rs.next())
	{
		if(rs.getString(2).equals(pass))
		{
			out.println("welcome"+name);
			session.setAttribute("user",name);
		%>
			<br>
			<br>
			<jsp:forward page="welcome.jsp"/>
			
			<%		
				
		}
		else
		{
			out.println("Invalid Password please signup");
			%>
			<br>
			<br>
			<jsp:forward page="signup.html"/>
			<%
		}
	}
	else
%>
<br>
<br>
<a href="signup.html">Invalid user Please Sign up</a>
