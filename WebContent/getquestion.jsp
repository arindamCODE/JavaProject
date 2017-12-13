<%@page import="java.util.ArrayList"%>
<%@page import="exam.Question"%>

<%!	ArrayList<Question> list;

	int count=0;
	int temp=1;
%>
<%
list=(ArrayList)session.getAttribute("qlist");
int size=list.size();

//out.println(size);


	Question q=list.get(count);
	int qid=q.getQid();
	session.setAttribute("qid",qid);
	String question=q.getQuestion();
	String opt1=q.getAns1();
	String opt2=q.getAns2();
	String opt3=q.getAns3();
	String opt4=q.getAns4();
	String cans=q.getCans();
	
	if(count==size-1)
	{
		count=-1;
	}
	//out.println("count is =>"+count+"<br>");
	count++;
	//out.println("count is =>"+count);
%>
<body bgcolor='#ADD8E6'>
    <form action="getAns.jsp" method="post">
<html>
    <head>
        <title>Question Paper</title>
    </head>
    Q.no. <%=qid %>. <%=question%>
           
        <br></br>
             <input type="radio" name="opt" value="a">
            <%=opt1 %>
            <br>
            <input type="radio" name="opt" value="b"><%=opt2 %>
            <br>
            <input type="radio" name="opt" value="c"><%=opt3 %>
            <br>
            <input type="radio" name="opt" value="d"><%=opt4 %>
             <input type="hidden" name="ans" value="<%=cans %>"><br>
            <br> 	
 			<input type="submit" value="submit">
         
                 <br>
        </form>
     </body>
</html>
<%

//out.println("temp is =>"+temp);
//out.println("count is =>"+count);
	if(temp==size+1)
	{
		temp=1;
		response.sendRedirect("backup.jsp");
	}
	temp++;

%>