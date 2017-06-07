<style>
header, footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}
</style>
<header>ONLINE EXAMINATION SYSTEM</header>
<br><br>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@include file="back.html" %>
<% 
    Integer cm=new Integer(0);
    session.setAttribute("cm", cm);
    Connection conn= (Connection) session.getAttribute("conn_ka_object");
    String sql="select * from admin_data where username='admin'";
    Statement st=conn.createStatement();
    ArrayList<String> store=new ArrayList<String>();
    session.setAttribute("store",store);
    ResultSet rs=st.executeQuery(sql);
    if(rs.next())
    {
        int x=rs.getInt("cappears");
        x++;
        sql="update admin_data set cappears='"+x+"' where username='admin'";
        st.executeUpdate(sql);
    }
    %>
    <b>INSTRUCTIONS</b><br>
    <i>1:Their are 15 MCQs.<br>2:Each has 1 correct answer.<br>3:There is no negative marking.<br>4:Attempting all questions is compulsory </i>
    <br><br><br><form action="Cq.jsp">
        <input type="submit" value="START TEST">
        </form>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><footer>Developed by: Dhruv Pandey & Amit Kumar Singh</footer>