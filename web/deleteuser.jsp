<%@page import="java.sql.*"%>
<%
    //response.sendRedirect("admin.jsp");
    String username=request.getParameter("us");
    Connection conn=(Connection) session.getAttribute("conn_ka_object");
    Statement st=conn.createStatement();
    String sql="delete from user_data1 where username='"+username+"'";
    st.executeUpdate(sql);
    out.println("<b>SUCCESSFULLY DELETED <b>");
    %>
    <form action="admin.jsp">
        <input type="submit" value="Go back to Admin Menu">
    </form><br>