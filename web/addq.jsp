<%@page import="java.sql.*"%>
<%
    String type=request.getParameter("type");
    String ques=request.getParameter("ques");
    String ans1=request.getParameter("ans1");
    String ans2=request.getParameter("ans3");
    String ans3=request.getParameter("ans3");
    String ans4=request.getParameter("ans4");
    String ca=request.getParameter("ca");
    Connection conn=(Connection) session.getAttribute("conn_ka_object");
    Statement st=conn.createStatement();
    Statement st1=conn.createStatement();
    String sql="";
    sql="select * from admin_data where username='admin'";
    int cq=0,jq=0;
    ResultSet rst=st.executeQuery(sql);
    if(rst.next())
    {
      cq=rst.getInt(6);
      jq=rst.getInt(5);
    }
    if(type.matches("c"))
    {
        cq++;
        sql="insert into c_questions(QUES,ANS1,ANS2,ANS3,AN4,CA,NO) values('"+ques+"','"+ans1+"','"+ans2+"','"+ans3+"','"+ans4+"','"+ca+"','"+cq+"')";
        st.executeQuery(sql);
        sql="update admin_data set cq='"+cq+"' where username='admin'";
        st1.executeUpdate(sql);
    }
    else if(type.matches("java"))
    {
        jq++;
        sql="insert into java_questions(QUESTIONS,A1,A2,A3,A4,CA,NO) values('"+ques+"','"+ans1+"','"+ans2+"','"+ans3+"','"+ans4+"','"+ca+"','"+jq+"')";
        st.executeQuery(sql);  
        sql="update admin_data set jq='"+jq+"' where username='admin'";
        st1.executeUpdate(sql);
    }
    
    %>
        <form action="admin.jsp">
        <input type="submit" value="Go back to Admin Menu">
    </form><br>