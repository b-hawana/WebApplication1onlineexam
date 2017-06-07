<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%
    String answer;
    answer=request.getParameter("ans");
    String ca=(String) session.getAttribute("correct");
    session.removeAttribute("correct"); 
    String username=(String) session.getAttribute("username");
    Connection con=(Connection) session.getAttribute("conn_ka_object");
    Integer jmarks=(Integer) session.getAttribute("javam");
    Integer jq=(Integer) session.getAttribute("jq");
    ArrayList<String> store=(ArrayList) session.getAttribute("store");
    store.add(answer);store.add(ca);
    Integer index=(Integer) session.getAttribute("index");
    session.removeAttribute("store");
    session.setAttribute("store", store);
    if(ca.matches(answer))
    {
        jmarks++;
        String sql="UPDATE user_data1 SET jmarks='"+jmarks+"',jappear='yes' where username='"+username+"'";
        Statement st=con.createStatement();
        st.executeUpdate(sql);
    }
    session.removeAttribute("javam");
    session.setAttribute("javam", jmarks);
    if(index-1<jq)
    {
        response.sendRedirect("Javaq.jsp");
    }
    else if(index-1==jq)
    {
        response.sendRedirect("result.jsp");
    }
%>