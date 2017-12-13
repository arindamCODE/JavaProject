<
<%
	String name=request.getParameter("admin");
	String pass=request.getParameter("pass");
	
	
	session.setAttribute("username",name);
	
	if(name.equals("moon") && pass.equals("kolija"))
	{
		%>
		Modify Question Paper<br>
		<br>
		<jsp:forward page="Modify.jsp"/><br>
		<br>
		<%		
	}
	else
	{
		%>
		<jsp:forward page="admin.html"/>
		<%
	}
	
%>