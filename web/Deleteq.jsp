<%@include file="back.html" %>
<%@page import="java.sql.*"%>
<%
    String choice=request.getParameter("choice");
    String index=request.getParameter("no");
    int i=Integer.parseInt(index);
    Connection conn=(Connection) session.getAttribute("conn_ka_object");
    Statement st=conn.createStatement();
    String sql="select * from admin_data where username='admin'";
    int cq=0,jq=0;
    ResultSet rst=st.executeQuery(sql);
    if(rst.next())
    {
      cq=rst.getInt(6);
      jq=rst.getInt(5);
    }
    else
    {
      response.sendRedirect("index.html");
    }
    if(choice.matches("Java"))
    {
        sql="delete from java_questions where no='"+i+"'";
        st.executeUpdate(sql);
        int temp;
        for(temp=i+1;temp<=jq;temp++)
        {
            sql="select * from java_questions where no='"+temp+"'";
            ResultSet rs=st.executeQuery(sql);
            if(rs.next())
            {
                String q=rs.getString(1);
                int x=temp-1;
                sql="update java_questions set no='"+x+"' where QUESTIONS='"+q+"'";
                st.executeUpdate(sql);
            }
        }
        jq--;
        sql="update admin_data set jq='"+jq+"' where username='admin'";
        st.executeUpdate(sql);
    }
    else if(choice.matches("C"))
    {
        sql="delete from c_questions where no='"+i+"'";
        st.executeUpdate(sql);
        int temp;
        for(temp=i+1;temp<=cq;temp++)
        {
            sql="select * from c_questions where no='"+temp+"'";
            ResultSet rs=st.executeQuery(sql);
            if(rs.next())
            {
                String q=rs.getString(1);
                int x=temp-1;
                sql="update c_questions set no='"+x+"' where QUESTIONS='"+q+"'";
                st.executeUpdate(sql);
            }
        }
        cq--;
        sql="update admin_data set cq='"+cq+"' where username='admin'"; 
        st.executeUpdate(sql);
    }
    out.println("<b>SUCCESSFULLY DELETED <b>");
    %>
    <form action="admin.jsp">
        <input type="submit" value="Go back to Admin Menu">
    </form><br>