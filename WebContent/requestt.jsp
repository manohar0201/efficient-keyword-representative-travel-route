<%-- 
    Document   : requestsend
    Created on : Dec 22, 2017, 4:37:57 PM
    Author     : welcome
--%>


<%@page import="DB.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
Connection con = null;
    Statement st = null;
    Connection con5 = null;
    Statement st5 = null;
     Statement st1 = null;
    ResultSet rs = null;
     ResultSet rs1 = null;

                 String requestedid = request.getParameter("rid");
                 String requesteduseer = request.getParameter("reqnmae");
                   
            String  useridd=(String)session.getAttribute("uidd");
            String  usernamee=(String)session.getAttribute("uname");
            
            String status="waiitng";
           
            try {
                con5 = Dbconnection.getConnection();
                st5 = con5.createStatement();
                int r=2;
                if (r>=0) {
            int i = st5.executeUpdate("insert into frrequest(usrid,username,requestid,requestname,restatus) values('"+useridd+"','"+usernamee+"','"+requestedid+"','"+requesteduseer+"','"+status+"')"); 
                  response.sendRedirect("findfriend.jsp?uumsgg=failed");
            
                }           
            
         else {
            response.sendRedirect("findfriend.jsp?uumsgg=failed");
        }
            } catch (Exception ex) {
                ex.printStackTrace();
            } 
%>
