<%@include file="back.html" %>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<String> store=(ArrayList) session.getAttribute("store");
    %>
    <table>
        <tr><th>Your Answer</th>
            <th>Correct Answer</th></tr>
    <%
    String ans="",ca="";
    int i=0;
    for(String xyz:store)
    {
        i++;
        if(i%2==1)
        {
            ans=xyz;
        }
        else
        {
            ca=xyz;
            %>
        <tr><td><%=ans %></td>
        <td><%=ca %></td></tr>
        <%
        }
    }
    %>
    </table>
        <%
    
    
    Integer marks=(Integer)session.getAttribute("cm");
    out.print("<br><br><b>You Secured Marks= "+marks+"</b>");
   %>
