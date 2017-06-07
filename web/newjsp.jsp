<%@page import="java.sql.*"%>
<%
    String driver="oracle.jdbc.OracleDriver",
        pass="system",user="system",URL="jdbc:oracle:thin:@localhost:1521:xe";
    Class.forName(driver);
    Connection conn=DriverManager.getConnection(URL, user, pass);
    session.setAttribute("conn_ka_object", conn);
    String name=request.getParameter("type");
    String uname=request.getParameter("us");
    String pass1=request.getParameter("ps");
    Integer index=new Integer(1);
    session.setAttribute("username", uname);
    session.setAttribute("index",index);
    String sql;
    if(name.matches("admin"))
    {
        sql="select * from admin_data where username='"+uname+"' and password='"+pass1+"'";
        Statement st=conn.createStatement();
    ResultSet rs=st.executeQuery(sql);
    if(rs.next())
    {
        response.sendRedirect("admin.jsp");
    }
    else
    {
        response.sendRedirect("index.html");
    }
    
    }
    else if(name.matches("user"))
    {
        
        sql="select * from user_data1 where username='"+uname+"' and password='"+pass1+"'";
        Statement st=conn.createStatement();
    ResultSet rs=st.executeQuery(sql);
    if(rs.next())
    {
        response.sendRedirect("user.jsp");
    }
    else
    {
        response.sendRedirect("index.html");
    }
    
    }      
       
        
    
    %>

