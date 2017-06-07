<%@page import="java.sql.*"%>
<% 
String u=request.getParameter("user");
String p=request.getParameter("pass");
String m=request.getParameter("mob");
String e=request.getParameter("em");
out.print(u);
Class.forName("oracle.jdbc.OracleDriver");
Connection conn=DriverManager.
getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
String query=
"insert into USER_DATA1 (username,password,mobile,email) values('"+u+"','"+p+"','"+m+"','"+e+"')";        
Statement st=conn.createStatement();
st.executeQuery(query);
out.println("<b>data saved in database</b>");
response.sendRedirect("login.jsp");
%>