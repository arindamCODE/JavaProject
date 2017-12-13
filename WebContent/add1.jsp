

<link rel="stylesheet"  href="style.css">

<form action="retriveQuestion1.jsp" method="post">
<table>
<tr>
<td>
Question id
<td><textarea cols=50  rows=2 name=qid></textarea>
</tr>

<tr>
<td>
Course Code
<td><textarea cols=50  rows=2 name=ccode></textarea>
</tr>

<tr>
<td>
Questions
<td><textarea cols=50  rows=3 name=question></textarea>
</tr>

<tr>
<td>
Answer1
<td><textarea cols=50  rows=2 name=ans1></textarea>
</tr>

<tr>
<td>
Answer2
<td><textarea cols=50  rows=2 name=ans2></textarea>
</tr>


<tr>
<td>
Answer3
<td><textarea cols=50  rows=2 name=ans3></textarea>
</tr>


<tr>
<td>
Answer4
<td><textarea cols=50  rows=2 name=ans4></textarea>
</tr>


<tr>
<td>
Correct Answer
<td>
<input type=radio value=a name=cans> Answer1
<input type=radio value=b name=cans> Answer2
<input type=radio value=c name=cans> Answer3
<input type=radio value=d name=cans> Answer4
</tr>
</table>
<p>
<input type=submit value="Add Question">
<input type=submit value="Clear All">
<p>

  </form>