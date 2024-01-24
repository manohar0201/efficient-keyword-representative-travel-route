<%-- 
    Document   : Userrespondd
    Created on : Nov 22, 2017, 12:20:33 PM
    Author     : welcome
--%>

<%@page import="DB.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.Connection"%>
<%


          Connection con1 = Dbconnection.getConnection();
            Statement st2 = con1.createStatement();
             Statement st3 = con1.createStatement();
             String id = request.getQueryString();
             String status="Accepted";
            ResultSet rs2 = st2.executeQuery("select * from frrequest where id='" + id + "'");
            if(rs2.next())
                               {
            
            int up = st3.executeUpdate("update frrequest set restatus ='" + status+ "' where id = '" + id + "'");
            
            if (up != 0) {
               response.sendRedirect("viewfriendrequest.jsp?umsgg=userregister");
                System.out.println("count misbehaviour ..!");
            }
                       }
%>
