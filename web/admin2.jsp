<% 
    String choice=request.getParameter("choice");
    if(choice.matches("Username"))
    {

        %>
<form action="searchuser.jsp" method="post">
    
  Please Enter the username:
  <input type="text" name="us"><br>  
  <input type="submit" value="Submit">   
</form>
        <%
    }
    else if(choice.matches("Mobile"))
    {
        %>
<form action="searchnumber.jsp" method="post">
  Please Enter the Mobile Number:
  <input type="number" name="no"><br>  
  <input type="submit" value="Submit">   
</form>
        <%
    }
    else if(choice.matches("Specific"))
    {
        %>
<form action="specific.jsp" method="post">
  Select the Test Type:
  <br><input type="radio" name="choice" value="C">View record given C test<br>
  <input type="radio" name="choice" value="Java">View record Given Java Test<br>
  <input type="submit" value="Submit">
</form>
        <%
    }
    else if(choice.matches("Add"))
    {
                %>
<form action="addq.jsp" method="post">
    <select name="type">
    <option value="c">Add C question</option>
    <option value="java">Add java Question</option>
  </select> 
  Please Enter the Question:
  <input type="text" name="ques"><br> 
  Please Enter Ans1:
  <input type="text" name="ans1"><br>
  Please Enter Ans2:
  <input type="text" name="ans2"><br>
  Please Enter Ans3:
  <input type="text" name="ans3"><br>
  Please Enter Ans4:
  <input type="text" name="ans4"><br>
  Please Enter Correct Answer:
  <input type="text" name="ca"><br>
  <input type="submit" value="Submit">   
</form>
        <%
    }
    else if(choice.matches("Update"))
    {
        %>
      <form action="updateq.jsp" method="post">
  <input type="radio" name="choice" value="C">UPDATE C Question<br>
  <input type="radio" name="choice" value="Java">UPDATE Java Question<br>
  Please Enter the Question Index:
  <input type="number" name="no"><br>  
  <input type="submit" value="Submit">
      </form>>
      <%
    }
    else if(choice.matches("Deleteq"))
    {
        %>
      <form action="Deleteq.jsp" method="post">
  <input type="radio" name="choice" value="C">Delete C Question<br>
  <input type="radio" name="choice" value="Java">Delete java Question<br>
  Please Enter the Question Index:
  <input type="number" name="no"><br>  
  <input type="submit" value="Submit">
      </form>>
        <%
    }
    else if(choice.matches("Deleteu"))
    {
      %>
      <form action="deleteuser.jsp" method="post">
  Please Enter the username:
  <input type="text" name="us"><br>  
  <input type="submit" value="Submit">
      </form>>
        <%
    }
    else
    {
        out.print("<b>SOMETHING SEEMS FISHY</b>");
        out.print("<br><i>Redirecting.............</i>");
        Thread.sleep(2000);
        response.sendRedirect("admin.jsp");
    }
    
    %>
