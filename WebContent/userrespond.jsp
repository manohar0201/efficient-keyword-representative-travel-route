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
             String id = session.getAttribute("rrid").toString();
             String restatus="respond";
            String price=request.getParameter("price");
             String hotel=request.getParameter("hotel");
              String timeschu=request.getParameter("timeschu");
            ResultSet rs2 = st2.executeQuery("select * from reloca where id='" + id + "'");
            if(rs2.next())
                               {
            
            int up = st3.executeUpdate("update reloca set price ='" + price + "',hotelname ='" + hotel + "',timeschedul ='" + timeschu + "',requestt ='" + restatus + "' where id = '" + id + "'");
            
            if (up != 0) {
               response.sendRedirect("userrequestt.jsp?umsgg=userregister");
                System.out.println("count misbehaviour ..!");
            }
                       }
%>
