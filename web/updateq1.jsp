<%@page import="java.sql.*"%>
<%
    String index=request.getParameter("index");
    String choice=request.getParameter("choice");
    String ques=request.getParameter("ques");
    String ans1=request.getParameter("ans1");
    String ans2=request.getParameter("ans2");
    String ans3=request.getParameter("ans3");
    String ans4=request.getParameter("ans4");
    String ca=request.getParameter("ca");
    int x=Integer.parseInt(index);
    Connection conn=(Connection) session.getAttribute("conn_ka_object");
    Statement st=conn.createStatement();
    String sql="";
    if(choice.matches("C"))
    {
        sql="update c_questions set QUES='"+ques+"',ANS1='"+ans1+"',ANS2='"+ans2+"',ANS3='"+ans3+"',AN4='"+ans4+"',CA='"+ca+"' where NO='"+x+"'";
    }
    if(choice.matches("Java"))
    {
        sql="update java_questions set QUESTIONS='"+ques+"',A1='"+ans1+"',A2='"+ans2+"',A3='"+ans3+"',A4='"+ans4+"',CA='"+ca+"' where NO='"+x+"'";
    }
    st.executeUpdate(sql);
    %>
<form action="admin.jsp">
        <input type="submit" value="Go back to Admin Menu">
    </form>