<%@page import="java.sql.*"%>
   <%@page import="java.util.ArrayList"%>
<%

 

    String answer="";
    if(request.getParameter("ans")!=null)
    {
        answer="no_attempt";
    }
    else
    {
        answer=request.getParameter("ans");
    }
    String ca=(String) session.getAttribute("correct");
    session.removeAttribute("correct"); 
    String username=(String) session.getAttribute("username");
    Connection con=(Connection) session.getAttribute("conn_ka_object");
    Integer cmarks=(Integer) session.getAttribute("cm");
    Integer jq=(Integer) session.getAttribute("cq");
    ArrayList<String> store=(ArrayList) session.getAttribute("store");
    store.add(answer);store.add(ca);
    Integer index=(Integer) session.getAttribute("index");
    session.removeAttribute("store");
    session.setAttribute("store", store);
    if(ca.matches(answer))
    {
        cmarks++;
        String sql="UPDATE user_data1 SET cmarks='"+cmarks+"',cappear='yes' where username='"+username+"'";
        Statement st=con.createStatement();
        st.executeUpdate(sql);
    }
    session.removeAttribute("cm");
    session.setAttribute("cm", cmarks);
    if(index-1<jq)
    {
        response.sendRedirect("Cq.jsp");
    }
    else if(index-1==jq)
    {
        response.sendRedirect("resultc.jsp");
    }
%>
