<%@page import="java.sql.*"%>
<%
    //response.sendRedirect("admin.jsp");
    String number=request.getParameter("no");
    Connection conn=(Connection) session.getAttribute("conn_ka_object");
    Statement st=conn.createStatement();
    String sql="select * from user_data1 where mobile='"+number+"'";
    ResultSet rs=st.executeQuery(sql);
    if(rs.next())
    {
        String username=rs.getString(1);
        String email=rs.getString(4);
        int jmarks=rs.getInt(5);
        int cmarks=rs.getInt(6);
        String jappear=rs.getString(7);
        String cappear=rs.getString(8);
        %>
        <b><i>
            Username=<%=username %><br>
            Mobile Number=<%=number %><br>
            Email Address=<%=email %><br>
            Appeared in java test=<%=jappear %><br>
            marks Scored in java=<%=jmarks %><br>
            Appeared in c test=<%=cappear %><br>
            marks Scored in C tests=<%=cmarks %><br> 
            </i></b>
        <%
    }
    else
    {
        out.print("<b>INVALID MOBILE NUMBER</b><a href=admin.jsp>GO BACK</a>");
    }
    %>
    <form action="admin.jsp">
        <input type="submit" value="Go back to Admin Menu">
    </form><br>
