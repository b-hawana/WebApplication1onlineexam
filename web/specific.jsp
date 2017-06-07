<%@page import="java.sql.*"%>
<%
    String choice=request.getParameter("choice");
    Connection conn=(Connection) session.getAttribute("conn_ka_object");
    Statement st=conn.createStatement();
    if(choice.matches("C"))
    {
         String sql="select * from user_data1 where cappear='yes'";
         ResultSet rst=st.executeQuery(sql);
         %>
<table style="width:100%">
  <tr>
    <th>Username</th>
    <th>Mobile Number</th>
    <th>email</th>
<th>cmarks</th>
  </tr>
<%
         while(rst.next())
         {
             String username=rst.getString(1);
             String mobile=rst.getString(3);
             String email=rst.getString(4);
             int cmarks=rst.getInt(6);

%>
<tr>
    <td><%=username %></td>
    <td><%=mobile %></td>
    <td><%=email %></td>
    <td><%=cmarks %></td>
    </tr>
<%           
         }
             %>
</table>
    <%
    }

   else if(choice.matches("Java"))
    {
         String sql="select * from user_data1 where jappear='yes'";
         ResultSet rst=st.executeQuery(sql);
         %>
<table style="width:100%">
  <tr>
    <th>Username</th>
    <th>Mobile Number</th>
    <th>email</th>
<th>cmarks</th>
  </tr>
<%
         while(rst.next())
         {
             String username=rst.getString(1);
             String mobile=rst.getString(3);
             String email=rst.getString(4);
             int cmarks=rst.getInt(6);

%>
<tr>
    <td><%=username %></td>
    <td><%=mobile %></td>
    <td><%=email %></td>
    <td><%=cmarks %></td>
    </tr>
<%           
         }
    }
    %>
</table>
<form action="admin.jsp">
        <input type="submit" value="Go back to Admin Menu">
    </form><br>
