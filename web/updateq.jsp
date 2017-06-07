<%@page import="java.sql.*"%>
<%
    String choice=request.getParameter("choice");
    String index=request.getParameter("no");
    int in=Integer.parseInt(index);
    Connection conn=(Connection) session.getAttribute("conn_ka_object");
    Statement st=conn.createStatement();
    String sql="";
    String ques="",ans1="",ans2="",ans3="",ans4="",ca="";
    if(choice.matches("C"))
    {
        sql="select * from c_questions where no='"+in+"'";
        ResultSet rs=st.executeQuery(sql);
        if(rs.next())
        {
        ques=rs.getString(1);
        ans1=rs.getString(2);
        ans2=rs.getString(3);
        ans3=rs.getString(4);
        ans4=rs.getString(5);
        ca=rs.getString(6);   
        }
    }
    else if(choice.matches("Java"))
    {
        sql="select * from java_questions where no='"+in+"'";
        ResultSet rs=st.executeQuery(sql);
        if(rs.next())
        {
        ques=rs.getString(1);
        ans1=rs.getString(2);
        ans2=rs.getString(3);
        ans3=rs.getString(4);
        ans4=rs.getString(5);
        ca=rs.getString(6);
        }
        
    }
    String str="updateq1.jsp?index="+index+"&choice="+choice;
    %>
    <b>Q: <%=ques %></b><br><i>Option1:<%=ans1 %></i><br><i>Option2:<%=ans2 %></i><br><i>Option3:<%=ans3 %></i><br><i>Option4:<%=ans4 %></i>
    <br><i>Correct Answer:<%=ca %></i>
    <br><br><b><i>
        Modify The Question.<br><br>
        </i>></b><br>
        <form action="<%=str %>" method="post">
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
  <input type="submit" value="UPDATE">   
</form>