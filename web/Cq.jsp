<%@include file="back.html" %>
<%@page import="java.sql.*"%>
<%
   Integer index=(Integer) session.getAttribute("index");
    Connection conn=(Connection) session.getAttribute("conn_ka_object");
    String sql="select * from C_QUESTIONS where no='"+index+"'";
    Statement st=conn.createStatement();
    String sql2="select * from admin_data where username='admin'";
    ResultSet rst=st.executeQuery(sql2);
    Integer cq=0;
    if(rst.next())
    {
        cq=rst.getInt(6);
    }
    String test="";
    session.setAttribute("cq",cq);
    if(index<cq)
    {
        test="Next";
    }
    else if(index==cq)
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
    <b>Q<%=index-1%>:</b>
    <i><%=ques%></i>
    <form action="evalc.jsp?index=<%=index-1 %>" method="post">
  <input type="radio" name="ans" value="<%=ans1%>"><%=ans1%> <br>
  <input type="radio" name="ans" value="<%=ans2%>" ><%=ans2%><br>
  <input type="radio" name="ans" value="<%=ans3%>"><%=ans3%><br>
  <input type="radio" name="ans" value="<%=ans4%>"><%=ans4%><br>
  <input type="submit" value="<%=test %>">
    </form>
  <%
    }
    %>
    
    
    
    
    
    