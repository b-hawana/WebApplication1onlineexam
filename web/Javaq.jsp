<style>
header, footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}
input.hidden {
    visibility: hidden
}
</style>

<header>ONLINE EXAMINATION SYSTEM</header>
<%@page import="java.sql.*"%>
<%@include file="back.html" %>
<%
   Integer index=(Integer) session.getAttribute("index");
   int x=index;
    
    Connection conn=(Connection) session.getAttribute("conn_ka_object");
    String sql="select * from JAVA_QUESTIONS where no='"+index+"'";
    String sql2="select * from admin_data where username='admin'";
    
    Statement st=conn.createStatement();
    ResultSet rst=st.executeQuery(sql2);
    Integer jq=0;
    if(rst.next())
    {
        jq=rst.getInt(5);
    }
    String test="";
    session.setAttribute("jq",jq);
    if(index<jq)
    {
        test="Next";
    }
    else if(index==jq)
    {
        test="Finish";
    }
        
    ResultSet rs=st.executeQuery(sql);
   if(rs.next())
    {
        index++;
        session.removeAttribute("index");
        session.setAttribute("index", index);
        String ques=rs.getString(1);
        String ans1=rs.getString(2);
        String ans2=rs.getString(3);
        String ans3=rs.getString(4);
        String ans4=rs.getString(5);
        String ca=rs.getString(6);
        session.setAttribute("correct", ca);
    %>
<br><br>    
<b>Q<%=index-1%>:</b>
    <i><%=ques%></i>
    <form action="eval.jsp?index=<%=index-1 %>" method="post">
  <input class="hidden" type="radio" name="ans" value="no_attemp" checked>
  <br><b>Options:</b><br>
  <input type="radio" name="ans" value="<%=ans1%>" ><%=ans1%> <br>
  <input type="radio" name="ans" value="<%=ans2%>" ><%=ans2%><br>
  <input type="radio" name="ans" value="<%=ans3%>"><%=ans3%><br>
  <input type="radio" name="ans" value="<%=ans4%>"><%=ans4%><br><br>
  <input type="submit" value="<%=test %>">
    </form>
  <%
    }
    %>
    <br><br><br><br><br><br><br><br><br><br><br><br><br>
    <footer>Developed by: Bhawana Singh</footer>>
    
    
    
    
    